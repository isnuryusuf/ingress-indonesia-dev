package com.google.a.c;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class g extends hk<K, Collection<V>>
{
  final transient Map<K, Collection<V>> a;

  g(Map<K, Collection<V>> paramMap)
  {
    Object localObject;
    this.a = localObject;
  }

  final Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> paramEntry)
  {
    Object localObject = paramEntry.getKey();
    return hc.a(localObject, this.b.a(localObject, (Collection)paramEntry.getValue()));
  }

  protected final Set<Map.Entry<K, Collection<V>>> a()
  {
    return new h(this);
  }

  public void clear()
  {
    if (this.a == f.a(this.b))
    {
      this.b.e();
      return;
    }
    eg.f(new i(this));
  }

  public boolean containsKey(Object paramObject)
  {
    return hc.b(this.a, paramObject);
  }

  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || (this.a.equals(paramObject));
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }

  public Set<K> keySet()
  {
    return this.b.h();
  }

  public int size()
  {
    return this.a.size();
  }

  public String toString()
  {
    return this.a.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.g
 * JD-Core Version:    0.6.2
 */