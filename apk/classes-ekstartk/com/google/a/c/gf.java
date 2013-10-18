package com.google.a.c;

import java.util.AbstractSet;
import java.util.Iterator;

final class gf extends AbstractSet<K>
{
  gf(fi paramfi)
  {
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }

  public final boolean isEmpty()
  {
    return this.a.isEmpty();
  }

  public final Iterator<K> iterator()
  {
    return new ge(this.a);
  }

  public final boolean remove(Object paramObject)
  {
    return this.a.remove(paramObject) != null;
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gf
 * JD-Core Version:    0.6.2
 */