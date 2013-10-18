package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.aq;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.ResourceWithLevels;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ad;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Collections;

public class al extends j<Void, ad>
{
  private static final aa a = new aa(al.class.getSimpleName());
  private final com.nianticproject.ingress.common.g.e b;
  private final com.nianticproject.ingress.common.c.e c;
  private final String d;
  private final com.nianticproject.ingress.gameentity.f e;
  private final r f;

  public al(com.nianticproject.ingress.common.u.q paramq, com.nianticproject.ingress.common.g.e parame, String paramString, com.nianticproject.ingress.gameentity.f paramf, r paramr)
  {
    super(paramq);
    this.b = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.c = o.a();
    this.d = ((String)an.a(paramString));
    this.e = ((com.nianticproject.ingress.gameentity.f)an.a(paramf));
    this.f = ((r)an.a(paramr));
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<Void, ad> paramRpcResult)
  {
    if (paramRpcResult.e())
    {
      this.c.a(bs.aA);
      return null;
    }
    this.c.a(bs.E);
    return new aj(this.b, this.d);
  }

  protected final Result<t<Void, ad>, ad> c()
  {
    if (this.b.a(Collections.singleton(this.d)))
    {
      this.c.a(bs.aC);
      com.nianticproject.ingress.gameentity.f localf = this.b.b(this.d);
      if (localf == null)
      {
        aa localaa = a;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.d;
        localaa.c("Can not find resonator resource entity (id: %s) in inventory.", arrayOfObject);
        return Result.b(ad.s);
      }
      ResourceWithLevels localResourceWithLevels = (ResourceWithLevels)an.a(localf.getComponent(ResourceWithLevels.class));
      int i = com.nianticproject.ingress.common.q.h().c(localResourceWithLevels.getLevel());
      return Result.a(aq.b(this.d, this.e.getGuid(), this.f.ordinal(), i));
    }
    return Result.b(ad.s);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.al
 * JD-Core Version:    0.6.2
 */