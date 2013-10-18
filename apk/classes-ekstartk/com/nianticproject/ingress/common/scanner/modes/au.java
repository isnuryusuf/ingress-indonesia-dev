package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.x.b;
import com.nianticproject.ingress.shared.p;
import com.nianticproject.ingress.shared.rpc.RpcResult;

final class au extends b<RpcResult<Void, p>>
{
  private final int b;
  private i c;

  protected au(at paramat, int paramInt, i parami)
  {
    super("PortalModMode.deployMod");
    this.b = paramInt;
    this.c = parami;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.au
 * JD-Core Version:    0.6.2
 */