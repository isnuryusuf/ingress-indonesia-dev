package com.nianticproject.ingress.common.inventory;

import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.scanner.gf;
import com.nianticproject.ingress.common.ui.m;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.af;
import com.nianticproject.ingress.common.ui.widget.ag;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.f;

public final class i
  implements com.nianticproject.ingress.common.inventory.ui.ac, af
{
  private t a;
  private final l b;
  private final com.nianticproject.ingress.common.ac c;
  private final com.nianticproject.ingress.common.r d;
  private final com.nianticproject.ingress.common.model.k e;
  private final com.nianticproject.ingress.common.g.e f;
  private final av g;
  private final com.nianticproject.ingress.common.a h;

  public i(l paraml, com.nianticproject.ingress.common.ac paramac, com.nianticproject.ingress.common.r paramr, com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.common.g.e parame, av paramav, com.nianticproject.ingress.common.a parama)
  {
    this.b = paraml;
    this.c = paramac;
    this.d = paramr;
    this.e = paramk;
    this.f = parame;
    this.g = paramav;
    this.h = parama;
  }

  public final void a()
  {
    this.a.b(com.nianticproject.ingress.common.scanner.k.class);
  }

  public final void a(t paramt)
  {
    this.a = paramt;
  }

  public final void a(ag paramag)
  {
    a.s(paramag);
  }

  public final void a(f paramf)
  {
    PortalCoupler localPortalCoupler = (PortalCoupler)paramf.getComponent(PortalCoupler.class);
    if (localPortalCoupler != null);
    com.nianticproject.ingress.common.model.k localk;
    for (Object localObject = new com.nianticproject.ingress.common.scanner.i((com.nianticproject.ingress.common.scanner.k)this.a.a(com.nianticproject.ingress.common.missions.a.r.class), this.d, this.b, this.e, paramf, gf.a(localPortalCoupler), true, this.h); ; localObject = new e(paramf, localk, this.g, new g(this.b, this.a, this.c, this.e, this.d)))
    {
      this.a.b((m)localObject);
      return;
      localk = this.e;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.i
 * JD-Core Version:    0.6.2
 */