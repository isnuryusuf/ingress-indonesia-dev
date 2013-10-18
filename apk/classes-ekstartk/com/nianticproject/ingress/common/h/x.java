package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.bp;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.u.ar;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.ui.c;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.rpc.RpcResult;

public final class x extends j<Void, ae>
{
  private final Resource a;
  private final com.nianticproject.ingress.common.g.e b;
  private final com.nianticproject.ingress.common.a c;
  private com.nianticproject.ingress.gameentity.f d;

  public x(q paramq, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.a parama, Resource paramResource)
  {
    super(paramq);
    this.b = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.c = ((com.nianticproject.ingress.common.a)an.a(parama));
    this.a = ((Resource)an.a(paramResource));
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<Void, ae> paramRpcResult)
  {
    if (paramRpcResult.e())
      return null;
    com.nianticproject.ingress.common.a locala = this.c;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = com.nianticproject.ingress.common.inventory.ui.a.a(this.a.getEntity());
    arrayOfObject[1] = c.a().a((Enum)paramRpcResult.b());
    locala.a(String.format("%s pickup failed - %s", arrayOfObject));
    ae localae = (ae)paramRpcResult.b();
    if ((localae == ae.a) || (localae == ae.b))
      return null;
    return new y(this);
  }

  protected final Result<t<Void, ae>, ae> c()
  {
    this.d = this.b.a(this.a.getEntity());
    bo localbo = new bo();
    ba[] arrayOfba = new ba[3];
    arrayOfba[0] = ba.T;
    arrayOfba[1] = g.a(this.a);
    arrayOfba[2] = ba.aN;
    bn localbn = localbo.a(arrayOfba).a(bp.a).a(true).f();
    o.a().a(localbn);
    return Result.a(ar.a(this.a.getEntity().getGuid()));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.x
 * JD-Core Version:    0.6.2
 */