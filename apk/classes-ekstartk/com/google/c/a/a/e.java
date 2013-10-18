package com.google.c.a.a;

import java.io.OutputStream;

public final class e extends OutputStream
{
  private byte[] a = new byte[16];
  private int[] b = new int[1];
  private int c = 0;
  private int d = 0;
  private int e = 0;

  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    for (int i = paramInt2 - paramInt3; i < paramInt1; i = paramInt2 - paramInt3)
    {
      int j = paramInt2 >> paramInt4;
      if (j <= 0)
        throw new IllegalArgumentException("Incorrect size [" + paramInt2 + "] and rightShiftAmount [" + paramInt4 + "]");
      paramInt2 += j;
    }
    return paramInt2;
  }

  private void c(int paramInt)
  {
    if (this.a.length - paramInt >= this.d)
    {
      this.c = (1 + this.c);
      return;
    }
    if (this.c >= 64)
    {
      i = 1;
      if (this.c < 128);
    }
    for (int i = 2; ; i = 0)
    {
      int j = a(paramInt, this.a.length, this.d, i);
      if (j <= this.a.length)
        break;
      byte[] arrayOfByte = new byte[j];
      System.arraycopy(this.a, 0, arrayOfByte, 0, this.d);
      this.a = arrayOfByte;
      this.c = 0;
      return;
    }
  }

  public final int a()
  {
    return this.e;
  }

  public final int a(int paramInt)
  {
    return this.b[paramInt];
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.b[paramInt1] = paramInt2;
  }

  public final void a(OutputStream paramOutputStream, int paramInt1, int paramInt2)
  {
    paramOutputStream.write(this.a, paramInt1, paramInt2);
  }

  public final int b()
  {
    return this.d;
  }

  public final void b(int paramInt)
  {
    int i = a(1, this.b.length, this.e, 0);
    if (i > this.b.length)
    {
      int[] arrayOfInt2 = new int[i];
      System.arraycopy(this.b, 0, arrayOfInt2, 0, this.e);
      this.b = arrayOfInt2;
    }
    int[] arrayOfInt1 = this.b;
    int j = this.e;
    this.e = (j + 1);
    arrayOfInt1[j] = paramInt;
  }

  public final void write(int paramInt)
  {
    c(1);
    byte[] arrayOfByte = this.a;
    int i = this.d;
    this.d = (i + 1);
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
  }

  public final void write(byte[] paramArrayOfByte)
  {
    c(paramArrayOfByte.length);
    System.arraycopy(paramArrayOfByte, 0, this.a, this.d, paramArrayOfByte.length);
    this.d += paramArrayOfByte.length;
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    c(paramInt2);
    System.arraycopy(paramArrayOfByte, paramInt1, this.a, this.d, paramInt2);
    this.d = (paramInt2 + this.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.e
 * JD-Core Version:    0.6.2
 */