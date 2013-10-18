package com.google.a.c;

import java.util.Collection;
import java.util.EnumSet;

final class db<E extends Enum<E>> extends du<E>
{
  private final transient EnumSet<E> a;
  private transient int b;

  private db(EnumSet<E> paramEnumSet)
  {
    this.a = paramEnumSet;
  }

  static <E extends Enum<E>> du<E> a(EnumSet<E> paramEnumSet)
  {
    switch (paramEnumSet.size())
    {
    default:
      return new db(paramEnumSet);
    case 0:
      return bi.a;
    case 1:
    }
    return du.b(ee.a(paramEnumSet));
  }

  public final lj<E> b()
  {
    return eg.a(this.a.iterator());
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.contains(paramObject);
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    return this.a.containsAll(paramCollection);
  }

  final boolean e()
  {
    return false;
  }

  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (this.a.equals(paramObject));
  }

  public final int hashCode()
  {
    int i = this.b;
    if (i == 0)
    {
      i = this.a.hashCode();
      this.b = i;
    }
    return i;
  }

  public final boolean isEmpty()
  {
    return this.a.isEmpty();
  }

  public final int size()
  {
    return this.a.size();
  }

  public final String toString()
  {
    return this.a.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.db
 * JD-Core Version:    0.6.2
 */