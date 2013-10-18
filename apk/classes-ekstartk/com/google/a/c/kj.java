package com.google.a.c;

import com.google.a.a.an;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class kj extends hk<C, V>
{
  final R a;
  Map<C, V> b;

  kj(R paramR)
  {
    Object localObject;
    this.a = an.a(localObject);
  }

  protected final Set<Map.Entry<C, V>> a()
  {
    return new kk(this, (byte)0);
  }

  final Map<C, V> c()
  {
    if ((this.b == null) || ((this.b.isEmpty()) && (this.c.a.containsKey(this.a))))
    {
      Map localMap = (Map)this.c.a.get(this.a);
      this.b = localMap;
      return localMap;
    }
    return this.b;
  }

  public final void clear()
  {
    Map localMap = c();
    if (localMap != null)
      localMap.clear();
    d();
  }

  public final boolean containsKey(Object paramObject)
  {
    Map localMap = c();
    return (paramObject != null) && (localMap != null) && (hc.b(localMap, paramObject));
  }

  final void d()
  {
    if ((c() != null) && (this.b.isEmpty()))
    {
      this.c.a.remove(this.a);
      this.b = null;
    }
  }

  public final V get(Object paramObject)
  {
    Map localMap = c();
    if ((paramObject != null) && (localMap != null))
      return hc.a(localMap, paramObject);
    return null;
  }

  public final V put(C paramC, V paramV)
  {
    an.a(paramC);
    an.a(paramV);
    if ((this.b != null) && (!this.b.isEmpty()))
      return this.b.put(paramC, paramV);
    return this.c.a(this.a, paramC, paramV);
  }

  public final V remove(Object paramObject)
  {
    Map localMap = c();
    if (localMap == null)
      return null;
    Object localObject = hc.c(localMap, paramObject);
    d();
    return localObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kj
 * JD-Core Version:    0.6.2
 */