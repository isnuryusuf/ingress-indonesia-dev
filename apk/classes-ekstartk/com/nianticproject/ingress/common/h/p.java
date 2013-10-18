package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ar;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;

public final class p extends j<CollectItemsFromPortalResult, ae>
{
  private final Portal a;
  private final com.nianticproject.ingress.common.model.k b;

  public p(q paramq, Portal paramPortal, com.nianticproject.ingress.common.model.k paramk)
  {
    super(paramq);
    this.a = ((Portal)an.a(paramPortal));
    this.b = ((com.nianticproject.ingress.common.model.k)an.a(paramk));
  }

  protected final Result<t<CollectItemsFromPortalResult, ae>, ae> c()
  {
    ai localai = b.a(this.a.getEntity());
    if (localai == ai.c)
      o.a().a(bs.at);
    while (true)
    {
      f localf = this.a.getEntity();
      com.nianticproject.ingress.common.model.k localk = this.b;
      long l = com.nianticproject.ingress.gameentity.components.k.a((Portal)localf.getComponent(Portal.class), localk.h());
      return Result.a(ar.b(this.a.getEntity().getGuid(), l));
      if (localai == ai.b)
        o.a().a(bs.av);
      else if (localai == ai.a)
        o.a().a(bs.au);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.p
 * JD-Core Version:    0.6.2
 */