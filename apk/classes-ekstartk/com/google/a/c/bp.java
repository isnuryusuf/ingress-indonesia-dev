package com.google.a.c;

import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class bp<K, V> extends bs
  implements Map<K, V>
{
  protected abstract Map<K, V> a();

  public void clear()
  {
    a().clear();
  }

  public boolean containsKey(Object paramObject)
  {
    return a().containsKey(paramObject);
  }

  public boolean containsValue(Object paramObject)
  {
    return a().containsValue(paramObject);
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    return a().entrySet();
  }

  public boolean equals(Object paramObject)
  {
    return (paramObject == this) || (a().equals(paramObject));
  }

  public V get(Object paramObject)
  {
    return a().get(paramObject);
  }

  public int hashCode()
  {
    return a().hashCode();
  }

  public boolean isEmpty()
  {
    return a().isEmpty();
  }

  public Set<K> keySet()
  {
    return a().keySet();
  }

  public V put(K paramK, V paramV)
  {
    return a().put(paramK, paramV);
  }

  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    a().putAll(paramMap);
  }

  public V remove(Object paramObject)
  {
    return a().remove(paramObject);
  }

  public int size()
  {
    return a().size();
  }

  public Collection<V> values()
  {
    return a().values();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bp
 * JD-Core Version:    0.6.2
 */