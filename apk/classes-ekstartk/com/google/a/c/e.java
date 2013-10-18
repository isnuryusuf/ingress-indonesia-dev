package com.google.a.c;

import java.util.Collection;
import java.util.List;
import java.util.Map;

abstract class e<K, V> extends f<K, V>
  implements ep<K, V>
{
  protected e(Map<K, Collection<V>> paramMap)
  {
    super(paramMap);
  }

  abstract List<V> a();

  public List<V> a(K paramK)
  {
    return (List)super.c(paramK);
  }

  public boolean a(K paramK, V paramV)
  {
    return super.a(paramK, paramV);
  }

  public List<V> b(Object paramObject)
  {
    return (List)super.d(paramObject);
  }

  public Map<K, Collection<V>> b()
  {
    return super.b();
  }

  public boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.e
 * JD-Core Version:    0.6.2
 */