package com.google.a.c;

import com.google.a.a.an;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;

final class ez<K, V> extends AbstractMap<K, V>
  implements Serializable, ConcurrentMap<K, V>
{
  private final fg<K, V> a;
  private final fa b;

  ez(ey paramey)
  {
    this.a = paramey.a();
    this.b = paramey.j;
  }

  public final boolean containsKey(Object paramObject)
  {
    return false;
  }

  public final boolean containsValue(Object paramObject)
  {
    return false;
  }

  public final Set<Map.Entry<K, V>> entrySet()
  {
    return Collections.emptySet();
  }

  public final V get(Object paramObject)
  {
    return null;
  }

  public final V put(K paramK, V paramV)
  {
    an.a(paramK);
    an.a(paramV);
    new fh(paramK, paramV, this.b);
    return null;
  }

  public final V putIfAbsent(K paramK, V paramV)
  {
    return put(paramK, paramV);
  }

  public final V remove(Object paramObject)
  {
    return null;
  }

  public final boolean remove(Object paramObject1, Object paramObject2)
  {
    return false;
  }

  public final V replace(K paramK, V paramV)
  {
    an.a(paramK);
    an.a(paramV);
    return null;
  }

  public final boolean replace(K paramK, V paramV1, V paramV2)
  {
    an.a(paramK);
    an.a(paramV2);
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ez
 * JD-Core Version:    0.6.2
 */