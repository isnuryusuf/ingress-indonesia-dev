package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class j extends hl<K, Collection<V>>
{
  j(Map<K, Collection<V>> paramMap)
  {
    super(localMap);
  }

  public void clear()
  {
    eg.f(iterator());
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return this.c.keySet().containsAll(paramCollection);
  }

  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || (this.c.keySet().equals(paramObject));
  }

  public int hashCode()
  {
    return this.c.keySet().hashCode();
  }

  public Iterator<K> iterator()
  {
    return new k(this, this.c.entrySet().iterator());
  }

  public boolean remove(Object paramObject)
  {
    Collection localCollection = (Collection)this.c.remove(paramObject);
    int j;
    if (localCollection != null)
    {
      j = localCollection.size();
      localCollection.clear();
      f.b(this.a, j);
    }
    for (int i = j; ; i = 0)
      return i > 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.j
 * JD-Core Version:    0.6.2
 */