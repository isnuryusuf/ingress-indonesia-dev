package com.nianticproject.ingress.common.missions;

import com.google.a.c.hs;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class bl
  implements ep
{
  bl(bd parambd)
  {
  }

  public final RpcResult<CollectItemsFromPortalResult, ae> a(Portal paramPortal)
  {
    this.a.j.b(this.a.M.c(paramPortal));
    int i;
    if ((this.a.c != null) && (paramPortal.getEntityGuid().equals(this.a.c.getGuid())))
    {
      a.a(this.a, "HackedFirstPortal");
      i = 0;
    }
    HashSet localHashSet;
    while (true)
    {
      this.a.t().a(this.a.A);
      localHashSet = jc.a();
      Iterator localIterator1 = this.a.M.c(paramPortal).iterator();
      while (localIterator1.hasNext())
        localHashSet.add(((f)localIterator1.next()).getGuid());
      if ((this.a.O != null) && (paramPortal.getEntityGuid().equals(this.a.O.getGuid())))
      {
        a.a(this.a, "HackedSecondPortal");
        i = 8;
      }
      else
      {
        a.a(this.a, "HackedThirdPortal");
        i = 8;
      }
    }
    this.a.M.d(paramPortal);
    List localList = this.a.a(i);
    if (localList.size() > 0)
    {
      this.a.j.b(localList);
      Iterator localIterator2 = localList.iterator();
      while (localIterator2.hasNext())
        localHashSet.add(((f)localIterator2.next()).getGuid());
    }
    return RpcResult.a(new CollectItemsFromPortalResult(localHashSet), new g().a());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bl
 * JD-Core Version:    0.6.2
 */