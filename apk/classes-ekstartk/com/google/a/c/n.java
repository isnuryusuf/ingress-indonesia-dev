package com.google.a.c;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

final class n extends f<K, V>.j
  implements SortedSet<K>
{
  n(SortedMap<K, Collection<V>> paramSortedMap)
  {
    super(paramSortedMap, localMap);
  }

  public final Comparator<? super K> comparator()
  {
    return ((SortedMap)this.c).comparator();
  }

  public final K first()
  {
    return ((SortedMap)this.c).firstKey();
  }

  public final SortedSet<K> headSet(K paramK)
  {
    return new n(this.b, ((SortedMap)this.c).headMap(paramK));
  }

  public final K last()
  {
    return ((SortedMap)this.c).lastKey();
  }

  public final SortedSet<K> subSet(K paramK1, K paramK2)
  {
    return new n(this.b, ((SortedMap)this.c).subMap(paramK1, paramK2));
  }

  public final SortedSet<K> tailSet(K paramK)
  {
    return new n(this.b, ((SortedMap)this.c).tailMap(paramK));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.n
 * JD-Core Version:    0.6.2
 */