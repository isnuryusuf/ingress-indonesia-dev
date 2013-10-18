package com.nianticproject.ingress.common.c;

import com.google.a.a.an;
import com.nianticproject.ingress.common.b.c;
import java.io.IOException;
import java.io.InputStream;

public final class bm
{
  private final ba a;
  private int b;
  private int c;
  private int d;
  private int e;
  private byte[] f;
  private byte[] g;

  public bm(ba paramba)
  {
    this.a = paramba;
    InputStream localInputStream;
    try
    {
      String str1 = this.a.b();
      String str2 = str1.substring(0, str1.lastIndexOf('.'));
      String str3 = "sounds/" + str2 + ".smf";
      localInputStream = c.d(str3);
      if (a(localInputStream) > 1)
        throw new IOException("spectrogaph version incompatible for " + str3);
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
    this.d = a(localInputStream);
    this.b = a(localInputStream);
    this.c = a(localInputStream);
    this.e = (this.c / this.b);
    int i = this.d * this.e;
    this.f = new byte[i];
    localInputStream.read(this.f, 0, i);
    localInputStream.close();
  }

  private static int a(InputStream paramInputStream)
  {
    return paramInputStream.read() | paramInputStream.read() << 8 | paramInputStream.read() << 16 | paramInputStream.read() << 24;
  }

  public final int a()
  {
    return this.d;
  }

  public final byte[] a(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt >= 0)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramInt > this.c)
        break label99;
    }
    while (true)
    {
      an.a(bool1);
      int i = paramInt / this.b;
      if (i >= this.e)
        i = -1 + this.e;
      if (this.g == null)
        this.g = new byte[this.d];
      System.arraycopy(this.f, i * this.d, this.g, 0, this.d);
      return this.g;
      bool2 = false;
      break;
      label99: bool1 = false;
    }
  }

  public final int b()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.bm
 * JD-Core Version:    0.6.2
 */