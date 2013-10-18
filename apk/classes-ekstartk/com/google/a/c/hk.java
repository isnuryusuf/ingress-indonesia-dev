package com.google.a.c;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map.Entry;
import java.util.Set;

abstract class hk<K, V> extends AbstractMap<K, V>
{
  private transient Set<Map.Entry<K, V>> a;
  private transient Set<K> b;
  private transient Collection<V> c;

  abstract Set<Map.Entry<K, V>> a();

  Set<K> b()
  {
    return new hl(this);
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = this.a;
    if (localSet == null)
    {
      localSet = a();
      this.a = localSet;
    }
    return localSet;
  }

  public Set<K> keySet()
  {
    Set localSet = this.b;
    if (localSet == null)
    {
      localSet = b();
      this.b = localSet;
    }
    return localSet;
  }

  public Collection<V> values()
  {
    Object localObject = this.c;
    if (localObject == null)
    {
      localObject = new hm(this);
      this.c = ((Collection)localObject);
    }
    return localObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hk
 * JD-Core Version:    0.6.2
 */