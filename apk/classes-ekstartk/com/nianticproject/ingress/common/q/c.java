package com.nianticproject.ingress.common.q;

import com.google.a.a.an;

public final class c
  implements Comparable<c>
{
  private final int a;
  private final int b;
  private final int c;
  private final long d;
  private a e;
  private final int f;

  private c(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = a(paramInt1, paramInt2, paramInt3);
    this.f = (paramInt3 + 31 * (paramInt2 + paramInt1 * 31));
  }

  public static long a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 >= 1073741824) || (paramInt2 < 0) || (paramInt2 >= 1073741824))
      throw new IllegalArgumentException();
    return a(17, paramInt1 >> 13, paramInt2 >> 13);
  }

  public static long a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = -1 + (1 << paramInt1);
    if ((paramInt1 < 0) || (paramInt1 > 22) || (paramInt2 < 0) || (paramInt2 > i) || (paramInt3 < 0) || (paramInt3 > i))
      throw new IllegalArgumentException();
    return 0x0 | (paramInt1 << 58 | paramInt2 << 0 | paramInt3 << 23);
  }

  public static c a(long paramLong)
  {
    if ((0x0 & paramLong) == 96053335802511360L);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Invalid tile index");
      return new c((int)(0x3F & paramLong >> 58), (int)(0x7FFFFF & paramLong >> 0), (int)(0x7FFFFF & paramLong >> 23));
    }
  }

  public static int b(long paramLong)
  {
    if ((0x0 & paramLong) == 96053335802511360L);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Invalid tile index");
      return (int)(0x7FFFFF & paramLong >> 0);
    }
  }

  public static int c(long paramLong)
  {
    if ((0x0 & paramLong) == 96053335802511360L);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Invalid tile index");
      return (int)(0x7FFFFF & paramLong >> 23);
    }
  }

  public final int a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.c;
  }

  public final long d()
  {
    return this.d;
  }

  public final a e()
  {
    if (this.e == null)
    {
      int i = this.a;
      int j = this.b << 30 - i;
      int k = this.a;
      this.e = new a(j, this.c << 30 - k);
    }
    return this.e;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof c)) && (this.d == ((c)paramObject).d);
  }

  public final int hashCode()
  {
    return this.f;
  }

  public final String toString()
  {
    return "[" + this.a + "," + this.b + "," + this.c + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.c
 * JD-Core Version:    0.6.2
 */