package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;

public abstract interface eq
{
  public abstract RpcResult<LinkResult, n> a(Portal paramPortal1, Portal paramPortal2, String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.eq
 * JD-Core Version:    0.6.2
 */