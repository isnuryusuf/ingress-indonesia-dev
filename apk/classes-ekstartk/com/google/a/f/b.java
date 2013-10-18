package com.google.a.f;

import com.google.a.a.an;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public final class b
{
  private static final OutputStream a = new c();

  public static long a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    an.a(paramInputStream);
    an.a(paramOutputStream);
    byte[] arrayOfByte = new byte[4096];
    int i;
    for (long l = 0L; ; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    return l;
  }

  public static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.f.b
 * JD-Core Version:    0.6.2
 */