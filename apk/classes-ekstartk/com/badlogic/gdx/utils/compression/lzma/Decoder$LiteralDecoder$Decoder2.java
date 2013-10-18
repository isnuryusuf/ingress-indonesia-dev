package com.badlogic.gdx.utils.compression.lzma;

import com.badlogic.gdx.utils.compression.rangecoder.Decoder;

class Decoder$LiteralDecoder$Decoder2
{
  short[] m_Decoders = new short[768];

  Decoder$LiteralDecoder$Decoder2(Decoder.LiteralDecoder paramLiteralDecoder)
  {
  }

  public byte DecodeNormal(Decoder paramDecoder)
  {
    int i = 1;
    do
      i = i << 1 | paramDecoder.DecodeBit(this.m_Decoders, i);
    while (i < 256);
    return (byte)i;
  }

  public byte DecodeWithMatchByte(Decoder paramDecoder, byte paramByte)
  {
    int i = 1;
    do
    {
      int j = 0x1 & paramByte >> 7;
      paramByte = (byte)(paramByte << 1);
      int k = paramDecoder.DecodeBit(this.m_Decoders, i + (j + 1 << 8));
      i = k | i << 1;
      if (j != k)
        while (i < 256)
          i = i << 1 | paramDecoder.DecodeBit(this.m_Decoders, i);
    }
    while (i < 256);
    return (byte)i;
  }

  public void Init()
  {
    Decoder.InitBitModels(this.m_Decoders);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.lzma.Decoder.LiteralDecoder.Decoder2
 * JD-Core Version:    0.6.2
 */