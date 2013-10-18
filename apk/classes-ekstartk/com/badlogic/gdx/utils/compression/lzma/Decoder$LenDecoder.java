package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.utils.compression.rangecoder.BitTreeDecoder;

class Decoder$LenDecoder
{
  short[] m_Choice = new short[2];
  BitTreeDecoder m_HighCoder = new BitTreeDecoder(8);
  BitTreeDecoder[] m_LowCoder = new BitTreeDecoder[16];
  BitTreeDecoder[] m_MidCoder = new BitTreeDecoder[16];
  int m_NumPosStates = 0;

  Decoder$LenDecoder(Decoder paramDecoder)
  {
  }

  public void Create(int paramInt)
  {
    while (this.m_NumPosStates < paramInt)
    {
      this.m_LowCoder[this.m_NumPosStates] = new BitTreeDecoder(3);
      this.m_MidCoder[this.m_NumPosStates] = new BitTreeDecoder(3);
      this.m_NumPosStates = (1 + this.m_NumPosStates);
    }
  }

  public int Decode(com.badlogic.gdx.utils.compression.rangecoder.Decoder paramDecoder, int paramInt)
  {
    if (paramDecoder.DecodeBit(this.m_Choice, 0) == 0)
      return this.m_LowCoder[paramInt].Decode(paramDecoder);
    if (paramDecoder.DecodeBit(this.m_Choice, 1) == 0)
      return 8 + this.m_MidCoder[paramInt].Decode(paramDecoder);
    return 8 + (8 + this.m_HighCoder.Decode(paramDecoder));
  }

  public void Init()
  {
    com.badlogic.gdx.utils.compression.rangecoder.Decoder.InitBitModels(this.m_Choice);
    for (int i = 0; i < this.m_NumPosStates; i++)
    {
      this.m_LowCoder[i].Init();
      this.m_MidCoder[i].Init();
    }
    this.m_HighCoder.Init();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Decoder.LenDecoder
 * JD-Core Version:    0.6.2
 */