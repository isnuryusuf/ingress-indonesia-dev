package com.nianticproject.ingress.common.missions;

import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;
import com.nianticproject.ingress.shared.w;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class eh
  implements en
{
  private final ad a;

  public eh(ad paramad)
  {
    this.a = paramad;
  }

  public final RpcResult<Map<String, n>, w> a(Set<String> paramSet)
  {
    HashMap localHashMap = hc.a(paramSet.size());
    Iterator localIterator = paramSet.iterator();
    label167: 
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      f localf1 = this.a.b(str1);
      if (localf1 != null)
      {
        PortalCoupler localPortalCoupler = (PortalCoupler)localf1.getComponent(PortalCoupler.class);
        if (localPortalCoupler != null)
        {
          String str2 = localPortalCoupler.getPortalGuid();
          f localf2 = this.a.a(str2);
          int i;
          if (localf2 == null)
            i = 0;
          while (true)
          {
            if (i >= 8)
              break label167;
            localHashMap.put(str1, n.e);
            break;
            Portal localPortal = (Portal)localf2.getComponent(Portal.class);
            if (localPortal == null)
              i = 0;
            else
              i = localPortal.getLinkedResonatorGuids().g().size();
          }
        }
      }
    }
    return RpcResult.a(localHashMap, new g().a());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.eh
 * JD-Core Version:    0.6.2
 */