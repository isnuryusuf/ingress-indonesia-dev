package com.google.a.c;

import java.util.Map.Entry;

public abstract class bq<K, V> extends bs
  implements Map.Entry<K, V>
{
  protected abstract Map.Entry<K, V> a();

  public boolean equals(Object paramObject)
  {
    return a().equals(paramObject);
  }

  public K getKey()
  {
    return a().getKey();
  }

  public V getValue()
  {
    return a().getValue();
  }

  public int hashCode()
  {
    return a().hashCode();
  }

  public V setValue(V paramV)
  {
    return a().setValue(paramV);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bq
 * JD-Core Version:    0.6.2
 */