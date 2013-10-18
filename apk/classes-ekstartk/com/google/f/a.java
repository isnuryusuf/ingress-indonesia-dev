package com.google.f;

import java.io.IOException;

public abstract class a
  implements i
{
  public final byte[] a()
  {
    byte[] arrayOfByte;
    try
    {
      arrayOfByte = new byte[b()];
      d locald = d.a(arrayOfByte, arrayOfByte.length);
      a(locald);
      if (locald.a() != 0)
        throw new IllegalStateException("Did not write as much data as expected.");
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", localIOException);
    }
    return arrayOfByte;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.f.a
 * JD-Core Version:    0.6.2
 */