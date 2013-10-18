package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.bp;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.u.ae;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.ui.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.p;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Collections;

public class b extends j<Void, p>
{
  private static final aa a = new aa(b.class);
  private final com.nianticproject.ingress.common.a b;
  private final com.nianticproject.ingress.common.g.e c;
  private final String d;
  private final Modable e;
  private final int f;
  private int g;
  private com.nianticproject.ingress.gameentity.f h;
  private Resource i;

  public b(com.nianticproject.ingress.common.u.q paramq, com.nianticproject.ingress.common.a parama, com.nianticproject.ingress.common.g.e parame, String paramString, Modable paramModable, int paramInt)
  {
    super(paramq);
    this.b = ((com.nianticproject.ingress.common.a)an.a(parama));
    this.c = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.f = paramInt;
    this.d = ((String)an.a(paramString));
    this.e = paramModable;
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<Void, p> paramRpcResult)
  {
    if (paramRpcResult.e())
    {
      if (this.i != null)
      {
        bo localbo = new bo();
        ba[] arrayOfba = new ba[2];
        arrayOfba[0] = g.a(this.i);
        arrayOfba[1] = ba.bc;
        bn localbn = localbo.a(arrayOfba).a(bp.a).a(true).f();
        o.a().a(localbn);
        this.b.c("Successfully deployed " + com.nianticproject.ingress.common.inventory.ui.a.a(this.h));
      }
      return null;
    }
    o.a().a(bs.E);
    com.nianticproject.ingress.common.a locala = this.b;
    p localp = (p)paramRpcResult.b();
    locala.c("Deployment failed (" + c.a().a(localp) + ")");
    return new aj(this.c, this.d);
  }

  protected final Result<t<Void, p>, p> c()
  {
    o.a().a(bs.ak);
    this.h = this.c.b(this.d);
    if (this.h != null)
      this.i = ((Resource)this.h.getComponent(Resource.class));
    if (this.i != null)
      this.g = com.nianticproject.ingress.common.q.h().a(this.i.getResourceType(), this.i.getRarity().c());
    for (boolean bool = this.c.a(Collections.singleton(this.d)); ; bool = false)
    {
      if (bool)
        return Result.a(ae.a(this.d, this.e.getEntityGuid(), this.f, this.g));
      a.c("There's no mod resource to add to the portal.");
      return Result.b(p.b);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.b
 * JD-Core Version:    0.6.2
 */