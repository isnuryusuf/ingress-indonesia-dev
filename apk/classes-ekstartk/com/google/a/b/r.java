package com.google.a.b;

import java.util.AbstractSet;
import java.util.concurrent.ConcurrentMap;

abstract class r<T> extends AbstractSet<T>
{
  final ConcurrentMap<?, ?> a;

  r(ConcurrentMap<?, ?> paramConcurrentMap)
  {
    Object localObject;
    this.a = localObject;
  }

  public void clear()
  {
    this.a.clear();
  }

  public boolean isEmpty()
  {
    return this.a.isEmpty();
  }

  public int size()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.r
 * JD-Core Version:    0.6.2
 */