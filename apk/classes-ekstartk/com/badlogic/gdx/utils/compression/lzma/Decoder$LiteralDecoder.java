package com.badlogic.gdx.utils.compression.lzma;

class Decoder$LiteralDecoder
{
  Decoder.LiteralDecoder.Decoder2[] m_Coders;
  int m_NumPosBits;
  int m_NumPrevBits;
  int m_PosMask;

  Decoder$LiteralDecoder(Decoder paramDecoder)
  {
  }

  public void Create(int paramInt1, int paramInt2)
  {
    if ((this.m_Coders != null) && (this.m_NumPrevBits == paramInt2) && (this.m_NumPosBits == paramInt1));
    while (true)
    {
      return;
      this.m_NumPosBits = paramInt1;
      this.m_PosMask = (-1 + (1 << paramInt1));
      this.m_NumPrevBits = paramInt2;
      int i = 1 << this.m_NumPrevBits + this.m_NumPosBits;
      this.m_Coders = new Decoder.LiteralDecoder.Decoder2[i];
      for (int j = 0; j < i; j++)
        this.m_Coders[j] = new Decoder.LiteralDecoder.Decoder2(this);
    }
  }

  Decoder.LiteralDecoder.Decoder2 GetDecoder(int paramInt, byte paramByte)
  {
    return this.m_Coders[(((paramInt & this.m_PosMask) << this.m_NumPrevBits) + ((paramByte & 0xFF) >>> 8 - this.m_NumPrevBits))];
  }

  public void Init()
  {
    int i = 1 << this.m_NumPrevBits + this.m_NumPosBits;
    for (int j = 0; j < i; j++)
      this.m_Coders[j].Init();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Decoder.LiteralDecoder
 * JD-Core Version:    0.6.2
 */