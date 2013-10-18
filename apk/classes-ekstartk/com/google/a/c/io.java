package com.google.a.c;

import java.util.Map.Entry;

final class io<E> extends dq<E>
{
  private final transient dh<E, Integer> a;
  private final transient int b;

  io(dh<E, Integer> paramdh)
  {
    this.a = paramdh;
    this.b = 0;
  }

  public final int a(Object paramObject)
  {
    Integer localInteger = (Integer)this.a.get(paramObject);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  final hu<E> a(int paramInt)
  {
    Map.Entry localEntry = (Map.Entry)this.a.f().a().get(paramInt);
    return hv.a(localEntry.getKey(), ((Integer)localEntry.getValue()).intValue());
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }

  final boolean e()
  {
    return this.a.b();
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }

  public final int size()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.io
 * JD-Core Version:    0.6.2
 */