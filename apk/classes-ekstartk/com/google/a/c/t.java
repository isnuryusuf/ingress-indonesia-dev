package com.google.a.c;

import java.util.Comparator;
import java.util.SortedSet;

final class t extends f<K, V>.o
  implements SortedSet<V>
{
  t(K paramK, SortedSet<V> paramSortedSet, f<K, V>.o paramf)
  {
    super(paramK, paramSortedSet, paramf, localo);
  }

  public final Comparator<? super V> comparator()
  {
    return ((SortedSet)this.c).comparator();
  }

  public final V first()
  {
    a();
    return ((SortedSet)this.c).first();
  }

  public final SortedSet<V> headSet(V paramV)
  {
    a();
    f localf = this.a;
    Object localObject = this.b;
    SortedSet localSortedSet = ((SortedSet)this.c).headSet(paramV);
    if (this.d == null);
    while (true)
    {
      return new t(localf, localObject, localSortedSet, this);
      this = this.d;
    }
  }

  public final V last()
  {
    a();
    return ((SortedSet)this.c).last();
  }

  public final SortedSet<V> subSet(V paramV1, V paramV2)
  {
    a();
    f localf = this.a;
    Object localObject = this.b;
    SortedSet localSortedSet = ((SortedSet)this.c).subSet(paramV1, paramV2);
    if (this.d == null);
    while (true)
    {
      return new t(localf, localObject, localSortedSet, this);
      this = this.d;
    }
  }

  public final SortedSet<V> tailSet(V paramV)
  {
    a();
    f localf = this.a;
    Object localObject = this.b;
    SortedSet localSortedSet = ((SortedSet)this.c).tailSet(paramV);
    if (this.d == null);
    while (true)
    {
      return new t(localf, localObject, localSortedSet, this);
      this = this.d;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.t
 * JD-Core Version:    0.6.2
 */