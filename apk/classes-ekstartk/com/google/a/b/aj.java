package com.google.a.b;

import java.util.Iterator;
import java.util.concurrent.ConcurrentMap;

final class aj extends o<K, V>.r<K>
{
  aj(ConcurrentMap<?, ?> paramConcurrentMap)
  {
    super(paramConcurrentMap, localConcurrentMap);
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }

  public final Iterator<K> iterator()
  {
    return new ai(this.c);
  }

  public final boolean remove(Object paramObject)
  {
    return this.a.remove(paramObject) != null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.aj
 * JD-Core Version:    0.6.2
 */