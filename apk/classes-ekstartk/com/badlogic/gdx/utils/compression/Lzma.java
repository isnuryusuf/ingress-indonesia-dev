package com.badlogic.gdx.utils.compression;

import com.badlogic.gdx.utils.compression.lzma.Decoder;
import com.badlogic.gdx.utils.compression.lzma.Encoder;
import java.io.InputStream;
import java.io.OutputStream;

public class Lzma
{
  public static void compress(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    int i = 0;
    Lzma.CommandLine localCommandLine = new Lzma.CommandLine();
    if (localCommandLine.Eos);
    for (boolean bool1 = true; ; bool1 = false)
    {
      Encoder localEncoder = new Encoder();
      if (!localEncoder.SetAlgorithm(localCommandLine.Algorithm))
        throw new RuntimeException("Incorrect compression mode");
      if (!localEncoder.SetDictionarySize(localCommandLine.DictionarySize))
        throw new RuntimeException("Incorrect dictionary size");
      if (!localEncoder.SetNumFastBytes(localCommandLine.Fb))
        throw new RuntimeException("Incorrect -fb value");
      if (!localEncoder.SetMatchFinder(localCommandLine.MatchFinder))
        throw new RuntimeException("Incorrect -mf value");
      if (!localEncoder.SetLcLpPb(localCommandLine.Lc, localCommandLine.Lp, localCommandLine.Pb))
        throw new RuntimeException("Incorrect -lc or -lp or -pb value");
      localEncoder.SetEndMarkerMode(bool1);
      localEncoder.WriteCoderProperties(paramOutputStream);
      long l;
      if (bool1)
        l = -1L;
      while (i < 8)
      {
        paramOutputStream.write(0xFF & (int)(l >>> i * 8));
        i++;
        continue;
        l = paramInputStream.available();
        boolean bool2 = l < 0L;
        i = 0;
        if (!bool2)
        {
          l = -1L;
          i = 0;
        }
      }
      localEncoder.Code(paramInputStream, paramOutputStream, -1L, -1L, null);
      return;
    }
  }

  public static void decompress(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[5];
    if (paramInputStream.read(arrayOfByte, 0, 5) != 5)
      throw new RuntimeException("input .lzma file is too short");
    Decoder localDecoder = new Decoder();
    if (!localDecoder.SetDecoderProperties(arrayOfByte))
      throw new RuntimeException("Incorrect stream properties");
    long l = 0L;
    while (i < 8)
    {
      int j = paramInputStream.read();
      if (j < 0)
        throw new RuntimeException("Can't read stream size");
      l |= j << i * 8;
      i++;
    }
    if (!localDecoder.Code(paramInputStream, paramOutputStream, l))
      throw new RuntimeException("Error in data stream");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.compression.Lzma
 * JD-Core Version:    0.6.2
 */