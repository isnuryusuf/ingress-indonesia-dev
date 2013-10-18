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
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class dh
  implements ep
{
  private boolean b;

  private dh(da paramda)
  {
  }

  public final RpcResult<CollectItemsFromPortalResult, ae> a(Portal paramPortal)
  {
    if (!this.b)
      return da.a(this.a).a(paramPortal);
    this.a.j.b(this.a.y.c(paramPortal));
    HashSet localHashSet = jc.a();
    Iterator localIterator1 = this.a.y.c(paramPortal).iterator();
    while (localIterator1.hasNext())
      localHashSet.add(((f)localIterator1.next()).getGuid());
    List localList = this.a.a(4);
    if (localList.size() > 0)
    {
      this.a.j.b(localList);
      Iterator localIterator2 = localList.iterator();
      while (localIterator2.hasNext())
        localHashSet.add(((f)localIterator2.next()).getGuid());
    }
    CollectItemsFromPortalResult localCollectItemsFromPortalResult = new CollectItemsFromPortalResult(localHashSet);
    GameBasket localGameBasket = new g().a();
    this.a.t().a(da.b(this.a));
    a.a(this.a, "HackedPortal");
    return RpcResult.a(localCollectItemsFromPortalResult, localGameBasket);
  }

  public final void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.dh
 * JD-Core Version:    0.6.2
 */