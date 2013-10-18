package com.badlogic.gdx.utils.compression.rangecoder;

public class BitTreeEncoder
{
  short[] Models;
  int NumBitLevels;

  public BitTreeEncoder(int paramInt)
  {
    this.NumBitLevels = paramInt;
    this.Models = new short[1 << paramInt];
  }

  public static void ReverseEncode(short[] paramArrayOfShort, int paramInt1, Encoder paramEncoder, int paramInt2, int paramInt3)
  {
    int i = 1;
    for (int j = 0; j < paramInt2; j++)
    {
      int k = paramInt3 & 0x1;
      paramEncoder.Encode(paramArrayOfShort, paramInt1 + i, k);
      i = k | i << 1;
      paramInt3 >>= 1;
    }
  }

  public static int ReverseGetPrice(short[] paramArrayOfShort, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    int j = 1;
    while (paramInt2 != 0)
    {
      int k = paramInt3 & 0x1;
      paramInt3 >>>= 1;
      i += Encoder.GetPrice(paramArrayOfShort[(paramInt1 + j)], k);
      j = k | j << 1;
      paramInt2--;
    }
    return i;
  }

  public void Encode(Encoder paramEncoder, int paramInt)
  {
    int i = 1;
    int j = this.NumBitLevels;
    while (j != 0)
    {
      j--;
      int k = 0x1 & paramInt >>> j;
      paramEncoder.Encode(this.Models, i, k);
      i = k | i << 1;
    }
  }

  public int GetPrice(int paramInt)
  {
    int i = 0;
    int j = 1;
    int k = this.NumBitLevels;
    while (k != 0)
    {
      k--;
      int m = 0x1 & paramInt >>> k;
      i += Encoder.GetPrice(this.Models[j], m);
      j = m + (j << 1);
    }
    return i;
  }

  public void Init()
  {
    Decoder.InitBitModels(this.Models);
  }

  public void ReverseEncode(Encoder paramEncoder, int paramInt)
  {
    int i = 1;
    for (int j = 0; j < this.NumBitLevels; j++)
    {
      int k = paramInt & 0x1;
      paramEncoder.Encode(this.Models, i, k);
      i = k | i << 1;
      paramInt >>= 1;
    }
  }

  public int ReverseGetPrice(int paramInt)
  {
    int i = 0;
    int j = 1;
    for (int k = this.NumBitLevels; k != 0; k--)
    {
      int m = paramInt & 0x1;
      paramInt >>>= 1;
      i += Encoder.GetPrice(this.Models[j], m);
      j = m | j << 1;
    }
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.rangecoder.BitTreeEncoder
 * JD-Core Version:    0.6.2
 */