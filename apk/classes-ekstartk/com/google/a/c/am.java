package com.google.a.c;

import java.util.Map;

public abstract interface am<K, V> extends Map<K, V>
{
  public abstract am<V, K> a();

  public abstract V put(K paramK, V paramV);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.am
 * JD-Core Version:    0.6.2
 */