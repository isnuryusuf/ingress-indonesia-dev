package com.google.a.c;

import java.util.AbstractCollection;
import java.util.Iterator;

final class gv extends AbstractCollection<V>
{
  gv(fi paramfi)
  {
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.containsValue(paramObject);
  }

  public final boolean isEmpty()
  {
    return this.a.isEmpty();
  }

  public final Iterator<V> iterator()
  {
    return new gt(this.a);
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gv
 * JD-Core Version:    0.6.2
 */