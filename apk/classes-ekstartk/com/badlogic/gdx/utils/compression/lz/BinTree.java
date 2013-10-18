package com.badlogic.gdx.utils.compression.lz;

public class BinTree extends InWindow
{
  private static final int[] CrcTable = new int[256];
  static final int kBT2HashSize = 65536;
  static final int kEmptyHashValue = 0;
  static final int kHash2Size = 1024;
  static final int kHash3Offset = 1024;
  static final int kHash3Size = 65536;
  static final int kMaxValForNormalize = 1073741823;
  static final int kStartMaxLen = 1;
  boolean HASH_ARRAY = true;
  int _cutValue = 255;
  int _cyclicBufferPos;
  int _cyclicBufferSize = 0;
  int[] _hash;
  int _hashMask;
  int _hashSizeSum = 0;
  int _matchMaxLen;
  int[] _son;
  int kFixHashSize = 66560;
  int kMinMatchCheck = 4;
  int kNumHashDirectBytes = 0;

  static
  {
    for (int i = 0; i < 256; i++)
    {
      int j = 0;
      int k = i;
      if (j < 8)
      {
        if ((k & 0x1) != 0)
          k = 0xEDB88320 ^ k >>> 1;
        while (true)
        {
          j++;
          break;
          k >>>= 1;
        }
      }
      CrcTable[i] = k;
    }
  }

