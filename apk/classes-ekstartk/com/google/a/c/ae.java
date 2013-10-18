package com.google.a.c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

abstract class ae<K, V> extends f<K, V>
  implements jb<K, V>
{
  protected ae(Map<K, Collection<V>> paramMap)
  {
    super(paramMap);
  }

  abstract Set<V> a();

  public Set<V> a(K paramK)
  {
    return (Set)super.c(paramK);
  }

  public boolean a(K paramK, V paramV)
  {
    return super.a(paramK, paramV);
  }

  public Map<K, Collection<V>> b()
  {
    return super.b();
  }

  public Set<V> b(Object paramObject)
  {
    return (Set)super.d(paramObject);
  }

  public boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ae
 * JD-Core Version:    0.6.2
 */