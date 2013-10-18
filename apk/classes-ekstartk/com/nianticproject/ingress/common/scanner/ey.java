package com.nianticproject.ingress.common.scanner;

import com.google.a.a.an;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.modes.at;
import com.nianticproject.ingress.common.scanner.modes.ba;
import com.nianticproject.ingress.common.scanner.modes.bf;
import com.nianticproject.ingress.common.scanner.modes.bh;
import com.nianticproject.ingress.common.scanner.modes.bl;
import com.nianticproject.ingress.common.scanner.modes.bu;
import com.nianticproject.ingress.common.scanner.modes.j;
import com.nianticproject.ingress.common.scanner.modes.u;
import com.nianticproject.ingress.common.scanner.modes.y;
import com.nianticproject.ingress.common.scanner.visuals.HackController;
import com.nianticproject.ingress.common.scanner.visuals.au;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.ui.e.b;
import com.nianticproject.ingress.common.ui.elements.Compass;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import java.util.Iterator;
import java.util.Set;

final class ey
  implements e, bl, com.nianticproject.ingress.common.scanner.modes.g, y, au, com.nianticproject.ingress.common.ui.elements.av
{
  private final Set<f> a = jc.a();
  private final k b;
  private final l c;
  private final ac d;
  private final com.nianticproject.ingress.common.model.k e;
  private final com.nianticproject.ingress.common.j.av f;
  private final com.nianticproject.ingress.common.g.e g;
  private final h h;
  private final ed i;
  private final r j;
  private j k;
  private Compass l;
  private t m;

  ey(k paramk, l paraml, ac paramac, com.nianticproject.ingress.common.model.k paramk1, com.nianticproject.ingress.common.j.av paramav, com.nianticproject.ingress.common.g.e parame, h paramh, ed paramed, r paramr)
  {
    this.b = paramk;
    this.c = paraml;
    this.d = paramac;
    this.e = paramk1;
    this.f = paramav;
    this.g = parame;
    this.h = paramh;
    this.i = paramed;
    this.j = paramr;
  }

  public final void a()
  {
    if (this.l.c())
    {
      this.b.b(false);
      this.l.d();
    }
    this.b.x();
  }

  public final void a(ej paramej)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((f)localIterator.next()).a(paramej);
    this.b.B().b(new bh(this.b, this.h, this.f, this.g, this.c, this.e, this.k, paramej, this.i, this));
  }

  public final void a(ej paramej, Portal paramPortal, ab paramab, Set<Resonator> paramSet, com.nianticproject.ingress.gameentity.f paramf)
  {
    this.b.B().b(new ba(this.b, this.k, paramej, paramPortal, this.c, this.e, paramab, paramSet, paramf));
  }

  public final void a(f paramf)
  {
    this.a.add(paramf);
  }

  public final void a(t paramt, j paramj, Compass paramCompass)
  {
    this.m = paramt;
    this.k = paramj;
    this.l = paramCompass;
  }

  public final void a(Portal paramPortal)
  {
    this.d.a(paramPortal);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf)
  {
    t localt = this.m;
    com.nianticproject.ingress.common.model.k localk = this.e;
    localt.b(new com.nianticproject.ingress.common.inventory.e(paramf, localk, this.f, new com.nianticproject.ingress.common.inventory.g(this.c, this.m, this.d, this.e, this.j)));
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, GameState paramGameState)
  {
    at localat = new at(this.b, paramGameState, this.e, this.c, this.k, paramf);
    this.b.B().b(localat);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, ej paramej)
  {
    this.b.B().b(new u(this.e, this.b, this.h, this.k, paramej, this, paramf));
  }

  public final void b()
  {
    this.b.a(null);
  }

  public final void b(ej paramej)
  {
    this.b.B().b(new bu(this.b, this.c, this.e, this.k, paramej));
  }

  public final void b(f paramf)
  {
    this.a.remove(paramf);
  }

  public final void b(Portal paramPortal)
  {
    this.b.B().b(new bf(this.b, this.k, paramPortal.getEntity()));
  }

  public final void b(com.nianticproject.ingress.gameentity.f paramf, ej paramej)
  {
    new com.nianticproject.ingress.common.ui.c.k(paramf, (Portal)an.a((Portal)paramej.e().getComponent(Portal.class)), this.m, this.c);
  }

  public final void c()
  {
    this.m.d();
  }

  public final void c(ej paramej)
  {
    this.b.l().b(new HackController(paramej, this.b.l(), this.e, this.b, this.c, this.g, this, this.b.k()));
  }

  public final void c(Portal paramPortal)
  {
    this.b.a(paramPortal);
  }

  public final boolean d()
  {
    return this.b.B().a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ey
 * JD-Core Version:    0.6.2
 */