package com.google.a.c;

import com.google.a.a.an;
import java.util.EnumMap;
import java.util.Map.Entry;

final class cx<K extends Enum<K>, V> extends dh<K, V>
{
  private final transient EnumMap<K, V> a;

  private cx(EnumMap<K, V> paramEnumMap)
  {
    this.a = paramEnumMap;
    if (!paramEnumMap.isEmpty());
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return;
    }
  }

  static <K extends Enum<K>, V> dh<K, V> a(EnumMap<K, V> paramEnumMap)
  {
    switch (paramEnumMap.size())
    {
    default:
      return new cx(paramEnumMap);
    case 0:
      return cq.h();
    case 1:
    }
    Map.Entry localEntry = (Map.Entry)ee.a(paramEnumMap.entrySet());
    return cq.a(localEntry.getKey(), localEntry.getValue());
  }

  final boolean b()
  {
    return false;
  }

  final du<K> c()
  {
    return new cy(this);
  }

  public final boolean containsKey(Object paramObject)
  {
    return this.a.containsKey(paramObject);
  }

  final du<Map.Entry<K, V>> d()
  {
    return new cz(this);
  }

  public final V get(Object paramObject)
  {
    return this.a.get(paramObject);
  }

  public final int size()
  {
    return this.a.size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.cx
 * JD-Core Version:    0.6.2
 */