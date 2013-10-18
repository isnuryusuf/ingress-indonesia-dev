package com.google.a.c;

class ij<E> extends cp<E>
{
  private final ct<E> a;
  private final dc<? extends E> b;

  ij(ct<E> paramct, dc<? extends E> paramdc)
  {
    this.a = paramct;
    this.b = paramdc;
  }

  ij(ct<E> paramct, Object[] paramArrayOfObject)
  {
    this(paramct, dc.a(paramArrayOfObject));
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    return this.b.a(paramArrayOfObject, paramInt);
  }

  public final lk<E> a(int paramInt)
  {
    return this.b.a(paramInt);
  }

  ct<E> c()
  {
    return this.a;
  }

  public E get(int paramInt)
  {
    return this.b.get(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ij
 * JD-Core Version:    0.6.2
 */