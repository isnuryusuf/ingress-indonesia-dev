package com.nianticproject.ingress.common.h;

import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.ad;
import com.nianticproject.ingress.shared.rpc.RpcResult;

final class s extends c
{
  s(r paramr, q paramq, a parama, e parame, k paramk, String paramString, com.nianticproject.ingress.gameentity.f paramf, int paramInt)
  {
    super(paramq, parama, parame, paramk, paramString, paramf, paramInt);
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<String, ad> paramRpcResult)
  {
    i.a().a(new t(this, "LocalTrainingGameActions.deployResonator:Delay", paramRpcResult), 300L);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.s
 * JD-Core Version:    0.6.2
 */