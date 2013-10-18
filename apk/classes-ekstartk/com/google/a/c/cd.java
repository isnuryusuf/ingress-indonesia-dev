package com.google.a.c;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Map.Entry;
import java.util.Set;

final class cd extends AbstractMap<V, K>
  implements am<V, K>, Serializable
{
  private cd(by paramby)
  {
  }

  public final am<K, V> a()
  {
    return this.a;
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final boolean containsKey(Object paramObject)
  {
    return this.a.containsValue(paramObject);
  }

  public final Set<Map.Entry<V, K>> entrySet()
  {
    return new ce(this);
  }

  public final K get(Object paramObject)
  {
    bz localbz = by.b(this.a, paramObject, by.a(paramObject));
    if (localbz == null)
      return null;
    return localbz.a;
  }

  public final Set<V> keySet()
  {
    return new ch(this);
  }

  public final K put(V paramV, K paramK)
  {
    return by.a(this.a, paramV, paramK);
  }

  public final K remove(Object paramObject)
  {
    bz localbz = by.b(this.a, paramObject, by.a(paramObject));
    if (localbz == null)
      return null;
    by.a(this.a, localbz);
    return localbz.a;
  }

  public final int size()
  {
    return by.c(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cd
 * JD-Core Version:    0.6.2
 */