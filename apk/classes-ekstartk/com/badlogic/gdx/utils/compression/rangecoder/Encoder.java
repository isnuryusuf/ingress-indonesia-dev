package com.badlogic.gdx.utils.compression.rangecoder;

import java.io.OutputStream;

public class Encoder
{
  private static int[] ProbPrices = new int[512];
  static final int kBitModelTotal = 2048;
  static final int kNumBitModelTotalBits = 11;
  public static final int kNumBitPriceShiftBits = 6;
  static final int kNumMoveBits = 5;
  static final int kNumMoveReducingBits = 2;
  static final int kTopMask = -16777216;
  long Low;
  int Range;
  OutputStream Stream;
  int _cache;
  int _cacheSize;
  long _position;

  static
  {
    for (int i = 8; i >= 0; i--)
    {
      int j = 1 << -1 + (9 - i);
      int k = 1 << 9 - i;
      while (j < k)
      {
        ProbPrices[j] = ((i << 6) + (k - j << 6 >>> -1 + (9 - i)));
        j++;
      }
    }
  }

  public static int GetPrice(int paramInt1, int paramInt2)
  {
    return ProbPrices[((0x7FF & (paramInt1 - paramInt2 ^ -paramInt2)) >>> 2)];
  }

  public static int GetPrice0(int paramInt)
  {
    return ProbPrices[(paramInt >>> 2)];
  }

  public static int GetPrice1(int paramInt)
  {
    return ProbPrices[(2048 - paramInt >>> 2)];
  }

  public static void InitBitModels(short[] paramArrayOfShort)
  {
    for (int i = 0; i < paramArrayOfShort.length; i++)
      paramArrayOfShort[i] = 1024;
  }

  public void Encode(short[] paramArrayOfShort, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfShort[paramInt1];
    int j = i * (this.Range >>> 11);
    if (paramInt2 == 0)
    {
      this.Range = j;
      paramArrayOfShort[paramInt1] = ((short)(i + (2048 - i >>> 5)));
    }
    while (true)
    {
      if ((0xFF000000 & this.Range) == 0)
      {
        this.Range <<= 8;
        ShiftLow();
      }
      return;
      this.Low += (0xFFFFFFFF & j);
      this.Range -= j;
      paramArrayOfShort[paramInt1] = ((short)(i - (i >>> 5)));
    }
  }

  public void EncodeDirectBits(int paramInt1, int paramInt2)
  {
    for (int i = paramInt2 - 1; i >= 0; i--)
    {
      this.Range >>>= 1;
      if ((0x1 & paramInt1 >>> i) == 1)
        this.Low += this.Range;
      if ((0xFF000000 & this.Range) == 0)
      {
        this.Range <<= 8;
        ShiftLow();
      }
    }
  }

  public void FlushData()
  {
    for (int i = 0; i < 5; i++)
      ShiftLow();
  }

  public void FlushStream()
  {
    this.Stream.flush();
  }

  public long GetProcessedSizeAdd()
  {
    return 4L + (this._cacheSize + this._position);
  }

  public void Init()
  {
    this._position = 0L;
    this.Low = 0L;
    this.Range = -1;
    this._cacheSize = 1;
    this._cache = 0;
  }

  public void ReleaseStream()
  {
    this.Stream = null;
  }

  public void SetStream(OutputStream paramOutputStream)
  {
    this.Stream = paramOutputStream;
  }

  public void ShiftLow()
  {
    int i = (int)(this.Low >>> 32);
    if ((i != 0) || (this.Low < 4278190080L))
    {
      this._position += this._cacheSize;
      int j = this._cache;
      int k;
      do
      {
        this.Stream.write(j + i);
        j = 255;
        k = -1 + this._cacheSize;
        this._cacheSize = k;
      }
      while (k != 0);
      this._cache = ((int)this.Low >>> 24);
    }
    this._cacheSize = (1 + this._cacheSize);
    this.Low = ((0xFFFFFF & this.Low) << 8);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.rangecoder.Encoder
 * JD-Core Version:    0.6.2
 */