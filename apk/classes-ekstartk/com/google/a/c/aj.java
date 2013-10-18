package com.google.a.c;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

final class aj extends AbstractSet<ks<R, C, V>>
{
  aj(ah paramah)
  {
  }

  public final void clear()
  {
    this.a.c();
  }

  public final boolean contains(Object paramObject)
  {
    if ((paramObject instanceof ks))
    {
      ks localks = (ks)paramObject;
      Map localMap = (Map)hc.a(this.a.m(), localks.a());
      return (localMap != null) && (as.a(localMap.entrySet(), hc.a(localks.b(), localks.c())));
    }
    return false;
  }

  public final Iterator<ks<R, C, V>> iterator()
  {
    return this.a.f();
  }

  public final boolean remove(Object paramObject)
  {
    if ((paramObject instanceof ks))
    {
      ks localks = (ks)paramObject;
      Map localMap = (Map)hc.a(this.a.m(), localks.a());
      return (localMap != null) && (as.b(localMap.entrySet(), hc.a(localks.b(), localks.c())));
    }
    return false;
  }

  public final int size()
  {
    return this.a.l();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.aj
 * JD-Core Version:    0.6.2
 */