package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;

final class k
  implements Iterator<K>
{
  Map.Entry<K, Collection<V>> a;

  k(j paramj, Iterator paramIterator)
  {
  }

  public final boolean hasNext()
  {
    return this.b.hasNext();
  }

  public final K next()
  {
    this.a = ((Map.Entry)this.b.next());
    return this.a.getKey();
  }

  public final void remove()
  {
    if (this.a != null);
    for (boolean bool = true; ; bool = false)
    {
      eg.a(bool);
      Collection localCollection = (Collection)this.a.getValue();
      this.b.remove();
      f.b(this.c.a, localCollection.size());
      localCollection.clear();
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.k
 * JD-Core Version:    0.6.2
 */