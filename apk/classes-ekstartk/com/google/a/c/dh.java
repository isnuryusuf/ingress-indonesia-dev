package com.google.a.c;

import java.io.Serializable;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class dh<K, V>
  implements Serializable, Map<K, V>
{
  private static final Map.Entry<?, ?>[] a = new Map.Entry[0];
  private transient du<Map.Entry<K, V>> b;
  private transient du<K> c;
  private transient ct<V> d;

  public static <K, V> dh<K, V> a(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    dk[] arrayOfdk = new dk[2];
    arrayOfdk[0] = c(paramK1, paramV1);
    arrayOfdk[1] = c(paramK2, paramV2);
    return new il(arrayOfdk);
  }

  public static <K, V> dh<K, V> a(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3)
  {
    dk[] arrayOfdk = new dk[3];
    arrayOfdk[0] = c(paramK1, paramV1);
    arrayOfdk[1] = c(paramK2, paramV2);
    arrayOfdk[2] = c(paramK3, paramV3);
    return new il(arrayOfdk);
  }

  public static <K, V> dh<K, V> a(Map<? extends K, ? extends V> paramMap)
  {
    if (((paramMap instanceof dh)) && (!(paramMap instanceof dx)))
    {
      dh localdh = (dh)paramMap;
      if (!localdh.b())
        return localdh;
    }
    else if ((paramMap instanceof EnumMap))
    {
      EnumMap localEnumMap = (EnumMap)paramMap;
      Iterator localIterator = localEnumMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator.next();
        d(localEntry2.getKey(), localEntry2.getValue());
      }
      return cx.a(new EnumMap(localEnumMap));
    }
    Map.Entry[] arrayOfEntry = (Map.Entry[])paramMap.entrySet().toArray(a);
    switch (arrayOfEntry.length)
    {
    default:
      return new il(arrayOfEntry);
    case 0:
      return cq.h();
    case 1:
    }
    Map.Entry localEntry1 = arrayOfEntry[0];
    return cq.a(localEntry1.getKey(), localEntry1.getValue());
  }

  static void a(boolean paramBoolean, String paramString, Map.Entry<?, ?> paramEntry1, Map.Entry<?, ?> paramEntry2)
  {
    if (!paramBoolean)
      throw new IllegalArgumentException("Multiple entries with same " + paramString + ": " + paramEntry1 + " and " + paramEntry2);
  }

  public static <K, V> dh<K, V> b(K paramK, V paramV)
  {
    return cq.a(paramK, paramV);
  }

  static <K, V> dk<K, V> c(K paramK, V paramV)
  {
    d(paramK, paramV);
    return new dk(paramK, paramV);
  }

  static void d(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null)
      throw new NullPointerException("null key in entry: null=" + paramObject2);
    if (paramObject2 == null)
      throw new NullPointerException("null value in entry: " + paramObject1 + "=null");
  }

  public static <K, V> dh<K, V> i()
  {
    return cq.h();
  }

  public static <K, V> di<K, V> j()
  {
    return new di();
  }

  abstract boolean b();

  du<K> c()
  {
    return new dm(this);
  }

  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean containsKey(Object paramObject)
  {
    return get(paramObject) != null;
  }

  public boolean containsValue(Object paramObject)
  {
    return (paramObject != null) && (hc.d(this, paramObject));
  }

  abstract du<Map.Entry<K, V>> d();

  public ct<V> d_()
  {
    Object localObject = this.d;
    if (localObject == null)
    {
      localObject = new do(this);
      this.d = ((ct)localObject);
    }
    return localObject;
  }

  public boolean equals(Object paramObject)
  {
    return hc.e(this, paramObject);
  }

  public du<Map.Entry<K, V>> f()
  {
    du localdu = this.b;
    if (localdu == null)
    {
      localdu = d();
      this.b = localdu;
    }
    return localdu;
  }

  public du<K> g()
  {
    du localdu = this.c;
    if (localdu == null)
    {
      localdu = c();
      this.c = localdu;
    }
    return localdu;
  }

  public abstract V get(Object paramObject);

  public int hashCode()
  {
    return f().hashCode();
  }

  public boolean isEmpty()
  {
    return size() == 0;
  }

  @Deprecated
  public final V put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final void putAll(Map<? extends K, ? extends V> paramMap)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final V remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public String toString()
  {
    return hc.b(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dh
 * JD-Core Version:    0.6.2
 */