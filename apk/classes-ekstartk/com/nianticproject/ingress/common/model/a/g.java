package com.nianticproject.ingress.common.model.a;

import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.ad;
import com.nianticproject.ingress.shared.rpc.y;
import com.nianticproject.ingress.shared.u;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class g extends com.nianticproject.ingress.common.f.h
{
  private final Map<i, j<?>> b;
  private final Map<i, j<?>> c = hc.b();

  public g(e parame)
  {
    this.b = e.a(parame).b();
  }

  private u j()
  {
    HashMap localHashMap;
    try
    {
      aj.a("BulkPutPlayerStorageTask");
      localHashMap = hc.b();
      Iterator localIterator = this.b.keySet().iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        j localj = (j)this.b.get(locali);
        if (!localj.c())
        {
          localHashMap.put(locali.toString(), localj.e());
          this.c.put(locali, localj);
        }
      }
    }
    finally
    {
      aj.b();
    }
    boolean bool1 = localHashMap.isEmpty();
    if (bool1)
    {
      aj.b();
      return null;
    }
    try
    {
      ah localah = e.b(this.a);
      an.a(localHashMap);
      if (!localHashMap.isEmpty());
      for (boolean bool2 = true; ; bool2 = false)
      {
        an.a(bool2);
        u localu2 = (u)localah.b(new ad(com.nianticproject.ingress.common.u.aa.a(u.class, Void.class), "playerUndecorated", "putBulkPlayerStorage", dc.a(localHashMap)));
        aj.b();
        return localu2;
      }
    }
    catch (y localy)
    {
      e.a().a(localy, "RpcException while persisting to player storage " + localHashMap.toString());
      u localu1 = u.b;
      aj.b();
      return localu1;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.a.g
 * JD-Core Version:    0.6.2
 */