  public boolean Create(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 > 1073741567)
      return false;
    this._cutValue = (16 + (paramInt3 >> 1));
    int i = 256 + (paramInt4 + (paramInt3 + (paramInt1 + paramInt2))) / 2;
    super.Create(paramInt1 + paramInt2, paramInt3 + paramInt4, i);
    this._matchMaxLen = paramInt3;
    int j = paramInt1 + 1;
    if (this._cyclicBufferSize != j)
    {
      this._cyclicBufferSize = j;
      this._son = new int[j * 2];
    }
    int k = 65536;
    if (this.HASH_ARRAY)
    {
      int m = paramInt1 - 1;
      int n = m | m >> 1;
      int i1 = n | n >> 2;
      int i2 = i1 | i1 >> 4;
      int i3 = 0xFFFF | (i2 | i2 >> 8) >> 1;
      if (i3 > 16777216)
        i3 >>= 1;
      this._hashMask = i3;
      k = i3 + 1 + this.kFixHashSize;
    }
    if (k != this._hashSizeSum)
    {
      this._hashSizeSum = k;
      this._hash = new int[k];
    }
    return true;
  }

  public int GetMatches(int[] paramArrayOfInt)
  {
    int i;
    int j;
    label42: int k;
    int m;
    int i2;
    int i1;
    int n;
    label159: int i3;
    int i29;
    int i32;
    int i33;
    int i34;
    int i5;
    int i4;
    if (this._pos + this._matchMaxLen <= this._streamPos)
    {
      i = this._matchMaxLen;
      if (this._pos <= this._cyclicBufferSize)
        break label630;
      j = this._pos - this._cyclicBufferSize;
      k = this._bufferOffset + this._pos;
      m = 1;
      if (!this.HASH_ARRAY)
        break label635;
      int i39 = CrcTable[(0xFF & this._bufferBase[k])] ^ 0xFF & this._bufferBase[(k + 1)];
      i2 = i39 & 0x3FF;
      int i40 = i39 ^ (0xFF & this._bufferBase[(k + 2)]) << 8;
      i1 = 0xFFFF & i40;
      n = (i40 ^ CrcTable[(0xFF & this._bufferBase[(k + 3)])] << 5) & this._hashMask;
      i3 = this._hash[(n + this.kFixHashSize)];
      if (!this.HASH_ARRAY)
        break label999;
      i29 = this._hash[i2];
      int i30 = this._hash[(i1 + 1024)];
      this._hash[i2] = this._pos;
      this._hash[(i1 + 1024)] = this._pos;
      int i31 = 0;
      if (i29 > j)
      {
        int i37 = this._bufferBase[(i29 + this._bufferOffset)];
        int i38 = this._bufferBase[k];
        i31 = 0;
        if (i37 == i38)
        {
          m = 2;
          paramArrayOfInt[0] = m;
          i31 = 2;
          paramArrayOfInt[1] = (-1 + (this._pos - i29));
        }
      }
      i32 = m;
      i33 = i31;
      if ((i30 <= j) || (this._bufferBase[(i30 + this._bufferOffset)] != this._bufferBase[k]))
        break label984;
      if (i30 == i29)
        i33 -= 2;
      int i35 = i33 + 1;
      paramArrayOfInt[i33] = 3;
      int i36 = i35 + 1;
      paramArrayOfInt[i35] = (-1 + (this._pos - i30));
      i34 = i30;
      i5 = i36;
      i4 = 3;
      label380: if ((i5 != 0) && (i34 == i3))
      {
        i5 -= 2;
        i4 = 1;
      }
    }
    while (true)
    {
      this._hash[(n + this.kFixHashSize)] = this._pos;
      int i6 = 1 + (this._cyclicBufferPos << 1);
      int i7 = this._cyclicBufferPos << 1;
      int i8 = this.kNumHashDirectBytes;
      if ((this.kNumHashDirectBytes != 0) && (i3 > j) && (this._bufferBase[(i3 + this._bufferOffset + this.kNumHashDirectBytes)] != this._bufferBase[(k + this.kNumHashDirectBytes)]))
      {
        int i28 = i5 + 1;
        i4 = this.kNumHashDirectBytes;
        paramArrayOfInt[i5] = i4;
        i5 = i28 + 1;
        paramArrayOfInt[i28] = (-1 + (this._pos - i3));
      }
      int i9 = this._cutValue;
      int i10 = i6;
      int i11 = i3;
      int i12 = i8;
      int i13 = i7;
      int i14 = i8;
      int i15 = i5;
      int i16 = i4;
      int i17 = i9;
      while (true)
      {
        int i19;
        int i18;
        if (i11 > j)
        {
          i19 = i17 - 1;
          if (i17 != 0);
        }
        else
        {
          int[] arrayOfInt = this._son;
          this._son[i13] = 0;
          arrayOfInt[i10] = 0;
          i18 = i15;
          MovePos();
          return i18;
          i = this._streamPos - this._pos;
          if (i >= this.kMinMatchCheck)
            break;
          MovePos();
          return 0;
          label630: j = 0;
          break label42;
          label635: n = 0xFF & this._bufferBase[k] ^ (0xFF & this._bufferBase[(k + 1)]) << 8;
          i1 = 0;
          i2 = 0;
          break label159;
        }
        int i20 = this._pos - i11;
        if (i20 <= this._cyclicBufferPos);
        int i22;
        int i23;
        int i24;
        for (int i21 = this._cyclicBufferPos - i20; ; i21 = this._cyclicBufferPos - i20 + this._cyclicBufferSize)
        {
          i22 = i21 << 1;
          i23 = i11 + this._bufferOffset;
          i24 = Math.min(i12, i14);
          if (this._bufferBase[(i23 + i24)] != this._bufferBase[(k + i24)])
            break label877;
          do
            i24++;
          while ((i24 != i) && (this._bufferBase[(i23 + i24)] == this._bufferBase[(k + i24)]));
          if (i16 >= i24)
            break label877;
          int i27 = i15 + 1;
          paramArrayOfInt[i15] = i24;
          i18 = i27 + 1;
          paramArrayOfInt[i27] = (i20 - 1);
          if (i24 != i)
            break label869;
          this._son[i13] = this._son[i22];
          this._son[i10] = this._son[(i22 + 1)];
          break;
        }
        label869: i15 = i18;
        i16 = i24;
        label877: if ((0xFF & this._bufferBase[(i23 + i24)]) < (0xFF & this._bufferBase[(k + i24)]))
        {
          this._son[i13] = i11;
          int i26 = i22 + 1;
          i11 = this._son[i26];
          i13 = i26;
          i14 = i24;
          i17 = i19;
        }
        else
        {
          this._son[i10] = i11;
          int i25 = this._son[i22];
          i10 = i22;
          i11 = i25;
          i12 = i24;
          i17 = i19;
        }
      }
      label984: i34 = i29;
      i5 = i33;
      i4 = i32;
      break label380;
      label999: i4 = m;
      i5 = 0;
    }
  }

  public void Init()
  {
    super.Init();
    for (int i = 0; i < this._hashSizeSum; i++)
      this._hash[i] = 0;
    this._cyclicBufferPos = 0;
    ReduceOffsets(-1);
  }

  public void MovePos()
  {
    int i = 1 + this._cyclicBufferPos;
    this._cyclicBufferPos = i;
    if (i >= this._cyclicBufferSize)
      this._cyclicBufferPos = 0;
    super.MovePos();
    if (this._pos == 1073741823)
      Normalize();
  }

  void Normalize()
  {
    int i = this._pos - this._cyclicBufferSize;
    NormalizeLinks(this._son, 2 * this._cyclicBufferSize, i);
    NormalizeLinks(this._hash, this._hashSizeSum, i);
    ReduceOffsets(i);
  }

  void NormalizeLinks(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt1)
    {
      int j = paramArrayOfInt[i];
      if (j <= paramInt2);
      for (int k = 0; ; k = j - paramInt2)
      {
        paramArrayOfInt[i] = k;
        i++;
        break;
      }
    }
  }

  public void SetCutValue(int paramInt)
  {
    this._cutValue = paramInt;
  }

  public void SetType(int paramInt)
  {
    if (paramInt > 2);
    for (boolean bool = true; ; bool = false)
    {
      this.HASH_ARRAY = bool;
      if (!this.HASH_ARRAY)
        break;
      this.kNumHashDirectBytes = 0;
      this.kMinMatchCheck = 4;
      this.kFixHashSize = 66560;
      return;
    }
    this.kNumHashDirectBytes = 2;
    this.kMinMatchCheck = 3;
    this.kFixHashSize = 0;
  }

  public void Skip(int paramInt)
  {
    int i;
    label21: int j;
    label42: int k;
    int m;
    label182: int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    if (this._pos + this._matchMaxLen <= this._streamPos)
    {
      i = this._matchMaxLen;
      if (this._pos <= this._cyclicBufferSize)
        break label332;
      j = this._pos - this._cyclicBufferSize;
      k = this._bufferOffset + this._pos;
      if (!this.HASH_ARRAY)
        break label337;
      int i18 = CrcTable[(0xFF & this._bufferBase[k])] ^ 0xFF & this._bufferBase[(k + 1)];
      int i19 = i18 & 0x3FF;
      this._hash[i19] = this._pos;
      int i20 = i18 ^ (0xFF & this._bufferBase[(k + 2)]) << 8;
      int i21 = 0xFFFF & i20;
      this._hash[(i21 + 1024)] = this._pos;
      m = (i20 ^ CrcTable[(0xFF & this._bufferBase[(k + 3)])] << 5) & this._hashMask;
      int n = this._hash[(m + this.kFixHashSize)];
      this._hash[(m + this.kFixHashSize)] = this._pos;
      int i1 = 1 + (this._cyclicBufferPos << 1);
      int i2 = this._cyclicBufferPos << 1;
      int i3 = this.kNumHashDirectBytes;
      i4 = this._cutValue;
      i5 = i1;
      i6 = n;
      i7 = i2;
      i8 = i3;
      i9 = i3;
    }
    while (true)
    {
      int i10;
      if (i6 > j)
      {
        i10 = i4 - 1;
        if (i4 != 0);
      }
      else
      {
        int[] arrayOfInt = this._son;
        this._son[i7] = 0;
        arrayOfInt[i5] = 0;
        do
        {
          MovePos();
          paramInt--;
          if (paramInt != 0)
            break;
          return;
          i = this._streamPos - this._pos;
        }
        while (i < this.kMinMatchCheck);
        break label21;
        label332: j = 0;
        break label42;
        label337: m = 0xFF & this._bufferBase[k] ^ (0xFF & this._bufferBase[(k + 1)]) << 8;
        break label182;
      }
      int i11 = this._pos - i6;
      if (i11 <= this._cyclicBufferPos);
      int i13;
      int i14;
      int i15;
      for (int i12 = this._cyclicBufferPos - i11; ; i12 = this._cyclicBufferPos - i11 + this._cyclicBufferSize)
      {
        i13 = i12 << 1;
        i14 = i6 + this._bufferOffset;
        i15 = Math.min(i8, i9);
        if (this._bufferBase[(i14 + i15)] != this._bufferBase[(k + i15)])
          break label532;
        do
          i15++;
        while ((i15 != i) && (this._bufferBase[(i14 + i15)] == this._bufferBase[(k + i15)]));
        if (i15 != i)
          break label532;
        this._son[i7] = this._son[i13];
        this._son[i5] = this._son[(i13 + 1)];
        break;
      }
      label532: if ((0xFF & this._bufferBase[(i14 + i15)]) < (0xFF & this._bufferBase[(k + i15)]))
      {
        this._son[i7] = i6;
        int i17 = i13 + 1;
        i6 = this._son[i17];
        i7 = i17;
        i9 = i15;
        i4 = i10;
      }
      else
      {
        this._son[i5] = i6;
        int i16 = this._son[i13];
        i5 = i13;
        i6 = i16;
        i8 = i15;
        i4 = i10;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lz.BinTree
 * JD-Core Version:    0.6.2
 */