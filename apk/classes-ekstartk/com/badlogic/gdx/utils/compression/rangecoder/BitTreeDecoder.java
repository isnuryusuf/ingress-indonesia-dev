package com.badlogic.gdx.utils.compression.rangecoder;

public class BitTreeDecoder
{
  short[] Models;
  int NumBitLevels;

  public BitTreeDecoder(int paramInt)
  {
    this.NumBitLevels = paramInt;
    this.Models = new short[1 << paramInt];
  }

  public static int ReverseDecode(short[] paramArrayOfShort, int paramInt1, Decoder paramDecoder, int paramInt2)
  {
    int i = 0;
    int j = 1;
    int k = 0;
    while (i < paramInt2)
    {
      int m = paramDecoder.DecodeBit(paramArrayOfShort, paramInt1 + j);
      j = m + (j << 1);
      k |= m << i;
      i++;
    }
    return k;
  }

  public int Decode(Decoder paramDecoder)
  {
    int i = this.NumBitLevels;
    int j = 1;
    while (i != 0)
    {
      j = (j << 1) + paramDecoder.DecodeBit(this.Models, j);
      i--;
    }
    return j - (1 << this.NumBitLevels);
  }

  public void Init()
  {
    Decoder.InitBitModels(this.Models);
  }

  public int ReverseDecode(Decoder paramDecoder)
  {
    int i = 0;
    int j = 1;
    int k = 0;
    while (i < this.NumBitLevels)
    {
      int m = paramDecoder.DecodeBit(this.Models, j);
      j = m + (j << 1);
      k |= m << i;
      i++;
    }
    return k;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.rangecoder.BitTreeDecoder
 * JD-Core Version:    0.6.2
 */