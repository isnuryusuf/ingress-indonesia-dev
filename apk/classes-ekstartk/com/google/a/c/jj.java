package com.google.a.c;

import java.util.Map.Entry;

final class jj<K, V> extends cq<K, V>
{
  final transient K a;
  final transient V b;
  transient cq<V, K> c;

  jj(K paramK, V paramV)
  {
    d(paramK, paramV);
    this.a = paramK;
    this.b = paramV;
  }

  private jj(K paramK, V paramV, cq<V, K> paramcq)
  {
    this.a = paramK;
    this.b = paramV;
    this.c = paramcq;
  }

  final boolean b()
  {
    return false;
  }

  final du<K> c()
  {
    return du.b(this.a);
  }

  public final boolean containsKey(Object paramObject)
  {
    return this.a.equals(paramObject);
  }

  public final boolean containsValue(Object paramObject)
  {
    return this.b.equals(paramObject);
  }

  final du<Map.Entry<K, V>> d()
  {
    return du.b(hc.a(this.a, this.b));
  }

  public final cq<V, K> e()
  {
    Object localObject = this.c;
    if (localObject == null)
    {
      localObject = new jj(this.b, this.a, this);
      this.c = ((cq)localObject);
    }
    return localObject;
  }

  public final V get(Object paramObject)
  {
    if (this.a.equals(paramObject))
      return this.b;
    return null;
  }

  public final int size()
  {
    return 1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jj
 * JD-Core Version:    0.6.2
 */