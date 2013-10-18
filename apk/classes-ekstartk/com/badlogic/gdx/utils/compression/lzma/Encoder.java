package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.utils.compression.ICodeProgress;
import com.badlogic.gdx.utils.compression.lz.BinTree;
import com.badlogic.gdx.utils.compression.rangecoder.BitTreeEncoder;
import java.io.InputStream;
import java.io.OutputStream;

public class Encoder
{
  public static final int EMatchFinderTypeBT2 = 0;
  public static final int EMatchFinderTypeBT4 = 1;
  static byte[] g_FastPos;
  static final int kDefaultDictionaryLogSize = 22;
  static final int kIfinityPrice = 268435455;
  static final int kNumFastBytesDefault = 32;
  public static final int kNumLenSpecSymbols = 16;
  static final int kNumOpts = 4096;
  public static final int kPropSize = 5;
  int _additionalOffset;
  int _alignPriceCount;
  int[] _alignPrices = new int[16];
  int _dictionarySize = 4194304;
  int _dictionarySizePrev = -1;
  int _distTableSize = 44;
  int[] _distancesPrices = new int[512];
  boolean _finished;
  InputStream _inStream;
  short[] _isMatch = new short['À'];
  short[] _isRep = new short[12];
  short[] _isRep0Long = new short['À'];
  short[] _isRepG0 = new short[12];
  short[] _isRepG1 = new short[12];
  short[] _isRepG2 = new short[12];
  Encoder.LenPriceTableEncoder _lenEncoder = new Encoder.LenPriceTableEncoder(this);
  Encoder.LiteralEncoder _literalEncoder = new Encoder.LiteralEncoder(this);
  int _longestMatchLength;
  boolean _longestMatchWasFound;
  int[] _matchDistances = new int[548];
  BinTree _matchFinder = null;
  int _matchFinderType = 1;
  int _matchPriceCount;
  boolean _needReleaseMFStream = false;
  int _numDistancePairs;
  int _numFastBytes = 32;
  int _numFastBytesPrev = -1;
  int _numLiteralContextBits = 3;
  int _numLiteralPosStateBits = 0;
  Encoder.Optimal[] _optimum = new Encoder.Optimal[4096];
  int _optimumCurrentIndex;
  int _optimumEndIndex;
  BitTreeEncoder _posAlignEncoder = new BitTreeEncoder(4);
  short[] _posEncoders = new short[114];
  BitTreeEncoder[] _posSlotEncoder = new BitTreeEncoder[4];
  int[] _posSlotPrices = new int[256];
  int _posStateBits = 2;
  int _posStateMask = 3;
  byte _previousByte;
  com.badlogic.gdx.utils.compression.rangecoder.Encoder _rangeEncoder = new com.badlogic.gdx.utils.compression.rangecoder.Encoder();
  int[] _repDistances = new int[4];
  Encoder.LenPriceTableEncoder _repMatchLenEncoder = new Encoder.LenPriceTableEncoder(this);
  int _state = Base.StateInit();
  boolean _writeEndMark = false;
  int backRes;
  boolean[] finished = new boolean[1];
  long nowPos64;
  long[] processedInSize = new long[1];
  long[] processedOutSize = new long[1];
  byte[] properties = new byte[5];
  int[] repLens = new int[4];
  int[] reps = new int[4];
  int[] tempPrices = new int[''];

  static
  {
    int i = 2;
    g_FastPos = new byte[2048];
    g_FastPos[0] = 0;
    g_FastPos[1] = 1;
    int j = i;
    while (j < 22)
    {
      int k = 1 << -1 + (j >> 1);
      int m = i;
      int n = 0;
      while (n < k)
      {
        g_FastPos[m] = ((byte)j);
        n++;
        m++;
      }
      j++;
      i = m;
    }
  }

  public Encoder()
  {
    int j;
    for (int i = 0; ; i++)
    {
      j = 0;
      if (i >= 4096)
        break;
      this._optimum[i] = new Encoder.Optimal(this);
    }
    while (j < 4)
    {
      this._posSlotEncoder[j] = new BitTreeEncoder(6);
      j++;
    }
  }

  static int GetPosSlot(int paramInt)
  {
    if (paramInt < 2048)
      return g_FastPos[paramInt];
    if (paramInt < 2097152)
      return 20 + g_FastPos[(paramInt >> 10)];
    return 40 + g_FastPos[(paramInt >> 20)];
  }

  static int GetPosSlot2(int paramInt)
  {
    if (paramInt < 131072)
      return 12 + g_FastPos[(paramInt >> 6)];
    if (paramInt < 134217728)
      return 32 + g_FastPos[(paramInt >> 16)];
    return 52 + g_FastPos[(paramInt >> 26)];
  }

