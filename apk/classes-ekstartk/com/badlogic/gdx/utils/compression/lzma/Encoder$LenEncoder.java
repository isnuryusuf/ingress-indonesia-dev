package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.utils.compression.rangecoder.BitTreeEncoder;

class Encoder$LenEncoder
{
  short[] _choice = new short[2];
  BitTreeEncoder _highCoder = new BitTreeEncoder(8);
  BitTreeEncoder[] _lowCoder = new BitTreeEncoder[16];
  BitTreeEncoder[] _midCoder = new BitTreeEncoder[16];

  public Encoder$LenEncoder(Encoder paramEncoder)
  {
    for (int i = 0; i < 16; i++)
    {
      this._lowCoder[i] = new BitTreeEncoder(3);
      this._midCoder[i] = new BitTreeEncoder(3);
    }
  }

  public void Encode(com.badlogic.gdx.utils.compression.rangecoder.Encoder paramEncoder, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 8)
    {
      paramEncoder.Encode(this._choice, 0, 0);
      this._lowCoder[paramInt2].Encode(paramEncoder, paramInt1);
      return;
    }
    int i = paramInt1 - 8;
    paramEncoder.Encode(this._choice, 0, 1);
    if (i < 8)
    {
      paramEncoder.Encode(this._choice, 1, 0);
      this._midCoder[paramInt2].Encode(paramEncoder, i);
      return;
    }
    paramEncoder.Encode(this._choice, 1, 1);
    this._highCoder.Encode(paramEncoder, i - 8);
  }

  public void Init(int paramInt)
  {
    com.badlogic.gdx.utils.compression.rangecoder.Encoder.InitBitModels(this._choice);
    for (int i = 0; i < paramInt; i++)
    {
      this._lowCoder[i].Init();
      this._midCoder[i].Init();
    }
    this._highCoder.Init();
  }

  public void SetPrices(int paramInt1, int paramInt2, int[] paramArrayOfInt, int paramInt3)
  {
    int i = 0;
    int j = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._choice[0]);
    int k = com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._choice[0]);
    int m = k + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice0(this._choice[1]);
    int n = k + com.badlogic.gdx.utils.compression.rangecoder.Encoder.GetPrice1(this._choice[1]);
    if (i < 8)
      if (i < paramInt2);
    while (true)
    {
      return;
      paramArrayOfInt[(paramInt3 + i)] = (j + this._lowCoder[paramInt1].GetPrice(i));
      i++;
      break;
      do
      {
        paramArrayOfInt[(paramInt3 + i)] = (m + this._midCoder[paramInt1].GetPrice(i - 8));
        i++;
        if (i >= 16)
          break;
      }
      while (i < paramInt2);
      return;
      while (i < paramInt2)
      {
        paramArrayOfInt[(paramInt3 + i)] = (n + this._highCoder.GetPrice(-8 + (i - 8)));
        i++;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Encoder.LenEncoder
 * JD-Core Version:    0.6.2
 */