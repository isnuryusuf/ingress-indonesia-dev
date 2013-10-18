package com.google.a.c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

abstract class z<K, V>
  implements hs<K, V>
{
  private transient Set<K> a;
  private transient Map<K, Collection<V>> b;

  public boolean a(K paramK, V paramV)
  {
    return c(paramK).add(paramV);
  }

  public Map<K, Collection<V>> b()
  {
    Map localMap = this.b;
    if (localMap == null)
    {
      localMap = g();
      this.b = localMap;
    }
    return localMap;
  }

  public boolean b(Object paramObject1, Object paramObject2)
  {
    Collection localCollection = (Collection)b().get(paramObject1);
    return (localCollection != null) && (localCollection.remove(paramObject2));
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject instanceof hs))
    {
      hs localhs = (hs)paramObject;
      return b().equals(localhs.b());
    }
    return false;
  }

  Set<K> f()
  {
    return new hl(b());
  }

  abstract Map<K, Collection<V>> g();

  public Set<K> h()
  {
    Set localSet = this.a;
    if (localSet == null)
    {
      localSet = f();
      this.a = localSet;
    }
    return localSet;
  }

  public int hashCode()
  {
    return b().hashCode();
  }

  public String toString()
  {
    return b().toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.z
 * JD-Core Version:    0.6.2
 */