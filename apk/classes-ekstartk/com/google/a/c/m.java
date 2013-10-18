package com.google.a.c;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

final class m extends f<K, V>.g
  implements SortedMap<K, Collection<V>>
{
  SortedSet<K> c;

  m(SortedMap<K, Collection<V>> paramSortedMap)
  {
    super(paramSortedMap, localMap);
  }

  private SortedSet<K> c()
  {
    return new n(this.d, (SortedMap)this.a);
  }

  public final Comparator<? super K> comparator()
  {
    return ((SortedMap)this.a).comparator();
  }

  public final K firstKey()
  {
    return ((SortedMap)this.a).firstKey();
  }

  public final SortedMap<K, Collection<V>> headMap(K paramK)
  {
    return new m(this.d, ((SortedMap)this.a).headMap(paramK));
  }

  public final K lastKey()
  {
    return ((SortedMap)this.a).lastKey();
  }

  public final SortedMap<K, Collection<V>> subMap(K paramK1, K paramK2)
  {
    return new m(this.d, ((SortedMap)this.a).subMap(paramK1, paramK2));
  }

  public final SortedMap<K, Collection<V>> tailMap(K paramK)
  {
    return new m(this.d, ((SortedMap)this.a).tailMap(paramK));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.m
 * JD-Core Version:    0.6.2
 */