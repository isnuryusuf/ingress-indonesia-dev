package com.google.a.c;

import com.google.a.a.aa;
import com.google.a.a.ab;
import com.google.a.a.af;
import com.google.a.a.an;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;

public final class hc
{
  static final af a = as.a.c("=");

  static <K> aa<Map.Entry<K, ?>, K> a()
  {
    return hg.a;
  }

  static <K, V> lj<V> a(lj<Map.Entry<K, V>> paramlj)
  {
    return new hd(paramlj);
  }

  static <K> K a(Map.Entry<K, ?> paramEntry)
  {
    if (paramEntry == null)
      return null;
    return paramEntry.getKey();
  }

  static <V> V a(Map<?, V> paramMap, Object paramObject)
  {
    an.a(paramMap);
    try
    {
      Object localObject = paramMap.get(paramObject);
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return null;
  }

  public static <K extends Enum<K>, V> EnumMap<K, V> a(Class<K> paramClass)
  {
    return new EnumMap((Class)an.a(paramClass));
  }

  public static <K, V> HashMap<K, V> a(int paramInt)
  {
    return new HashMap(b(paramInt));
  }

  public static <K, V> HashMap<K, V> a(Map<? extends K, ? extends V> paramMap)
  {
    return new HashMap(paramMap);
  }

  static <K, V> Iterator<K> a(Iterator<Map.Entry<K, V>> paramIterator)
  {
    return eg.a(paramIterator, hg.a);
  }

  static <K, V> Iterator<Map.Entry<K, V>> a(Set<K> paramSet, aa<? super K, V> paramaa)
  {
    return new he(paramSet.iterator(), paramaa);
  }

  public static <K, V> Map.Entry<K, V> a(K paramK, V paramV)
  {
    return new cw(paramK, paramV);
  }

  static <K, V> boolean a(Collection<Map.Entry<K, V>> paramCollection, Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    return paramCollection.contains(b((Map.Entry)paramObject));
  }

  static int b(int paramInt)
  {
    if (paramInt < 3)
    {
      if (paramInt >= 0);
      for (boolean bool = true; ; bool = false)
      {
        an.a(bool);
        return paramInt + 1;
      }
    }
    if (paramInt < 1073741824)
      return paramInt + paramInt / 3;
    return 2147483647;
  }

  static String b(Map<?, ?> paramMap)
  {
    StringBuilder localStringBuilder = as.a(paramMap.size()).append('{');
    a.a(localStringBuilder, paramMap.entrySet().iterator());
    return '}';
  }

  public static <K, V> HashMap<K, V> b()
  {
    return new HashMap();
  }

  static <K, V> Iterator<V> b(Iterator<Map.Entry<K, V>> paramIterator)
  {
    return eg.a(paramIterator, hg.b);
  }

  private static <K, V> Map.Entry<K, V> b(Map.Entry<? extends K, ? extends V> paramEntry)
  {
    an.a(paramEntry);
    return new hf(paramEntry);
  }

  static <K, V> boolean b(Collection<Map.Entry<K, V>> paramCollection, Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    return paramCollection.remove(b((Map.Entry)paramObject));
  }

  static boolean b(Map<?, ?> paramMap, Object paramObject)
  {
    an.a(paramMap);
    try
    {
      boolean bool = paramMap.containsKey(paramObject);
      return bool;
    }
    catch (ClassCastException localClassCastException)
    {
      return false;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return false;
  }

  static <V> V c(Map<?, V> paramMap, Object paramObject)
  {
    an.a(paramMap);
    try
    {
      Object localObject = paramMap.remove(paramObject);
      return localObject;
    }
    catch (ClassCastException localClassCastException)
    {
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return null;
  }

  public static <K, V> LinkedHashMap<K, V> c()
  {
    return new LinkedHashMap();
  }

  public static <K, V> ConcurrentMap<K, V> d()
  {
    return new ey().f();
  }

  static boolean d(Map<?, ?> paramMap, Object paramObject)
  {
    return eg.a(eg.a(paramMap.entrySet().iterator(), hg.b), paramObject);
  }

  public static <K extends Comparable, V> TreeMap<K, V> e()
  {
    return new TreeMap();
  }

  static boolean e(Map<?, ?> paramMap, Object paramObject)
  {
    if (paramMap == paramObject)
      return true;
    if ((paramObject instanceof Map))
    {
      Map localMap = (Map)paramObject;
      return paramMap.entrySet().equals(localMap.entrySet());
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hc
 * JD-Core Version:    0.6.2
 */