package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.d.u;
import com.nianticproject.ingress.common.itemupgrade.o;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.visuals.s;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ac;

public class at extends ag
{
  private static final aa g = new aa(at.class);
  private f h;
  private com.nianticproject.ingress.common.model.k i;
  private GameState j;
  private final com.nianticproject.ingress.common.h.l k;
  private boolean l;
  private aw m;
  private af n;
  private s o;

  public at(com.nianticproject.ingress.common.scanner.k paramk, GameState paramGameState, com.nianticproject.ingress.common.model.k paramk1, com.nianticproject.ingress.common.h.l paraml, j paramj, f paramf)
  {
    super(paramk, paramj, paramk.b(paramf.getGuid()));
    an.a(a(paramf, Portal.class));
    this.h = paramf;
    this.j = paramGameState;
    this.i = paramk1;
    this.k = paraml;
    a(paramk1);
    d();
  }

  private static <T extends a> boolean a(f paramf, Class<T> paramClass)
  {
    return (paramf != null) && (paramf.getComponent(paramClass) != null);
  }

  protected final void a(u paramu1, u paramu2)
  {
    if ((ac.a(this.h, paramu1, paramu2)) && (this.m != null) && ((this.m.e instanceof com.nianticproject.ingress.common.itemupgrade.l)))
      ((com.nianticproject.ingress.common.itemupgrade.l)this.m.e).b();
  }

  public final void a(as paramas)
  {
    super.a(paramas);
    this.m = new aw(this);
    this.c.a(this.m);
    this.o = new s(this.c.n());
    this.o.a(this.m.a, -0.02F, 0.75F);
    this.o.a(this.c.b(this.h.getGuid()));
    this.o.a(aw.a(this.m).getColor("ochre-line"));
    this.o.b(aw.a(this.m).getColor("ochre-line"));
    this.o.b(0.055F);
    this.o.a(paramas);
    this.c.a(this.o);
  }

  public final void a(GameState paramGameState)
  {
    this.j = ((GameState)an.a(paramGameState));
    String str = this.h.getGuid();
    f localf = (f)this.j.gameEntities.get(str);
    if (a(localf, Portal.class))
    {
      this.h = localf;
      paramGameState.changedEntities.contains(this.h);
      this.h.getComponent(Portal.class);
      if ((this.m != null) && (this.m.e != null))
      {
        if (!this.m.e.a(paramGameState))
          aw.b(this.m);
        aw.a(this.m, aw.c(this.m));
      }
    }
    if ((paramGameState.changedEntities.contains(this.h)) && (this.m != null))
    {
      aw.d(this.m);
      if (!(this.m.e instanceof com.nianticproject.ingress.common.itemupgrade.l))
        this.m.a(null);
    }
  }

  public final boolean a(ej paramej)
  {
    if (paramej == this.e);
    for (boolean bool = true; ; bool = false)
    {
      if ((bool) && (this.m != null))
        aw.e(this.m);
      return bool;
    }
  }

  public final void b()
  {
    super.b();
    if (this.m != null)
    {
      this.m.e();
      this.m = null;
    }
    if (this.n != null)
    {
      this.n.e();
      this.n = null;
    }
    if (this.o != null)
    {
      this.c.b(this.o);
      this.o = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.at
 * JD-Core Version:    0.6.2
 */