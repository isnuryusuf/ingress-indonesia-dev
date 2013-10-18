package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.utils.compression.rangecoder.Encoder;

class Encoder$LiteralEncoder$Encoder2
{
  short[] m_Encoders = new short[768];

  Encoder$LiteralEncoder$Encoder2(Encoder.LiteralEncoder paramLiteralEncoder)
  {
  }

  public void Encode(Encoder paramEncoder, byte paramByte)
  {
    int i = 1;
    for (byte b = 7; b >= 0; b--)
    {
      int j = 0x1 & paramByte >> b;
      paramEncoder.Encode(this.m_Encoders, i, j);
      i = j | i << 1;
    }
  }

  public void EncodeMatched(Encoder paramEncoder, byte paramByte1, byte paramByte2)
  {
    byte b = 7;
    int i = 1;
    int j = 1;
    int k;
    int i2;
    int i3;
    label58: int m;
    if (b >= 0)
    {
      k = 0x1 & paramByte2 >> b;
      if (j == 0)
        break label104;
      int i1 = 0x1 & paramByte1 >> b;
      i2 = i + (i1 + 1 << 8);
      if (i1 == k)
      {
        i3 = 1;
        m = i3;
      }
    }
    for (int n = i2; ; n = i)
    {
      paramEncoder.Encode(this.m_Encoders, n, k);
      i = k | i << 1;
      b--;
      j = m;
      break;
      i3 = 0;
      break label58;
      return;
      label104: m = j;
    }
  }

  public int GetPrice(boolean paramBoolean, byte paramByte1, byte paramByte2)
  {
    int i = 1;
    byte b = 7;
    int j = 0;
    if (paramBoolean);
    while (true)
    {
      if (b >= 0)
      {
        int m = 0x1 & paramByte1 >> b;
        int n = 0x1 & paramByte2 >> b;
        j += Encoder.GetPrice(this.m_Encoders[(i + (m + 1 << 8))], n);
        i = n | i << 1;
        if (m != n)
          b--;
      }
      else
      {
        while (b >= 0)
        {
          int k = 0x1 & paramByte2 >> b;
          j += Encoder.GetPrice(this.m_Encoders[i], k);
          i = k | i << 1;
          b--;
        }
      }
      b--;
    }
    return j;
  }

  public void Init()
  {
    Encoder.InitBitModels(this.m_Encoders);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Encoder.LiteralEncoder.Encoder2
 * JD-Core Version:    0.6.2
 */