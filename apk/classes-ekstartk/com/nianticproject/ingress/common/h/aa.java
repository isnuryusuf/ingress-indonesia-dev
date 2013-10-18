package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ar;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.ui.c;
import com.nianticproject.ingress.common.x.g;
import com.nianticproject.ingress.gameentity.components.ModResource;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.ResourceWithLevels;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.knobs.RecycleKnobs;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Collections;

public class aa extends j<Integer, ae>
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(aa.class);
  private final a b;
  private final com.nianticproject.ingress.common.g.e c;
  private final String d;
  private final g<Integer> e;
  private long f;

  public aa(com.nianticproject.ingress.common.u.q paramq, a parama, com.nianticproject.ingress.common.g.e parame, String paramString, g<Integer> paramg)
  {
    super(paramq);
    this.b = ((a)an.a(parama));
    this.c = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.d = ((String)an.a(paramString));
    this.f = 0L;
    this.e = paramg;
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<Integer, ae> paramRpcResult)
  {
    if (paramRpcResult.e())
    {
      this.b.a("Recycle successful");
      return null;
    }
    this.b.a("Recycle failed: " + c.a().a((Enum)paramRpcResult.b()));
    return new aj(this.c, this.d);
  }

  protected final Result<t<Integer, ae>, ae> c()
  {
    if (Math.random() < 0.5D)
      o.a().a(bs.ax);
    while (!this.c.a(Collections.singleton(this.d)))
    {
      a.b("Item is already being used or does not exist (can be caused if the user selects items faster than we can mark them used).");
      return Result.b(ae.g);
      o.a().a(bs.ay);
    }
    com.nianticproject.ingress.gameentity.f localf = this.c.b(this.d);
    RecycleKnobs localRecycleKnobs = com.nianticproject.ingress.common.q.i();
    ModResource localModResource;
    Resource localResource;
    Integer localInteger;
    if (localf != null)
    {
      ResourceWithLevels localResourceWithLevels = (ResourceWithLevels)localf.getComponent(ResourceWithLevels.class);
      localModResource = (ModResource)localf.getComponent(ModResource.class);
      localResource = (Resource)localf.getComponent(Resource.class);
      if (localResourceWithLevels != null)
        localInteger = Integer.valueOf(localRecycleKnobs.a(localResource.getResourceType(), localResourceWithLevels.getLevel()));
    }
    while (true)
    {
      if (this.e != null)
        this.e.a(localInteger);
      if (localInteger != null)
        this.f = localInteger.intValue();
      return Result.a(ar.a(this.d, this.f));
      if (localModResource != null)
        localInteger = Integer.valueOf(localRecycleKnobs.a(localModResource.getResourceType(), localModResource.getRarity().c()));
      else if (localResource != null)
        localInteger = Integer.valueOf(localRecycleKnobs.a(localResource.getResourceType(), localResource.getRarity().c()));
      else
        localInteger = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.aa
 * JD-Core Version:    0.6.2
 */