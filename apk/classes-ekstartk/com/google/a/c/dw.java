package com.google.a.c;

import java.util.Comparator;

final class dw<E> extends ij<E>
  implements jn<E>
{
  dw(dz<E> paramdz, dc<E> paramdc)
  {
    super(paramdz, paramdc);
  }

  final dc<E> b(int paramInt1, int paramInt2)
  {
    return new it(super.b(paramInt1, paramInt2), comparator()).a();
  }

  public final Comparator<? super E> comparator()
  {
    return ((dz)super.c()).comparator();
  }

  public final boolean contains(Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }

  public final int indexOf(Object paramObject)
  {
    int i = ((dz)super.c()).a(paramObject);
    if ((i >= 0) && (get(i).equals(paramObject)))
      return i;
    return -1;
  }

  public final int lastIndexOf(Object paramObject)
  {
    return indexOf(paramObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dw
 * JD-Core Version:    0.6.2
 */