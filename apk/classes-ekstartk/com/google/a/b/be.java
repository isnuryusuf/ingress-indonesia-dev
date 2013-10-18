package com.google.a.b;

import java.util.Iterator;
import java.util.concurrent.ConcurrentMap;

final class be extends o<K, V>.r<V>
{
  be(ConcurrentMap<?, ?> paramConcurrentMap)
  {
    super(paramConcurrentMap, localConcurrentMap);
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.containsValue(paramObject);
  }

  public final Iterator<V> iterator()
  {
    return new bc(this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.be
 * JD-Core Version:    0.6.2
 */