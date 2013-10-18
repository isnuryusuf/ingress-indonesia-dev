package com.nianticproject.ingress.common.inventory;

import com.google.a.a.an;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.inventory.ui.ao;
import com.nianticproject.ingress.common.inventory.ui.aw;
import com.nianticproject.ingress.common.inventory.ui.bb;
import com.nianticproject.ingress.common.inventory.ui.bf;
import com.nianticproject.ingress.common.inventory.ui.d;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.b;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.gameentity.components.FlipCard;
import com.nianticproject.ingress.gameentity.components.PowerCube;
import com.nianticproject.ingress.gameentity.f;

public final class g
  implements aw, bb, bf, d, com.nianticproject.ingress.common.inventory.ui.i
{
  private final l a;
  private final t b;
  private final ac c;
  private final com.nianticproject.ingress.common.model.k d;
  private final r e;
  private com.nianticproject.ingress.common.x.g<Integer> f = null;
  private ao g = null;
  private boolean h = false;

  public g(l paraml, t paramt, ac paramac, com.nianticproject.ingress.common.model.k paramk, r paramr)
  {
    this.a = paraml;
    this.b = paramt;
    this.c = paramac;
    this.d = paramk;
    this.e = paramr;
  }

  public final void a()
  {
    this.h = true;
  }

  public final void a(ao paramao)
  {
    this.g = paramao;
  }

  public final void a(com.nianticproject.ingress.common.x.g<Integer> paramg)
  {
    this.f = paramg;
  }

  public final void a(f paramf)
  {
    this.a.b(paramf.getGuid());
    this.b.b(com.nianticproject.ingress.common.scanner.k.class);
    ((com.nianticproject.ingress.common.scanner.k)this.b.a(com.nianticproject.ingress.common.scanner.k.class)).r();
  }

  public final void b(f paramf)
  {
    this.a.a(paramf.getGuid(), this.f);
    if (this.g != null)
      this.g.b();
    com.nianticproject.ingress.common.x.i locali = com.nianticproject.ingress.common.x.i.a();
    h localh = new h(this);
    long l = 1200L;
    if (!a.t())
      l = 0L;
    locali.a(localh, l);
  }

  public final void c(f paramf)
  {
    an.a(paramf.getComponent(PowerCube.class));
    this.b.b(com.nianticproject.ingress.common.scanner.k.class);
    new com.nianticproject.ingress.common.ui.c.a(paramf, (com.nianticproject.ingress.common.scanner.k)this.b.a(com.nianticproject.ingress.common.scanner.k.class), this.a);
  }

  public final void d(f paramf)
  {
    this.c.a(paramf);
  }

  public final void e(f paramf)
  {
    this.b.b(com.nianticproject.ingress.common.scanner.k.class);
    ((com.nianticproject.ingress.common.scanner.k)this.b.a(com.nianticproject.ingress.common.scanner.k.class)).a(paramf);
  }

  public final void f(f paramf)
  {
    an.a(paramf.getComponent(FlipCard.class));
    com.nianticproject.ingress.common.scanner.k localk = (com.nianticproject.ingress.common.scanner.k)this.b.a(com.nianticproject.ingress.common.scanner.k.class);
    this.b.b(new b(localk, this.e, this.a, this.d, paramf));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.g
 * JD-Core Version:    0.6.2
 */