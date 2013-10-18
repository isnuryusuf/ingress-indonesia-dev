package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;

final class p
  implements eq
{
  p(a parama)
  {
  }

  public final RpcResult<LinkResult, n> a(Portal paramPortal1, Portal paramPortal2, String paramString)
  {
    GameBasket localGameBasket = new g().a();
    return RpcResult.b(n.y, localGameBasket);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.p
 * JD-Core Version:    0.6.2
 */