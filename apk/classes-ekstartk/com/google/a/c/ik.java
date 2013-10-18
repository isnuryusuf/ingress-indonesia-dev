package com.google.a.c;

import com.google.a.a.an;

final class ik<E> extends dc<E>
{
  private final transient int a;
  private final transient int b;
  private final transient Object[] c;

  ik(Object[] paramArrayOfObject)
  {
    this(paramArrayOfObject, 0, paramArrayOfObject.length);
  }

  private ik(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramArrayOfObject;
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    System.arraycopy(this.c, this.a, paramArrayOfObject, paramInt, this.b);
    return paramInt + this.b;
  }

  public final lk<E> a(int paramInt)
  {
    return eg.a(this.c, this.a, this.b, paramInt);
  }

  final dc<E> b(int paramInt1, int paramInt2)
  {
    return new ik(this.c, paramInt1 + this.a, paramInt2 - paramInt1);
  }

  final boolean e()
  {
    return this.b != this.c.length;
  }

  public final E get(int paramInt)
  {
    an.a(paramInt, this.b);
    return this.c[(paramInt + this.a)];
  }

  public final int indexOf(Object paramObject)
  {
    if (paramObject == null)
    {
      i = -1;
      return i;
    }
    for (int i = 0; ; i++)
    {
      if (i >= this.b)
        break label42;
      if (this.c[(i + this.a)].equals(paramObject))
        break;
    }
    label42: return -1;
  }

  public final int lastIndexOf(Object paramObject)
  {
    if (paramObject == null);
    while (true)
    {
      return -1;
      for (int i = -1 + this.b; i >= 0; i--)
        if (this.c[(i + this.a)].equals(paramObject))
          return i;
    }
  }

  public final int size()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ik
 * JD-Core Version:    0.6.2
 */