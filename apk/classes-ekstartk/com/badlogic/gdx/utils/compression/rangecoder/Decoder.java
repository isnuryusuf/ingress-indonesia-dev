package com.badlogic.gdx.utils.compression.rangecoder;

import java.io.InputStream;

public class Decoder
{
  static final int kBitModelTotal = 2048;
  static final int kNumBitModelTotalBits = 11;
  static final int kNumMoveBits = 5;
  static final int kTopMask = -16777216;
  int Code;
  int Range;
  InputStream Stream;

  public static void InitBitModels(short[] paramArrayOfShort)
  {
    for (int i = 0; i < paramArrayOfShort.length; i++)
      paramArrayOfShort[i] = 1024;
  }

  public int DecodeBit(short[] paramArrayOfShort, int paramInt)
  {
    int i = paramArrayOfShort[paramInt];
    int j = i * (this.Range >>> 11);
    if ((0x80000000 ^ this.Code) < (0x80000000 ^ j))
    {
      this.Range = j;
      paramArrayOfShort[paramInt] = ((short)(i + (2048 - i >>> 5)));
      if ((0xFF000000 & this.Range) == 0)
      {
        this.Code = (this.Code << 8 | this.Stream.read());
        this.Range <<= 8;
      }
      return 0;
    }
    this.Range -= j;
    this.Code -= j;
    paramArrayOfShort[paramInt] = ((short)(i - (i >>> 5)));
    if ((0xFF000000 & this.Range) == 0)
    {
      this.Code = (this.Code << 8 | this.Stream.read());
      this.Range <<= 8;
    }
    return 1;
  }

  public final int DecodeDirectBits(int paramInt)
  {
    int i = 0;
    while (paramInt != 0)
    {
      this.Range >>>= 1;
      int j = this.Code - this.Range >>> 31;
      this.Code -= (this.Range & j - 1);
      i = i << 1 | 1 - j;
      if ((0xFF000000 & this.Range) == 0)
      {
        this.Code = (this.Code << 8 | this.Stream.read());
        this.Range <<= 8;
      }
      paramInt--;
    }
    return i;
  }

  public final void Init()
  {
    int i = 0;
    this.Code = 0;
    this.Range = -1;
    while (i < 5)
    {
      this.Code = (this.Code << 8 | this.Stream.read());
      i++;
    }
  }

  public final void ReleaseStream()
  {
    this.Stream = null;
  }

  public final void SetStream(InputStream paramInputStream)
  {
    this.Stream = paramInputStream;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.rangecoder.Decoder
 * JD-Core Version:    0.6.2
 */