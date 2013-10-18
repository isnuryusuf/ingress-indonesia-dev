package com.google.a.c;

final class ip<E> extends du<E>
{
  final transient Object[] a;
  private final Object[] b;
  private final transient int c;
  private final transient int d;

  ip(Object[] paramArrayOfObject1, int paramInt1, Object[] paramArrayOfObject2, int paramInt2)
  {
    this.b = paramArrayOfObject1;
    this.a = paramArrayOfObject2;
    this.c = paramInt2;
    this.d = paramInt1;
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    System.arraycopy(this.b, 0, paramArrayOfObject, paramInt, this.b.length);
    return paramInt + this.b.length;
  }

  public final lj<E> b()
  {
    return eg.a(this.b);
  }

  final boolean c_()
  {
    return true;
  }

  public final boolean contains(Object paramObject)
  {
    if (paramObject == null)
      return false;
    for (int i = co.a(paramObject.hashCode()); ; i++)
    {
      Object localObject = this.a[(i & this.c)];
      if (localObject == null)
        return false;
      if (localObject.equals(paramObject))
        return true;
    }
  }

  final boolean e()
  {
    return false;
  }

  final dc<E> f()
  {
    return new ij(this, this.b);
  }

  public final int hashCode()
  {
    return this.d;
  }

  public final int size()
  {
    return this.b.length;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ip
 * JD-Core Version:    0.6.2
 */