package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class i
  implements Iterator<Map.Entry<K, Collection<V>>>
{
  final Iterator<Map.Entry<K, Collection<V>>> a = this.c.a.entrySet().iterator();
  Collection<V> b;

  i(g paramg)
  {
  }

  public final boolean hasNext()
  {
    return this.a.hasNext();
  }

  public final void remove()
  {
    this.a.remove();
    f.b(this.c.b, this.b.size());
    this.b.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.i
 * JD-Core Version:    0.6.2
 */