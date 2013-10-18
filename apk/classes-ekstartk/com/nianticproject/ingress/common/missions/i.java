package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;

final class i
  implements ep
{
  i(a parama)
  {
  }

  public final RpcResult<CollectItemsFromPortalResult, ae> a(Portal paramPortal)
  {
    return RpcResult.a(new CollectItemsFromPortalResult(du.g()), new g().a());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.i
 * JD-Core Version:    0.6.2
 */