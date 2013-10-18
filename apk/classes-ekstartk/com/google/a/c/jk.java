package com.google.a.c;

import com.google.a.a.an;
import java.util.List;

final class jk<E> extends dc<E>
{
  final transient E a;

  jk(E paramE)
  {
    this.a = an.a(paramE);
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    paramArrayOfObject[paramInt] = this.a;
    return paramInt + 1;
  }

  public final dc<E> a(int paramInt1, int paramInt2)
  {
    an.a(paramInt1, paramInt2, 1);
    if (paramInt1 == paramInt2)
      this = dc.d();
    return this;
  }

  public final lj<E> b()
  {
    return eg.a(this.a);
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.equals(paramObject);
  }

  final boolean e()
  {
    return false;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    List localList;
    do
    {
      return true;
      if (!(paramObject instanceof List))
        break;
      localList = (List)paramObject;
    }
    while ((localList.size() == 1) && (this.a.equals(localList.get(0))));
    return false;
    return false;
  }

  public final dc<E> g()
  {
    return this;
  }

  public final E get(int paramInt)
  {
    an.a(paramInt, 1);
    return this.a;
  }

  public final int hashCode()
  {
    return 31 + this.a.hashCode();
  }

  public final int indexOf(Object paramObject)
  {
    if (this.a.equals(paramObject))
      return 0;
    return -1;
  }

  public final boolean isEmpty()
  {
    return false;
  }

  public final int lastIndexOf(Object paramObject)
  {
    return indexOf(paramObject);
  }

  public final int size()
  {
    return 1;
  }

  public final String toString()
  {
    String str = this.a.toString();
    return 2 + str.length() + '[' + str + ']';
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jk
 * JD-Core Version:    0.6.2
 */