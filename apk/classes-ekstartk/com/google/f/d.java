package com.google.f;

import java.io.InputStream;
import java.io.OutputStream;

public final class d
{
  private final byte[] a;
  private final int b;
  private int c;
  private final OutputStream d = null;

  private d(byte[] paramArrayOfByte, int paramInt)
  {
    this.a = paramArrayOfByte;
    this.c = 0;
    this.b = (paramInt + 0);
  }

  public static int a(int paramInt)
  {
    return 4 + e(paramInt);
  }

  public static int a(c paramc)
  {
    return g(paramc.a()) + paramc.a();
  }

  public static d a(byte[] paramArrayOfByte, int paramInt)
  {
    return new d(paramArrayOfByte, paramInt);
  }

  private void a(long paramLong)
  {
    while (true)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        d((int)paramLong);
        return;
      }
      d(0x80 | 0x7F & (int)paramLong);
      paramLong >>>= 7;
    }
  }

  public static int b(int paramInt)
  {
    return 1 + e(paramInt);
  }

  public static int b(int paramInt1, int paramInt2)
  {
    return e(paramInt1) + c(paramInt2);
  }

  public static int b(int paramInt, long paramLong)
  {
    int i = e(paramInt);
    int j;
    if ((0xFFFFFF80 & paramLong) == 0L)
      j = 1;
    while (true)
    {
      return j + i;
      if ((0xFFFFC000 & paramLong) == 0L)
        j = 2;
      else if ((0xFFE00000 & paramLong) == 0L)
        j = 3;
      else if ((0xF0000000 & paramLong) == 0L)
        j = 4;
      else if ((0x0 & paramLong) == 0L)
        j = 5;
      else if ((0x0 & paramLong) == 0L)
        j = 6;
      else if ((0x0 & paramLong) == 0L)
        j = 7;
      else if ((0x0 & paramLong) == 0L)
        j = 8;
      else if ((0x0 & paramLong) == 0L)
        j = 9;
      else
        j = 10;
    }
  }

  public static int b(int paramInt, c paramc)
  {
    return e(paramInt) + a(paramc);
  }

  public static int b(int paramInt, i parami)
  {
    int i = e(paramInt);
    int j = parami.b();
    return i + (j + g(j));
  }

  private void b()
  {
    if (this.d == null)
      throw new e();
    this.d.write(this.a, 0, this.c);
    this.c = 0;
  }

  public static int c(int paramInt)
  {
    if (paramInt >= 0)
      return g(paramInt);
    return 10;
  }

  private void c(int paramInt1, int paramInt2)
  {
    f(l.a(paramInt1, paramInt2));
  }

  private void d(int paramInt)
  {
    int i = (byte)paramInt;
    if (this.c == this.b)
      b();
    byte[] arrayOfByte = this.a;
    int j = this.c;
    this.c = (j + 1);
    arrayOfByte[j] = i;
  }

  private static int e(int paramInt)
  {
    return g(l.a(paramInt, 0));
  }

  private void f(int paramInt)
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        d(paramInt);
        return;
      }
      d(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }

  private static int g(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0)
      return 1;
    if ((paramInt & 0xFFFFC000) == 0)
      return 2;
    if ((0xFFE00000 & paramInt) == 0)
      return 3;
    if ((0xF0000000 & paramInt) == 0)
      return 4;
    return 5;
  }

  public final int a()
  {
    if (this.d == null)
      return this.b - this.c;
    throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array.");
  }

  public final void a(int paramInt, float paramFloat)
  {
    c(paramInt, 5);
    int i = Float.floatToRawIntBits(paramFloat);
    d(i & 0xFF);
    d(0xFF & i >> 8);
    d(0xFF & i >> 16);
    d(0xFF & i >> 24);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    c(paramInt1, 0);
    if (paramInt2 >= 0)
    {
      f(paramInt2);
      return;
    }
    a(paramInt2);
  }

  public final void a(int paramInt, long paramLong)
  {
    c(paramInt, 0);
    a(paramLong);
  }

  public final void a(int paramInt, c paramc)
  {
    c(paramInt, 2);
    f(paramc.a());
    int i = paramc.a();
    if (this.b - this.c >= i)
    {
      paramc.a(this.a, 0, this.c, i);
      this.c = (i + this.c);
      return;
    }
    int j = this.b - this.c;
    paramc.a(this.a, 0, this.c, j);
    int k = j + 0;
    int m = i - j;
    this.c = this.b;
    b();
    if (m <= this.b)
    {
      paramc.a(this.a, k, 0, m);
      this.c = m;
      return;
    }
    InputStream localInputStream = paramc.c();
    if (k != localInputStream.skip(k))
      throw new IllegalStateException("Skip failed? Should never happen.");
    int i1;
    int n;
    do
    {
      this.d.write(this.a, 0, i1);
      m -= i1;
      if (m <= 0)
        break;
      n = Math.min(m, this.b);
      i1 = localInputStream.read(this.a, 0, n);
    }
    while (i1 == n);
    throw new IllegalStateException("Read failed? Should never happen");
  }

  public final void a(int paramInt, i parami)
  {
    c(paramInt, 2);
    f(parami.b());
    parami.a(this);
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    c(paramInt, 0);
    int i = 0;
    if (paramBoolean)
      i = 1;
    d(i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.f.d
 * JD-Core Version:    0.6.2
 */