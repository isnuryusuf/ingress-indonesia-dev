package com.nianticproject.ingress.common.scanner.modes;

import com.c.a.a.a.a;
import com.google.a.c.du;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.visuals.cq;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;

public final class bu extends ag
{
  private bw g;
  private cq h;
  private final l i;
  private final com.nianticproject.ingress.common.model.k j;
  private Resource k;
  private final n l;

  public bu(com.nianticproject.ingress.common.scanner.k paramk, l paraml, com.nianticproject.ingress.common.model.k paramk1, j paramj, ej paramej)
  {
    super(paramk, paramj, paramej);
    this.i = paraml;
    this.j = paramk1;
    this.k = ((Resource)paramej.e().getComponent(Resource.class));
    this.l = new bv(this, paramej);
  }

  public final void a(as paramas)
  {
    this.c.G().a(0.0F);
    this.e.a(true);
    this.h = new cq(this.e);
    this.e.b(this.h);
    super.a(paramas);
    this.g = new bw(this, (byte)0);
    this.c.a(this.g);
    this.j.a(this.l);
    this.l.a(this.j.g());
  }

  public final void a(GameState paramGameState)
  {
    super.a(paramGameState);
    f localf = this.e.e();
    if (paramGameState.changedEntities.contains(localf))
    {
      this.k = ((Resource)localf.getComponent(Resource.class));
      if (this.g != null)
      {
        this.c.b(this.g);
        this.g = new bw(this, (byte)0);
        this.c.a(this.g);
      }
    }
  }

  public final void b()
  {
    super.b();
    this.e.a(false);
    this.c.G().a(1.0F);
    this.h.b();
    this.j.b(this.l);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bu
 * JD-Core Version:    0.6.2
 */