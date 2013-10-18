package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.u.d;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.server.flip.a;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.RpcResult;

public final class j extends com.nianticproject.ingress.common.f.j<Void, a>
{
  private final r a;
  private final String b;
  private final Portal c;

  public j(r paramr, com.nianticproject.ingress.gameentity.f paramf, Portal paramPortal, q paramq)
  {
    super(paramq);
    this.a = paramr;
    this.b = ((com.nianticproject.ingress.gameentity.f)an.a(paramf)).getGuid();
    this.c = ((Portal)an.a(paramPortal));
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<Void, a> paramRpcResult)
  {
    return new ab(this.a);
  }

  protected final Result<t<Void, a>, a> c()
  {
    return Result.a(d.a(this.c, this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.j
 * JD-Core Version:    0.6.2
 */