package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;

public abstract interface ep
{
  public abstract RpcResult<CollectItemsFromPortalResult, ae> a(Portal paramPortal);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ep
 * JD-Core Version:    0.6.2
 */