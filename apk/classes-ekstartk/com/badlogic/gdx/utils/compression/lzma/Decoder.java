package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.utils.compression.lz.OutWindow;
import com.badlogic.gdx.utils.compression.rangecoder.BitTreeDecoder;
import java.io.InputStream;
import java.io.OutputStream;

public class Decoder
{
  int m_DictionarySize = -1;
  int m_DictionarySizeCheck = -1;
  short[] m_IsMatchDecoders = new short['À'];
  short[] m_IsRep0LongDecoders = new short['À'];
  short[] m_IsRepDecoders = new short[12];
  short[] m_IsRepG0Decoders = new short[12];
  short[] m_IsRepG1Decoders = new short[12];
  short[] m_IsRepG2Decoders = new short[12];
  Decoder.LenDecoder m_LenDecoder = new Decoder.LenDecoder(this);
  Decoder.LiteralDecoder m_LiteralDecoder = new Decoder.LiteralDecoder(this);
  OutWindow m_OutWindow = new OutWindow();
  BitTreeDecoder m_PosAlignDecoder = new BitTreeDecoder(4);
  short[] m_PosDecoders = new short[114];
  BitTreeDecoder[] m_PosSlotDecoder = new BitTreeDecoder[4];
  int m_PosStateMask;
  com.badlogic.gdx.utils.compression.rangecoder.Decoder m_RangeDecoder = new com.badlogic.gdx.utils.compression.rangecoder.Decoder();
  Decoder.LenDecoder m_RepLenDecoder = new Decoder.LenDecoder(this);

  public Decoder()
  {
    for (int i = 0; i < 4; i++)
      this.m_PosSlotDecoder[i] = new BitTreeDecoder(6);
  }

  public boolean Code(InputStream paramInputStream, OutputStream paramOutputStream, long paramLong)
  {
    this.m_RangeDecoder.SetStream(paramInputStream);
    this.m_OutWindow.SetStream(paramOutputStream);
    Init();
    int i = Base.StateInit();
    byte b = 0;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = i;
    long l1 = 0L;
    int i2;
    int i4;
    int i3;
    int i7;
    if ((paramLong < 0L) || (l1 < paramLong))
    {
      i2 = (int)l1 & this.m_PosStateMask;
      if (this.m_RangeDecoder.DecodeBit(this.m_IsMatchDecoders, i2 + (i1 << 4)) == 0)
      {
        Decoder.LiteralDecoder.Decoder2 localDecoder2 = this.m_LiteralDecoder.GetDecoder((int)l1, b);
        if (!Base.StateIsCharState(i1));
        for (b = localDecoder2.DecodeWithMatchByte(this.m_RangeDecoder, this.m_OutWindow.GetByte(n)); ; b = localDecoder2.DecodeNormal(this.m_RangeDecoder))
        {
          this.m_OutWindow.PutByte(b);
          int i18 = Base.StateUpdateChar(i1);
          l1 = 1L + l1;
          i1 = i18;
          break;
        }
      }
      if (this.m_RangeDecoder.DecodeBit(this.m_IsRepDecoders, i1) == 1)
        if (this.m_RangeDecoder.DecodeBit(this.m_IsRepG0Decoders, i1) == 0)
        {
          if (this.m_RangeDecoder.DecodeBit(this.m_IsRep0LongDecoders, i2 + (i1 << 4)) != 0)
            break label656;
          i4 = Base.StateUpdateShortRep(i1);
          i3 = 1;
          int i17 = j;
          i7 = m;
          m = k;
          k = i17;
        }
    }
    while (true)
    {
      if (i3 == 0)
      {
        i3 = 2 + this.m_RepLenDecoder.Decode(this.m_RangeDecoder, i2);
        i4 = Base.StateUpdateRep(i4);
      }
      while (true)
      {
        if ((n < l1) && (n < this.m_DictionarySizeCheck))
          break label577;
        return false;
        int i15;
        if (this.m_RangeDecoder.DecodeBit(this.m_IsRepG1Decoders, i1) == 0)
        {
          i15 = m;
          m = k;
          k = j;
          i7 = n;
          n = i15;
          i4 = i1;
          i3 = 0;
          break;
        }
        if (this.m_RangeDecoder.DecodeBit(this.m_IsRepG2Decoders, i1) == 0)
          i15 = k;
        while (true)
        {
          k = m;
          break;
          i15 = j;
          j = k;
        }
        i3 = 2 + this.m_LenDecoder.Decode(this.m_RangeDecoder, i2);
        i4 = Base.StateUpdateMatch(i1);
        int i5 = this.m_PosSlotDecoder[Base.GetLenToPosState(i3)].Decode(this.m_RangeDecoder);
        if (i5 >= 4)
        {
          int i9 = -1 + (i5 >> 1);
          int i10 = (0x2 | i5 & 0x1) << i9;
          if (i5 < 14)
          {
            int i13 = i10 + BitTreeDecoder.ReverseDecode(this.m_PosDecoders, -1 + (i10 - i5), this.m_RangeDecoder, i9);
            int i14 = n;
            n = i13;
            i7 = i14;
          }
          else
          {
            int i11 = i10 + (this.m_RangeDecoder.DecodeDirectBits(i9 - 4) << 4) + this.m_PosAlignDecoder.ReverseDecode(this.m_RangeDecoder);
            if (i11 < 0)
            {
              if (i11 == -1)
                break label633;
              return false;
            }
            int i12 = n;
            n = i11;
            i7 = i12;
          }
        }
        else
        {
          int i6 = n;
          n = i5;
          i7 = i6;
        }
      }
      label577: this.m_OutWindow.CopyBlock(n, i3);
      long l2 = l1 + i3;
      b = this.m_OutWindow.GetByte(0);
      l1 = l2;
      i1 = i4;
      int i8 = m;
      m = i7;
      j = k;
      k = i8;
      break;
      label633: this.m_OutWindow.Flush();
      this.m_OutWindow.ReleaseStream();
      this.m_RangeDecoder.ReleaseStream();
      return true;
      label656: i4 = i1;
      int i16 = k;
      k = j;
      i7 = m;
      m = i16;
      i3 = 0;
    }
  }

