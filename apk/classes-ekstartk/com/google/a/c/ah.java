package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class ah<R, C, V>
  implements kr<R, C, V>
{
  private transient Set<ks<R, C, V>> a;
  private transient Collection<V> b;

  public V a(R paramR, C paramC, V paramV)
  {
    return c(paramR).put(paramC, paramV);
  }

  public Set<R> a()
  {
    return m().keySet();
  }

  public boolean a(Object paramObject)
  {
    return hc.b(m(), paramObject);
  }

  public boolean a(Object paramObject1, Object paramObject2)
  {
    Map localMap = (Map)hc.a(m(), paramObject1);
    return (localMap != null) && (hc.b(localMap, paramObject2));
  }

  public V b(Object paramObject1, Object paramObject2)
  {
    Map localMap = (Map)hc.a(m(), paramObject1);
    if (localMap == null)
      return null;
    return hc.a(localMap, paramObject2);
  }

  public boolean b()
  {
    return l() == 0;
  }

  public boolean b(Object paramObject)
  {
    Iterator localIterator = m().values().iterator();
    while (localIterator.hasNext())
      if (((Map)localIterator.next()).containsValue(paramObject))
        return true;
    return false;
  }

  public void c()
  {
    eg.f(d().iterator());
  }

  public Set<ks<R, C, V>> d()
  {
    Set localSet = this.a;
    if (localSet == null)
    {
      localSet = e();
      this.a = localSet;
    }
    return localSet;
  }

  Set<ks<R, C, V>> e()
  {
    return new aj(this);
  }

  public boolean equals(Object paramObject)
  {
    return kt.a(this, paramObject);
  }

  abstract Iterator<ks<R, C, V>> f();

  public Collection<V> g()
  {
    Collection localCollection = this.b;
    if (localCollection == null)
    {
      localCollection = h();
      this.b = localCollection;
    }
    return localCollection;
  }

  Collection<V> h()
  {
    return new ak(this);
  }

  public int hashCode()
  {
    return d().hashCode();
  }

  Iterator<V> i()
  {
    return new ai(this, d().iterator());
  }

  public String toString()
  {
    return m().toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ah
 * JD-Core Version:    0.6.2
 */