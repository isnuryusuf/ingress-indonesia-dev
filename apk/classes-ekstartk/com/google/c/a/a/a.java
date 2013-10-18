package com.google.c.a.a;

import java.io.InputStream;

public final class a extends InputStream
{
  private int a;
  private byte[] b;
  private int c;
  private int d;
  private InputStream e;

  public a(InputStream paramInputStream, int paramInt)
  {
    this.e = paramInputStream;
    this.a = paramInt;
    this.b = new byte[Math.min(paramInt, 4096)];
  }

  private boolean a()
  {
    if (this.a <= 0)
      return false;
    if (this.c >= this.d)
    {
      this.d = this.e.read(this.b, 0, Math.min(this.a, this.b.length));
      if (this.d <= 0)
      {
        this.a = 0;
        return false;
      }
      this.c = 0;
    }
    return true;
  }

  public final int available()
  {
    return this.d - this.c;
  }

  public final int read()
  {
    if (!a())
      return -1;
    this.a = (-1 + this.a);
    byte[] arrayOfByte = this.b;
    int i = this.c;
    this.c = (i + 1);
    return 0xFF & arrayOfByte[i];
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!a())
      return -1;
    int i = Math.min(paramInt2, this.d - this.c);
    System.arraycopy(this.b, this.c, paramArrayOfByte, paramInt1, i);
    this.c = (i + this.c);
    this.a -= i;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.a
 * JD-Core Version:    0.6.2
 */