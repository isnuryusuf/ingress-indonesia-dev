package com.google.a.c;

import java.util.Map.Entry;

abstract class az<K, V> extends dh<K, V>
{
  private final int a;

  az(int paramInt)
  {
    this.a = paramInt;
  }

  abstract dh<K, Integer> a();

  abstract V a(int paramInt);

  final K b(int paramInt)
  {
    return a().g().a().get(paramInt);
  }

  final du<K> c()
  {
    if (this.a == a().size());
    for (int i = 1; i != 0; i = 0)
      return a().g();
    return super.c();
  }

  final du<Map.Entry<K, V>> d()
  {
    return new ba(this);
  }

  public V get(Object paramObject)
  {
    Integer localInteger = (Integer)a().get(paramObject);
    if (localInteger == null)
      return null;
    return a(localInteger.intValue());
  }

  public int size()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.az
 * JD-Core Version:    0.6.2
 */