  int Backward(int paramInt)
  {
    this._optimumEndIndex = paramInt;
    int i = this._optimum[paramInt].PosPrev;
    int j = this._optimum[paramInt].BackPrev;
    int n;
    for (int k = i; ; k = n)
    {
      if (this._optimum[paramInt].Prev1IsChar)
      {
        this._optimum[k].MakeAsChar();
        this._optimum[k].PosPrev = (k - 1);
        if (this._optimum[paramInt].Prev2)
        {
          this._optimum[(k - 1)].Prev1IsChar = false;
          this._optimum[(k - 1)].PosPrev = this._optimum[paramInt].PosPrev2;
          this._optimum[(k - 1)].BackPrev = this._optimum[paramInt].BackPrev2;
        }
      }
      int m = this._optimum[k].BackPrev;
      n = this._optimum[k].PosPrev;
      this._optimum[k].BackPrev = j;
      this._optimum[k].PosPrev = paramInt;
      if (k <= 0)
      {
        this.backRes = this._optimum[0].BackPrev;
        this._optimumCurrentIndex = this._optimum[0].PosPrev;
        return this._optimumCurrentIndex;
      }
      j = m;
      paramInt = k;
    }
  }

  void BaseInit()
  {
    this._state = Base.StateInit();
    this._previousByte = 0;
    for (int i = 0; i < 4; i++)
      this._repDistances[i] = 0;
  }

  boolean ChangePair(int paramInt1, int paramInt2)
  {
    return (paramInt1 < 33554432) && (paramInt2 >= paramInt1 << 7);
  }

  public void Code(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong1, long paramLong2, ICodeProgress paramICodeProgress)
  {
    this._needReleaseMFStream = false;
    try
    {
      SetStreams(paramInputStream, paramOutputStream, paramLong1, paramLong2);
      while (true)
      {
        CodeOneBlock(this.processedInSize, this.processedOutSize, this.finished);
        int i = this.finished[0];
        if (i != 0)
          return;
        if (paramICodeProgress != null)
          paramICodeProgress.SetProgress(this.processedInSize[0], this.processedOutSize[0]);
      }
    }
    finally
    {
      ReleaseStreams();
    }
  }

  public void CodeOneBlock(long[] paramArrayOfLong1, long[] paramArrayOfLong2, boolean[] paramArrayOfBoolean)
  {
    paramArrayOfLong1[0] = 0L;
    paramArrayOfLong2[0] = 0L;
    paramArrayOfBoolean[0] = true;
    if (this._inStream != null)
    {
      this._matchFinder.SetStream(this._inStream);
      this._matchFinder.Init();
      this._needReleaseMFStream = true;
      this._inStream = null;
    }
    if (this._finished)
      return;
    this._finished = true;
    long l = this.nowPos64;
    if (this.nowPos64 == 0L)
    {
      if (this._matchFinder.GetNumAvailableBytes() == 0)
      {
        Flush((int)this.nowPos64);
        return;
      }
      ReadMatchDistances();
      int i8 = (int)this.nowPos64 & this._posStateMask;
      this._rangeEncoder.Encode(this._isMatch, i8 + (this._state << 4), 0);
      this._state = Base.StateUpdateChar(this._state);
      byte b3 = this._matchFinder.GetIndexByte(0 - this._additionalOffset);
      this._literalEncoder.GetSubCoder((int)this.nowPos64, this._previousByte).Encode(this._rangeEncoder, b3);
      this._previousByte = b3;
      this._additionalOffset = (-1 + this._additionalOffset);
      this.nowPos64 = (1L + this.nowPos64);
    }
    if (this._matchFinder.GetNumAvailableBytes() == 0)
    {
      Flush((int)this.nowPos64);
      return;
    }
    label732: 
    do
    {
      int i = GetOptimum((int)this.nowPos64);
      int j = this.backRes;
      int k = (int)this.nowPos64 & this._posStateMask;
      int m = k + (this._state << 4);
      if ((i == 1) && (j == -1))
      {
        this._rangeEncoder.Encode(this._isMatch, m, 0);
        byte b1 = this._matchFinder.GetIndexByte(0 - this._additionalOffset);
        Encoder.LiteralEncoder.Encoder2 localEncoder2 = this._literalEncoder.GetSubCoder((int)this.nowPos64, this._previousByte);
        if (!Base.StateIsCharState(this._state))
        {
          byte b2 = this._matchFinder.GetIndexByte(-1 + (0 - this._repDistances[0]) - this._additionalOffset);
          localEncoder2.EncodeMatched(this._rangeEncoder, b2, b1);
        }
        while (true)
        {
          this._previousByte = b1;
          this._state = Base.StateUpdateChar(this._state);
          this._additionalOffset -= i;
          this.nowPos64 += i;
          if (this._additionalOffset != 0)
            break;
          if (this._matchPriceCount >= 128)
            FillDistancesPrices();
          if (this._alignPriceCount >= 16)
            FillAlignPrices();
          paramArrayOfLong1[0] = this.nowPos64;
          paramArrayOfLong2[0] = this._rangeEncoder.GetProcessedSizeAdd();
          if (this._matchFinder.GetNumAvailableBytes() != 0)
            break label1030;
          Flush((int)this.nowPos64);
          return;
          localEncoder2.Encode(this._rangeEncoder, b1);
        }
      }
      this._rangeEncoder.Encode(this._isMatch, m, 1);
      if (j < 4)
      {
        this._rangeEncoder.Encode(this._isRep, this._state, 1);
        if (j == 0)
        {
          this._rangeEncoder.Encode(this._isRepG0, this._state, 0);
          if (i == 1)
          {
            this._rangeEncoder.Encode(this._isRep0Long, m, 0);
            if (i != 1)
              break label732;
          }
        }
        int i7;
        for (this._state = Base.StateUpdateShortRep(this._state); ; this._state = Base.StateUpdateRep(this._state))
        {
          i7 = this._repDistances[j];
          if (j == 0)
            break label771;
          while (j > 0)
          {
            this._repDistances[j] = this._repDistances[(j - 1)];
            j--;
          }
          this._rangeEncoder.Encode(this._isRep0Long, m, 1);
          break;
          this._rangeEncoder.Encode(this._isRepG0, this._state, 1);
          if (j == 1)
          {
            this._rangeEncoder.Encode(this._isRepG1, this._state, 0);
            break;
          }
          this._rangeEncoder.Encode(this._isRepG1, this._state, 1);
          this._rangeEncoder.Encode(this._isRepG2, this._state, j - 2);
          break;
          this._repMatchLenEncoder.Encode(this._rangeEncoder, i - 2, k);
        }
        this._repDistances[0] = i7;
      }
      while (true)
      {
        this._previousByte = this._matchFinder.GetIndexByte(i - 1 - this._additionalOffset);
        break;
        this._rangeEncoder.Encode(this._isRep, this._state, 0);
        this._state = Base.StateUpdateMatch(this._state);
        this._lenEncoder.Encode(this._rangeEncoder, i - 2, k);
        int n = j - 4;
        int i1 = GetPosSlot(n);
        int i2 = Base.GetLenToPosState(i);
        this._posSlotEncoder[i2].Encode(this._rangeEncoder, i1);
        int i4;
        int i6;
        if (i1 >= 4)
        {
          i4 = -1 + (i1 >> 1);
          int i5 = (0x2 | i1 & 0x1) << i4;
          i6 = n - i5;
          if (i1 >= 14)
            break label965;
          BitTreeEncoder.ReverseEncode(this._posEncoders, -1 + (i5 - i1), this._rangeEncoder, i4, i6);
        }
        while (true)
        {
          for (int i3 = 3; i3 > 0; i3--)
            this._repDistances[i3] = this._repDistances[(i3 - 1)];
          this._rangeEncoder.EncodeDirectBits(i6 >> 4, i4 - 4);
          this._posAlignEncoder.ReverseEncode(this._rangeEncoder, i6 & 0xF);
          this._alignPriceCount = (1 + this._alignPriceCount);
        }
        this._repDistances[0] = n;
        this._matchPriceCount = (1 + this._matchPriceCount);
      }
    }
    while (this.nowPos64 - l < 4096L);
    label771: label965: this._finished = false;
    label1030: paramArrayOfBoolean[0] = false;
  }

