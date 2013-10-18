package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;

public final class ei
  implements eq
{
  private final ad a;
  private final m b;
  private final eg c;

  public ei(ad paramad, m paramm, eg parameg)
  {
    this.a = paramad;
    this.b = paramm;
    this.c = parameg;
  }

  public final RpcResult<LinkResult, n> a(Portal paramPortal1, Portal paramPortal2, String paramString)
  {
    f localf = this.a.a(this.b.h(), paramPortal1, paramPortal2);
    GameBasket localGameBasket = new g().a();
    if (this.c != null);
    du localdu;
    for (LinkResult localLinkResult = new LinkResult(localf.getGuid(), this.c.a(paramPortal1, paramPortal2, paramString)); ; localLinkResult = new LinkResult(localf.getGuid(), localdu))
    {
      return RpcResult.a(localLinkResult, localGameBasket);
      localdu = du.g();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ei
 * JD-Core Version:    0.6.2
 */