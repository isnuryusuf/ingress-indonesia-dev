package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class hm<K, V> extends AbstractCollection<V>
{
  final Map<K, V> a;

  hm(Map<K, V> paramMap)
  {
    this.a = ((Map)an.a(paramMap));
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
    return hc.b(this.a.entrySet().iterator());
  }

  public final boolean remove(Object paramObject)
  {
    try
    {
      boolean bool = super.remove(paramObject);
      return bool;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (ag.a(paramObject, localEntry.getValue()))
        {
          this.a.remove(localEntry.getKey());
          return true;
        }
      }
    }
    return false;
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = super.removeAll((Collection)an.a(paramCollection));
      return bool;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (paramCollection.contains(localEntry.getValue()))
          localHashSet.add(localEntry.getKey());
      }
      return this.a.keySet().removeAll(localHashSet);
    }
  }

  public final boolean retainAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = super.retainAll((Collection)an.a(paramCollection));
      return bool;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (paramCollection.contains(localEntry.getValue()))
          localHashSet.add(localEntry.getKey());
      }
      return this.a.keySet().retainAll(localHashSet);
    }
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hm
 * JD-Core Version:    0.6.2
 */