  void Create()
  {
    if (this._matchFinder == null)
    {
      BinTree localBinTree = new BinTree();
      int i = 4;
      if (this._matchFinderType == 0)
        i = 2;
      localBinTree.SetType(i);
      this._matchFinder = localBinTree;
    }
    this._literalEncoder.Create(this._numLiteralPosStateBits, this._numLiteralContextBits);
    if ((this._dictionarySize == this._dictionarySizePrev) && (this._numFastBytesPrev == this._numFastBytes))
      return;
    this._matchFinder.Create(this._dictionarySize, 4096, this._numFastBytes, 274);
    this._dictionarySizePrev = this._dictionarySize;
    this._numFastBytesPrev = this._numFastBytes;
  }

  void FillAlignPrices()
  {
    for (int i = 0; i < 16; i++)
      this._alignPrices[i] = this._posAlignEncoder.ReverseGetPrice(i);
    this._alignPriceCount = 0;
  }

  void FillDistancesPrices()
  {
    for (int i = 4; i < 128; i++)
    {
      int i4 = GetPosSlot(i);
      int i5 = -1 + (i4 >> 1);
      int i6 = (0x2 | i4 & 0x1) << i5;
      this.tempPrices[i] = BitTreeEncoder.ReverseGetPrice(this._posEncoders, -1 + (i6 - i4), i5, i - i6);
    }
    for (int j = 0; j < 4; j++)
    {
      BitTreeEncoder localBitTreeEncoder = this._posSlotEncoder[j];
      int k = j << 6;
      for (int m = 0; m < this._distTableSize; m++)
        this._posSlotPrices[(k + m)] = localBitTreeEncoder.GetPrice(m);
      for (int n = 14; n < this._distTableSize; n++)
      {
        int[] arrayOfInt = this._posSlotPrices;
        int i3 = k + n;
        arrayOfInt[i3] += (-4 + (-1 + (n >> 1)) << 6);
      }
      int i1 = j * 128;
      for (int i2 = 0; i2 < 4; i2++)
        this._distancesPrices[(i1 + i2)] = this._posSlotPrices[(k + i2)];
      while (i2 < 128)
      {
        this._distancesPrices[(i1 + i2)] = (this._posSlotPrices[(k + GetPosSlot(i2))] + this.tempPrices[i2]);
        i2++;
      }
    }
    this._matchPriceCount = 0;
  }

  void Flush(int paramInt)
  {
    ReleaseMFStream();
    WriteEndMarker(paramInt & this._posStateMask);
    this._rangeEncoder.FlushData();
    this._rangeEncoder.FlushStream();
  }

