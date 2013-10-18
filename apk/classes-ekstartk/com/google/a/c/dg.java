package com.google.a.c;

import com.google.a.a.an;

final class dg extends dc<E>
{
  final transient int a;
  final transient int b;

  dg(dc paramdc, int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public final dc<E> a(int paramInt1, int paramInt2)
  {
    an.a(paramInt1, paramInt2, this.b);
    return this.c.a(paramInt1 + this.a, paramInt2 + this.a);
  }

  final boolean e()
  {
    return true;
  }

  public final E get(int paramInt)
  {
    an.a(paramInt, this.b);
    return this.c.get(paramInt + this.a);
  }

  public final int size()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dg
 * JD-Core Version:    0.6.2
 */