  void Init()
  {
    int i = 0;
    this.m_OutWindow.Init(false);
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_IsMatchDecoders);
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_IsRep0LongDecoders);
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_IsRepDecoders);
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_IsRepG0Decoders);
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_IsRepG1Decoders);
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_IsRepG2Decoders);
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_PosDecoders);
    this.m_LiteralDecoder.Init();
    while (i < 4)
    {
      this.m_PosSlotDecoder[i].Init();
      i++;
    }
    this.m_LenDecoder.Init();
    this.m_RepLenDecoder.Init();
    this.m_PosAlignDecoder.Init();
    this.m_RangeDecoder.Init();
  }

  public boolean SetDecoderProperties(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 5);
    int j;
    int m;
    int n;
    int i2;
    do
    {
      return false;
      int i = 0xFF & paramArrayOfByte[0];
      j = i % 9;
      int k = i / 9;
      m = k % 5;
      n = k / 5;
      int i1 = 0;
      i2 = 0;
      while (i1 < 4)
      {
        i2 += ((0xFF & paramArrayOfByte[(i1 + 1)]) << i1 * 8);
        i1++;
      }
    }
    while (!SetLcLpPb(j, m, n));
    return SetDictionarySize(i2);
  }

  boolean SetDictionarySize(int paramInt)
  {
    int i = 1;
    if (paramInt < 0)
      i = 0;
    while (this.m_DictionarySize == paramInt)
      return i;
    this.m_DictionarySize = paramInt;
    this.m_DictionarySizeCheck = Math.max(this.m_DictionarySize, i);
    this.m_OutWindow.Create(Math.max(this.m_DictionarySizeCheck, 4096));
    return i;
  }

  boolean SetLcLpPb(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 > 8) || (paramInt2 > 4) || (paramInt3 > 4))
      return false;
    this.m_LiteralDecoder.Create(paramInt2, paramInt1);
    int i = 1 << paramInt3;
    this.m_LenDecoder.Create(i);
    this.m_RepLenDecoder.Create(i);
    this.m_PosStateMask = (i - 1);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Decoder
 * JD-Core Version:    0.6.2
 */