  int GetOptimum(int paramInt)
  {
    if (this._optimumEndIndex != this._optimumCurrentIndex)
    {
      int i81 = this._optimum[this._optimumCurrentIndex].PosPrev - this._optimumCurrentIndex;
      this.backRes = this._optimum[this._optimumCurrentIndex].BackPrev;
      this._optimumCurrentIndex = this._optimum[this._optimumCurrentIndex].PosPrev;
      return i81;
    }
    this._optimumEndIndex = 0;
    this._optimumCurrentIndex = 0;
    int i;
    if (!this._longestMatchWasFound)
      i = ReadMatchDistances();
    int j;
    while (true)
    {
      j = this._numDistancePairs;
      if (1 + this._matchFinder.GetNumAvailableBytes() >= 2)
        break;
      this.backRes = -1;
      return 1;
      i = this._longestMatchLength;
      this._longestMatchWasFound = false;
    }
    int k = 0;
    for (int m = 0; m < 4; m++)
    {
      this.reps[m] = this._repDistances[m];
      this.repLens[m] = this._matchFinder.GetMatchLen(-1, this.reps[m], 273);
      if (this.repLens[m] > this.repLens[k])
        k = m;
    }
    if (this.repLens[k] >= this._numFastBytes)
    {
      this.backRes = k;
      int i80 = this.repLens[k];
      MovePos(i80 - 1);
      return i80;
    }
    if (i >= this._numFastBytes)
    {
      this.backRes = (4 + this._matchDistances[(j - 1)]);
      MovePos(i - 1);
      return i;
    }
    byte b1 = this._matchFinder.GetIndexByte(-1);
    byte b2 = this._matchFinder.GetIndexByte(-1 + (-1 + (0 - this._repDistances[0])));
    if ((i < 2) && (b1 != b2) && (this.repLens[k] < 2))
    {
      this.backRes = -1;
      return 1;
    }
    this._optimum[0].State = this._state;
    int n = paramInt & this._posStateMask;
    Encoder.Optimal localOptimal1 = this._optimum[1];
    int i1 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isMatch[(n + (this._state << 4))]);
    Encoder.LiteralEncoder localLiteralEncoder1 = this._literalEncoder;
    byte b3 = this._previousByte;
    Encoder.LiteralEncoder.Encoder2 localEncoder21 = localLiteralEncoder1.GetSubCoder(paramInt, b3);
    boolean bool1;
    int i2;
    int i3;
    if (!Base.StateIsCharState(this._state))
    {
      bool1 = true;
      localOptimal1.Price = (i1 + localEncoder21.GetPrice(bool1, b2, b1));
      this._optimum[1].MakeAsChar();
      i2 = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isMatch[(n + (this._state << 4))]);
      i3 = i2 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRep[this._state]);
      if (b2 == b1)
      {
        int i79 = i3 + GetRepLen1Price(this._state, n);
        if (i79 < this._optimum[1].Price)
        {
          this._optimum[1].Price = i79;
          this._optimum[1].MakeAsShortRep();
        }
      }
      if (i < this.repLens[k])
        break label579;
    }
    label579: for (int i4 = i; ; i4 = this.repLens[k])
    {
      if (i4 >= 2)
        break label591;
      this.backRes = this._optimum[1].BackPrev;
      return 1;
      bool1 = false;
      break;
    }
    label591: this._optimum[1].PosPrev = 0;
    this._optimum[0].Backs0 = this.reps[0];
    this._optimum[0].Backs1 = this.reps[1];
    this._optimum[0].Backs2 = this.reps[2];
    this._optimum[0].Backs3 = this.reps[3];
    int i6;
    for (int i5 = i4; ; i5 = i6)
    {
      Encoder.Optimal[] arrayOfOptimal1 = this._optimum;
      i6 = i5 - 1;
      arrayOfOptimal1[i5].Price = 268435455;
      if (i6 < 2)
      {
        for (int i7 = 0; i7 < 4; i7++)
        {
          int i76 = this.repLens[i7];
          if (i76 >= 2)
          {
            int i77 = i3 + GetPureRepPrice(i7, this._state, n);
            do
            {
              int i78 = i77 + this._repMatchLenEncoder.GetPrice(i76 - 2, n);
              Encoder.Optimal localOptimal10 = this._optimum[i76];
              if (i78 < localOptimal10.Price)
              {
                localOptimal10.Price = i78;
                localOptimal10.PosPrev = 0;
                localOptimal10.BackPrev = i7;
                localOptimal10.Prev1IsChar = false;
              }
              i76--;
            }
            while (i76 >= 2);
          }
        }
        int i8 = i2 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isRep[this._state]);
        int i9;
        if (this.repLens[0] >= 2)
          i9 = 1 + this.repLens[0];
        while (i9 <= i)
        {
          int i73 = 0;
          while (true)
            if (i9 > this._matchDistances[i73])
            {
              i73 += 2;
              continue;
              i9 = 2;
              break;
            }
          while (true)
          {
            int i74 = this._matchDistances[(i73 + 1)];
            int i75 = i8 + GetPosLenPrice(i74, i9, n);
            Encoder.Optimal localOptimal9 = this._optimum[i9];
            if (i75 < localOptimal9.Price)
            {
              localOptimal9.Price = i75;
              localOptimal9.PosPrev = 0;
              localOptimal9.BackPrev = (i74 + 4);
              localOptimal9.Prev1IsChar = false;
            }
            if (i9 == this._matchDistances[i73])
            {
              i73 += 2;
              if (i73 == j)
                break;
            }
            i9++;
          }
        }
        int i10 = 0;
        int i11 = i4;
        while (true)
        {
          int i12 = i10 + 1;
          if (i12 == i11)
            return Backward(i12);
          int i13 = ReadMatchDistances();
          int i14 = this._numDistancePairs;
          if (i13 >= this._numFastBytes)
          {
            this._longestMatchLength = i13;
            this._longestMatchWasFound = true;
            return Backward(i12);
          }
          paramInt++;
          int i15 = this._optimum[i12].PosPrev;
          int i72;
          int i71;
          int i16;
          label1140: int i18;
          label1169: byte b4;
          byte b5;
          int i20;
          boolean bool2;
          label1354: int i22;
          int i24;
          int i25;
          int i26;
          int i28;
          if (this._optimum[i12].Prev1IsChar)
          {
            i15--;
            if (this._optimum[i12].Prev2)
            {
              i72 = this._optimum[this._optimum[i12].PosPrev2].State;
              if (this._optimum[i12].BackPrev2 < 4)
              {
                i71 = Base.StateUpdateRep(i72);
                i16 = Base.StateUpdateChar(i71);
                if (i15 != i12 - 1)
                  break label1759;
                if (!this._optimum[i12].IsShortRep())
                  break label1749;
                i18 = Base.StateUpdateShortRep(i16);
                this._optimum[i12].State = i18;
                this._optimum[i12].Backs0 = this.reps[0];
                this._optimum[i12].Backs1 = this.reps[1];
                this._optimum[i12].Backs2 = this.reps[2];
                this._optimum[i12].Backs3 = this.reps[3];
                int i19 = this._optimum[i12].Price;
                b4 = this._matchFinder.GetIndexByte(-1);
                b5 = this._matchFinder.GetIndexByte(-1 + (-1 + (0 - this.reps[0])));
                i20 = paramInt & this._posStateMask;
                int i21 = i19 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isMatch[(i20 + (i18 << 4))]);
                Encoder.LiteralEncoder localLiteralEncoder2 = this._literalEncoder;
                byte b6 = this._matchFinder.GetIndexByte(-2);
                Encoder.LiteralEncoder.Encoder2 localEncoder22 = localLiteralEncoder2.GetSubCoder(paramInt, b6);
                if (Base.StateIsCharState(i18))
                  break label2120;
                bool2 = true;
                i22 = i21 + localEncoder22.GetPrice(bool2, b5, b4);
                Encoder.Optimal localOptimal3 = this._optimum[(i12 + 1)];
                int i23 = localOptimal3.Price;
                i24 = 0;
                if (i22 < i23)
                {
                  localOptimal3.Price = i22;
                  localOptimal3.PosPrev = i12;
                  localOptimal3.MakeAsChar();
                  i24 = 1;
                }
                i25 = i19 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isMatch[(i20 + (i18 << 4))]);
                i26 = i25 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRep[i18]);
                if ((b5 == b4) && ((localOptimal3.PosPrev >= i12) || (localOptimal3.BackPrev != 0)))
                {
                  int i70 = i26 + GetRepLen1Price(i18, i20);
                  if (i70 <= localOptimal3.Price)
                  {
                    localOptimal3.Price = i70;
                    localOptimal3.PosPrev = i12;
                    localOptimal3.MakeAsShortRep();
                    i24 = 1;
                  }
                }
                int i27 = 1 + this._matchFinder.GetNumAvailableBytes();
                i28 = Math.min(4095 - i12, i27);
                if (i28 < 2)
                  break label3287;
                if (i28 <= this._numFastBytes)
                  break label3280;
              }
            }
          }
          label1921: label2074: label2120: label3280: for (int i29 = this._numFastBytes; ; i29 = i28)
          {
            int i30;
            if ((i24 == 0) && (b5 != b4))
            {
              int i63 = Math.min(i28 - 1, this._numFastBytes);
              int i64 = this._matchFinder.GetMatchLen(0, this.reps[0], i63);
              if (i64 >= 2)
              {
                int i65 = Base.StateUpdateChar(i18);
                int i66 = paramInt + 1 & this._posStateMask;
                int i67 = i22 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isMatch[(i66 + (i65 << 4))]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRep[i65]);
                int i68 = i64 + (i12 + 1);
                i30 = i11;
                while (true)
                  if (i30 < i68)
                  {
                    Encoder.Optimal[] arrayOfOptimal6 = this._optimum;
                    i30++;
                    arrayOfOptimal6[i30].Price = 268435455;
                    continue;
                    i71 = Base.StateUpdateMatch(i72);
                    break;
                    i71 = this._optimum[i15].State;
                    break;
                    i16 = this._optimum[i15].State;
                    break label1140;
                    label1749: i18 = Base.StateUpdateChar(i16);
                    break label1169;
                    label1759: int i17;
                    if ((this._optimum[i12].Prev1IsChar) && (this._optimum[i12].Prev2))
                    {
                      i15 = this._optimum[i12].PosPrev2;
                      i17 = this._optimum[i12].BackPrev2;
                      i18 = Base.StateUpdateRep(i16);
                    }
                    Encoder.Optimal localOptimal2;
                    while (true)
                    {
                      localOptimal2 = this._optimum[i15];
                      if (i17 >= 4)
                        break label2074;
                      if (i17 != 0)
                        break label1921;
                      this.reps[0] = localOptimal2.Backs0;
                      this.reps[1] = localOptimal2.Backs1;
                      this.reps[2] = localOptimal2.Backs2;
                      this.reps[3] = localOptimal2.Backs3;
                      break;
                      i17 = this._optimum[i12].BackPrev;
                      if (i17 < 4)
                        i18 = Base.StateUpdateRep(i16);
                      else
                        i18 = Base.StateUpdateMatch(i16);
                    }
                    if (i17 == 1)
                    {
                      this.reps[0] = localOptimal2.Backs1;
                      this.reps[1] = localOptimal2.Backs0;
                      this.reps[2] = localOptimal2.Backs2;
                      this.reps[3] = localOptimal2.Backs3;
                      break label1169;
                    }
                    if (i17 == 2)
                    {
                      this.reps[0] = localOptimal2.Backs2;
                      this.reps[1] = localOptimal2.Backs0;
                      this.reps[2] = localOptimal2.Backs1;
                      this.reps[3] = localOptimal2.Backs3;
                      break label1169;
                    }
                    this.reps[0] = localOptimal2.Backs3;
                    this.reps[1] = localOptimal2.Backs0;
                    this.reps[2] = localOptimal2.Backs1;
                    this.reps[3] = localOptimal2.Backs2;
                    break label1169;
                    this.reps[0] = (i17 - 4);
                    this.reps[1] = localOptimal2.Backs0;
                    this.reps[2] = localOptimal2.Backs1;
                    this.reps[3] = localOptimal2.Backs2;
                    break label1169;
                    bool2 = false;
                    break label1354;
                  }
                int i69 = i67 + GetRepPrice(0, i64, i65, i66);
                Encoder.Optimal localOptimal8 = this._optimum[i68];
                if (i69 < localOptimal8.Price)
                {
                  localOptimal8.Price = i69;
                  localOptimal8.PosPrev = (i12 + 1);
                  localOptimal8.BackPrev = 0;
                  localOptimal8.Prev1IsChar = true;
                  localOptimal8.Prev2 = false;
                }
              }
            }
            while (true)
            {
              int i31 = 0;
              int i32 = i30;
              int i33 = 2;
              while (i31 < 4)
              {
                int i50 = this._matchFinder.GetMatchLen(-1, this.reps[i31], i29);
                if (i50 >= 2)
                {
                  int i51 = i50;
                  do
                  {
                    while (i32 < i12 + i51)
                    {
                      Encoder.Optimal[] arrayOfOptimal5 = this._optimum;
                      i32++;
                      arrayOfOptimal5[i32].Price = 268435455;
                    }
                    int i52 = i26 + GetRepPrice(i31, i51, i18, i20);
                    Encoder.Optimal localOptimal6 = this._optimum[(i12 + i51)];
                    if (i52 < localOptimal6.Price)
                    {
                      localOptimal6.Price = i52;
                      localOptimal6.PosPrev = i12;
                      localOptimal6.BackPrev = i31;
                      localOptimal6.Prev1IsChar = false;
                    }
                    i51--;
                  }
                  while (i51 >= 2);
                  if (i31 == 0)
                    i33 = i50 + 1;
                  if (i50 < i28)
                  {
                    int i53 = Math.min(i28 - 1 - i50, this._numFastBytes);
                    int i54 = this._matchFinder.GetMatchLen(i50, this.reps[i31], i53);
                    if (i54 >= 2)
                    {
                      int i55 = Base.StateUpdateRep(i18);
                      int i56 = paramInt + i50 & this._posStateMask;
                      int i57 = i26 + GetRepPrice(i31, i50, i18, i20) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isMatch[(i56 + (i55 << 4))]) + this._literalEncoder.GetSubCoder(paramInt + i50, this._matchFinder.GetIndexByte(-1 + (i50 - 1))).GetPrice(true, this._matchFinder.GetIndexByte(i50 - 1 - (1 + this.reps[i31])), this._matchFinder.GetIndexByte(i50 - 1));
                      int i58 = Base.StateUpdateChar(i55);
                      int i59 = 1 + (paramInt + i50) & this._posStateMask;
                      int i60 = i57 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isMatch[(i59 + (i58 << 4))]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRep[i58]);
                      int i61 = i54 + (i50 + 1);
                      while (i32 < i12 + i61)
                      {
                        Encoder.Optimal[] arrayOfOptimal4 = this._optimum;
                        i32++;
                        arrayOfOptimal4[i32].Price = 268435455;
                      }
                      int i62 = i60 + GetRepPrice(0, i54, i58, i59);
                      Encoder.Optimal localOptimal7 = this._optimum[(i12 + i61)];
                      if (i62 < localOptimal7.Price)
                      {
                        localOptimal7.Price = i62;
                        localOptimal7.PosPrev = (1 + (i12 + i50));
                        localOptimal7.BackPrev = 0;
                        localOptimal7.Prev1IsChar = true;
                        localOptimal7.Prev2 = true;
                        localOptimal7.PosPrev2 = i12;
                        localOptimal7.BackPrev2 = i31;
                      }
                    }
                  }
                }
                i31++;
              }
              int i49;
              if (i13 > i29)
              {
                for (i49 = 0; i29 > this._matchDistances[i49]; i49 += 2);
                this._matchDistances[i49] = i29;
              }
              for (int i34 = i49 + 2; ; i34 = i14)
              {
                if (i29 >= i33)
                {
                  int i35 = i25 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isRep[i18]);
                  i11 = i32;
                  while (i11 < i12 + i29)
                  {
                    Encoder.Optimal[] arrayOfOptimal3 = this._optimum;
                    i11++;
                    arrayOfOptimal3[i11].Price = 268435455;
                  }
                  for (int i36 = 0; i33 > this._matchDistances[i36]; i36 += 2);
                  while (true)
                  {
                    int i40;
                    int i48 = i46 + GetRepPrice(0, i40, i44, i45);
                    Encoder.Optimal localOptimal5 = this._optimum[(i12 + i47)];
                    int i37;
                    if (i48 < localOptimal5.Price)
                    {
                      localOptimal5.Price = i48;
                      localOptimal5.PosPrev = (1 + (i12 + i33));
                      localOptimal5.BackPrev = 0;
                      localOptimal5.Prev1IsChar = true;
                      localOptimal5.Prev2 = true;
                      localOptimal5.PosPrev2 = i12;
                      localOptimal5.BackPrev2 = (i37 + 4);
                    }
                    int i38;
                    do
                    {
                      do
                      {
                        i36 += 2;
                        if (i36 == i34)
                          break;
                        do
                        {
                          i33++;
                          i37 = this._matchDistances[(i36 + 1)];
                          i38 = i35 + GetPosLenPrice(i37, i33, i20);
                          Encoder.Optimal localOptimal4 = this._optimum[(i12 + i33)];
                          if (i38 < localOptimal4.Price)
                          {
                            localOptimal4.Price = i38;
                            localOptimal4.PosPrev = i12;
                            localOptimal4.BackPrev = (i37 + 4);
                            localOptimal4.Prev1IsChar = false;
                          }
                        }
                        while (i33 != this._matchDistances[i36]);
                      }
                      while (i33 >= i28);
                      int i39 = Math.min(i28 - 1 - i33, this._numFastBytes);
                      i40 = this._matchFinder.GetMatchLen(i33, i37, i39);
                    }
                    while (i40 < 2);
                    int i41 = Base.StateUpdateMatch(i18);
                    int i42 = paramInt + i33 & this._posStateMask;
                    int i43 = i38 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isMatch[(i42 + (i41 << 4))]) + this._literalEncoder.GetSubCoder(paramInt + i33, this._matchFinder.GetIndexByte(-1 + (i33 - 1))).GetPrice(true, this._matchFinder.GetIndexByte(-1 + (i33 - (i37 + 1))), this._matchFinder.GetIndexByte(i33 - 1));
                    int i44 = Base.StateUpdateChar(i41);
                    int i45 = 1 + (paramInt + i33) & this._posStateMask;
                    int i46 = i43 + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isMatch[(i45 + (i44 << 4))]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRep[i44]);
                    int i47 = i40 + (i33 + 1);
                    while (i11 < i12 + i47)
                    {
                      Encoder.Optimal[] arrayOfOptimal2 = this._optimum;
                      i11++;
                      arrayOfOptimal2[i11].Price = 268435455;
                    }
                  }
                }
                i11 = i32;
                i10 = i12;
                break;
                i29 = i13;
              }
              i30 = i11;
            }
          }
          label3287: i10 = i12;
        }
      }
    }
  }

  int GetPosLenPrice(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = Base.GetLenToPosState(paramInt2);
    if (paramInt1 < 128);
    for (int j = this._distancesPrices[(paramInt1 + i * 128)]; ; j = this._posSlotPrices[((i << 6) + GetPosSlot2(paramInt1))] + this._alignPrices[(paramInt1 & 0xF)])
      return j + this._lenEncoder.GetPrice(paramInt2 - 2, paramInt3);
  }

  int GetPureRepPrice(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0)
      return com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isRepG0[paramInt2]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRep0Long[(paramInt3 + (paramInt2 << 4))]);
    int i = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRepG0[paramInt2]);
    if (paramInt1 == 1)
      return i + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isRepG1[paramInt2]);
    return i + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._isRepG1[paramInt2]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice(this._isRepG2[paramInt2], paramInt1 - 2);
  }

  int GetRepLen1Price(int paramInt1, int paramInt2)
  {
    return com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isRepG0[paramInt1]) + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._isRep0Long[(paramInt2 + (paramInt1 << 4))]);
  }

  int GetRepPrice(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return this._repMatchLenEncoder.GetPrice(paramInt2 - 2, paramInt4) + GetPureRepPrice(paramInt1, paramInt3, paramInt4);
  }

  void Init()
  {
    BaseInit();
    this._rangeEncoder.Init();
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._isMatch);
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._isRep0Long);
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._isRep);
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._isRepG0);
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._isRepG1);
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._isRepG2);
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._posEncoders);
    this._literalEncoder.Init();
    for (int i = 0; i < 4; i++)
      this._posSlotEncoder[i].Init();
    this._lenEncoder.Init(1 << this._posStateBits);
    this._repMatchLenEncoder.Init(1 << this._posStateBits);
    this._posAlignEncoder.Init();
    this._longestMatchWasFound = false;
    this._optimumEndIndex = 0;
    this._optimumCurrentIndex = 0;
    this._additionalOffset = 0;
  }

  void MovePos(int paramInt)
  {
    if (paramInt > 0)
    {
      this._matchFinder.Skip(paramInt);
      this._additionalOffset = (paramInt + this._additionalOffset);
    }
  }

  int ReadMatchDistances()
  {
    this._numDistancePairs = this._matchFinder.GetMatches(this._matchDistances);
    int i = this._numDistancePairs;
    int j = 0;
    if (i > 0)
    {
      j = this._matchDistances[(-2 + this._numDistancePairs)];
      if (j == this._numFastBytes)
        j += this._matchFinder.GetMatchLen(j - 1, this._matchDistances[(-1 + this._numDistancePairs)], 273 - j);
    }
    this._additionalOffset = (1 + this._additionalOffset);
    return j;
  }

  void ReleaseMFStream()
  {
    if ((this._matchFinder != null) && (this._needReleaseMFStream))
    {
      this._matchFinder.ReleaseStream();
      this._needReleaseMFStream = false;
    }
  }

  void ReleaseOutStream()
  {
    this._rangeEncoder.ReleaseStream();
  }

  void ReleaseStreams()
  {
    ReleaseMFStream();
    ReleaseOutStream();
  }

  public boolean SetAlgorithm(int paramInt)
  {
    return true;
  }

  public boolean SetDictionarySize(int paramInt)
  {
    int i = 0;
    if ((paramInt <= 0) || (paramInt > 536870912))
      return false;
    this._dictionarySize = paramInt;
    while (paramInt > 1 << i)
      i++;
    this._distTableSize = (i * 2);
    return true;
  }

  public void SetEndMarkerMode(boolean paramBoolean)
  {
    this._writeEndMark = paramBoolean;
  }

  public boolean SetLcLpPb(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 < 0) || (paramInt2 > 4) || (paramInt1 < 0) || (paramInt1 > 8) || (paramInt3 < 0) || (paramInt3 > 4))
      return false;
    this._numLiteralPosStateBits = paramInt2;
    this._numLiteralContextBits = paramInt1;
    this._posStateBits = paramInt3;
    this._posStateMask = (-1 + (1 << this._posStateBits));
    return true;
  }

  public boolean SetMatchFinder(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 2))
      return false;
    int i = this._matchFinderType;
    this._matchFinderType = paramInt;
    if ((this._matchFinder != null) && (i != this._matchFinderType))
    {
      this._dictionarySizePrev = -1;
      this._matchFinder = null;
    }
    return true;
  }

  public boolean SetNumFastBytes(int paramInt)
  {
    if ((paramInt < 5) || (paramInt > 273))
      return false;
    this._numFastBytes = paramInt;
    return true;
  }

  void SetOutStream(OutputStream paramOutputStream)
  {
    this._rangeEncoder.SetStream(paramOutputStream);
  }

  void SetStreams(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong1, long paramLong2)
  {
    this._inStream = paramInputStream;
    this._finished = false;
    Create();
    SetOutStream(paramOutputStream);
    Init();
    FillDistancesPrices();
    FillAlignPrices();
    this._lenEncoder.SetTableSize(-2 + (1 + this._numFastBytes));
    this._lenEncoder.UpdateTables(1 << this._posStateBits);
    this._repMatchLenEncoder.SetTableSize(-2 + (1 + this._numFastBytes));
    this._repMatchLenEncoder.UpdateTables(1 << this._posStateBits);
    this.nowPos64 = 0L;
  }

  void SetWriteEndMarkerMode(boolean paramBoolean)
  {
    this._writeEndMark = paramBoolean;
  }

  public void WriteCoderProperties(OutputStream paramOutputStream)
  {
    this.properties[0] = ((byte)(9 * (5 * this._posStateBits + this._numLiteralPosStateBits) + this._numLiteralContextBits));
    for (int i = 0; i < 4; i++)
      this.properties[(i + 1)] = ((byte)(this._dictionarySize >> i * 8));
    paramOutputStream.write(this.properties, 0, 5);
  }

  void WriteEndMarker(int paramInt)
  {
    if (!this._writeEndMark)
      return;
    this._rangeEncoder.Encode(this._isMatch, paramInt + (this._state << 4), 1);
    this._rangeEncoder.Encode(this._isRep, this._state, 0);
    this._state = Base.StateUpdateMatch(this._state);
    this._lenEncoder.Encode(this._rangeEncoder, 0, paramInt);
    int i = Base.GetLenToPosState(2);
    this._posSlotEncoder[i].Encode(this._rangeEncoder, 63);
    this._rangeEncoder.EncodeDirectBits(67108863, 26);
    this._posAlignEncoder.ReverseEncode(this._rangeEncoder, 15);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Encoder
 * JD-Core Version:    0.6.2
 */