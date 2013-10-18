package com.nianticproject.ingress.common.ui.g;

import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.al;
import com.nianticproject.ingress.common.x.b;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class d extends b<RpcResult<Map<String, n>, w>>
{
  d(c paramc, String paramString)
  {
    super(paramString);
  }

  private com.nianticproject.ingress.common.x.f a(RpcResult<Map<String, n>, w> paramRpcResult)
  {
    if (paramRpcResult == null)
    {
      c.c();
      return null;
    }
    while (true)
    {
      int i;
      try
      {
        if (paramRpcResult.e())
          break label297;
        if (c.a(this.a))
        {
          i = 0;
          if (i != 0)
            break;
          c.g(this.a);
          if (c.h(this.a) != null)
            c.h(this.a).a(null, null);
          c.c();
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Long.valueOf(c.i(this.a).c());
          arrayOfObject1[1] = Integer.valueOf(c.j(this.a));
          return null;
        }
      }
      catch (Throwable localThrowable)
      {
        c.c().b(localThrowable, "accept caught unexpected exception");
        throw new IllegalStateException(localThrowable);
      }
      if (c.b(this.a) >= 2)
      {
        aa localaa2 = c.c();
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(2);
        localaa2.b("getLinkabilityImpediment() exceeded MAX_IMPEDIMENTS_RETRIES(%d)", arrayOfObject3);
        i = 0;
      }
      else
      {
        switch (e.a[((w)paramRpcResult.b()).ordinal()])
        {
        default:
          c.f(this.a).a(c.c(this.a), c.d(this.a).keySet(), c.e(this.a));
          i = 1;
          break;
        case 1:
          aa localaa1 = c.c();
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = paramRpcResult.b();
          arrayOfObject2[1] = c.c(this.a);
          localaa1.b("getLinkabilityImpediment() error=%s portalGuid=%s", arrayOfObject2);
          i = 0;
        }
      }
    }
    label297: Map localMap = (Map)paramRpcResult.a();
    HashMap localHashMap = hc.a(localMap.size());
    Iterator localIterator = localMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put((q)c.d(this.a).remove(localEntry.getKey()), localEntry.getValue());
    }
    c.g(this.a);
    if (c.h(this.a) != null)
    {
      ArrayList localArrayList = eq.a(c.d(this.a).values());
      c.h(this.a).a(localArrayList, localHashMap);
    }
    c.k(this.a);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.d
 * JD-Core Version:    0.6.2
 */