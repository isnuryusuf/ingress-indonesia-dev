package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.x.b;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;

final class ao extends b<RpcResult<LinkResult, n>>
{
  private final q b;

  ao(ah paramah, q paramq)
  {
    super("portalLinkMode.link");
    this.b = paramq;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.ao
 * JD-Core Version:    0.6.2
 */