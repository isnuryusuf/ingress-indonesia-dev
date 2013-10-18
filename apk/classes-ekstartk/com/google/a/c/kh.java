package com.google.a.c;

import com.google.a.a.an;
import com.google.a.a.bs;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class kh<R, C, V> extends ah<R, C, V>
  implements Serializable
{
  final Map<R, Map<C, V>> a;
  final bs<? extends Map<C, V>> b;
  private transient Map<R, Map<C, V>> c;

  kh(Map<R, Map<C, V>> paramMap, bs<? extends Map<C, V>> parambs)
  {
    this.a = paramMap;
    this.b = parambs;
  }

  public V a(R paramR, C paramC, V paramV)
  {
    an.a(paramR);
    an.a(paramC);
    an.a(paramV);
    Map localMap = (Map)this.a.get(paramR);
    if (localMap == null)
    {
      localMap = (Map)this.b.a();
      this.a.put(paramR, localMap);
    }
    return localMap.put(paramC, paramV);
  }

  public Set<R> a()
  {
    return m().keySet();
  }

  public boolean a(Object paramObject)
  {
    return (paramObject != null) && (hc.b(this.a, paramObject));
  }

  public boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 != null) && (paramObject2 != null) && (super.a(paramObject1, paramObject2));
  }

  public V b(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      return null;
    return super.b(paramObject1, paramObject2);
  }

  public boolean b()
  {
    return this.a.isEmpty();
  }

  public boolean b(Object paramObject)
  {
    return (paramObject != null) && (super.b(paramObject));
  }

  public Map<C, V> c(R paramR)
  {
    return new kj(this, paramR);
  }

  public void c()
  {
    this.a.clear();
  }

  public Set<ks<R, C, V>> d()
  {
    return super.d();
  }

  final Iterator<ks<R, C, V>> f()
  {
    return new ki(this, (byte)0);
  }

  public Collection<V> g()
  {
    return super.g();
  }

  public int l()
  {
    Iterator localIterator = this.a.values().iterator();
    int i = 0;
    while (localIterator.hasNext())
      i += ((Map)localIterator.next()).size();
    return i;
  }

  public Map<R, Map<C, V>> m()
  {
    Object localObject = this.c;
    if (localObject == null)
    {
      localObject = new kn(this);
      this.c = ((Map)localObject);
    }
    return localObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kh
 * JD-Core Version:    0.6.2
 */