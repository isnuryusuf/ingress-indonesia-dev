package com.google.a.c;

import java.util.Collection;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.Set;

final class bk<E> extends dz<E>
{
  bk(Comparator<? super E> paramComparator)
  {
    super(paramComparator);
  }

  final int a(Object paramObject)
  {
    return -1;
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    return paramInt;
  }

  public final dc<E> a()
  {
    return dc.d();
  }

  final dz<E> a(E paramE, boolean paramBoolean)
  {
    return this;
  }

  final dz<E> a(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return this;
  }

  final dz<E> b(E paramE, boolean paramBoolean)
  {
    return this;
  }

  public final lj<E> b()
  {
    return eg.a();
  }

  public final lj<E> c()
  {
    return eg.a();
  }

  public final boolean contains(Object paramObject)
  {
    return false;
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    return paramCollection.isEmpty();
  }

  final dz<E> d()
  {
    return new bk(ih.a(this.a).a());
  }

  final boolean e()
  {
    return false;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Set))
      return ((Set)paramObject).isEmpty();
    return false;
  }

  public final E first()
  {
    throw new NoSuchElementException();
  }

  public final int hashCode()
  {
    return 0;
  }

  public final boolean isEmpty()
  {
    return true;
  }

  public final E last()
  {
    throw new NoSuchElementException();
  }

  public final int size()
  {
    return 0;
  }

  public final String toString()
  {
    return "[]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bk
 * JD-Core Version:    0.6.2
 */