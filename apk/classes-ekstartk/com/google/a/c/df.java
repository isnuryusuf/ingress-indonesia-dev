package com.google.a.c;

import com.google.a.a.an;

final class df<E> extends dc<E>
{
  private final transient dc<E> a;
  private final transient int b;

  df(dc<E> paramdc)
  {
    this.a = paramdc;
    this.b = paramdc.size();
  }

  private int b(int paramInt)
  {
    return -1 + this.b - paramInt;
  }

  public final dc<E> a(int paramInt1, int paramInt2)
  {
    an.a(paramInt1, paramInt2, this.b);
    return this.a.a(this.b - paramInt2, this.b - paramInt1).g();
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.contains(paramObject);
  }

  final boolean e()
  {
    return this.a.e();
  }

  public final dc<E> g()
  {
    return this.a;
  }

  public final E get(int paramInt)
  {
    an.a(paramInt, this.b);
    return this.a.get(b(paramInt));
  }

  public final int indexOf(Object paramObject)
  {
    int i = this.a.lastIndexOf(paramObject);
    if (i >= 0)
      return b(i);
    return -1;
  }

  public final int lastIndexOf(Object paramObject)
  {
    int i = this.a.indexOf(paramObject);
    if (i >= 0)
      return b(i);
    return -1;
  }

  public final int size()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.df
 * JD-Core Version:    0.6.2
 */