package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

final class h extends hj<K, Collection<V>>
{
  h(g paramg)
  {
  }

  final Map<K, Collection<V>> a()
  {
    return this.a;
  }

  public final boolean contains(Object paramObject)
  {
    return as.a(this.a.a.entrySet(), paramObject);
  }

  public final Iterator<Map.Entry<K, Collection<V>>> iterator()
  {
    return new i(this.a);
  }

  public final boolean remove(Object paramObject)
  {
    if (!contains(paramObject))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    f.a(this.a.b, localEntry.getKey());
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.h
 * JD-Core Version:    0.6.2
 */