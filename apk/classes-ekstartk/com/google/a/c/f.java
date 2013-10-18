package com.google.a.c;

import com.google.a.a.an;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

abstract class f<K, V> extends z<K, V>
  implements Serializable
{
  private transient Map<K, Collection<V>> a;
  private transient int b;

  protected f(Map<K, Collection<V>> paramMap)
  {
    an.a(paramMap.isEmpty());
    this.a = paramMap;
  }

  private List<V> a(K paramK, List<V> paramList, f<K, V>.o paramf)
  {
    if ((paramList instanceof RandomAccess))
      return new l(this, paramK, paramList, paramf);
    return new q(this, paramK, paramList, paramf);
  }

  private static Collection<V> b(Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet))
      return Collections.unmodifiableSortedSet((SortedSet)paramCollection);
    if ((paramCollection instanceof Set))
      return Collections.unmodifiableSet((Set)paramCollection);
    if ((paramCollection instanceof List))
      return Collections.unmodifiableList((List)paramCollection);
    return Collections.unmodifiableCollection(paramCollection);
  }

  final Collection<V> a(K paramK, Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet))
      return new t(this, paramK, (SortedSet)paramCollection, null);
    if ((paramCollection instanceof Set))
      return new s(this, paramK, (Set)paramCollection);
    if ((paramCollection instanceof List))
      return a(paramK, (List)paramCollection, null);
    return new o(this, paramK, paramCollection, null);
  }

  public boolean a(K paramK, V paramV)
  {
    Collection localCollection1 = (Collection)this.a.get(paramK);
    if (localCollection1 == null)
    {
      Collection localCollection2 = c();
      if (localCollection2.add(paramV))
      {
        this.b = (1 + this.b);
        this.a.put(paramK, localCollection2);
        return true;
      }
      throw new AssertionError("New Collection violated the Collection spec");
    }
    if (localCollection1.add(paramV))
    {
      this.b = (1 + this.b);
      return true;
    }
    return false;
  }

  abstract Collection<V> c();

  public Collection<V> c(K paramK)
  {
    Collection localCollection = (Collection)this.a.get(paramK);
    if (localCollection == null)
      localCollection = c();
    return a(paramK, localCollection);
  }

  Collection<V> d()
  {
    return b(c());
  }

  public Collection<V> d(Object paramObject)
  {
    Collection localCollection1 = (Collection)this.a.remove(paramObject);
    if (localCollection1 == null)
      return d();
    Collection localCollection2 = c();
    localCollection2.addAll(localCollection1);
    this.b -= localCollection1.size();
    localCollection1.clear();
    return b(localCollection2);
  }

  public void e()
  {
    Iterator localIterator = this.a.values().iterator();
    while (localIterator.hasNext())
      ((Collection)localIterator.next()).clear();
    this.a.clear();
    this.b = 0;
  }

  final Set<K> f()
  {
    if ((this.a instanceof SortedMap))
      return new n(this, (SortedMap)this.a);
    return new j(this, this.a);
  }

  final Map<K, Collection<V>> g()
  {
    if ((this.a instanceof SortedMap))
      return new m(this, (SortedMap)this.a);
    return new g(this, this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.f
 * JD-Core Version:    0.6.2
 */