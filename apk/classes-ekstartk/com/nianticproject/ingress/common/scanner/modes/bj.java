package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.j;
import com.nianticproject.ingress.common.ui.hud.PortalInfoHud;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.r;
import java.util.Map;
import java.util.Set;

public final class bj extends a
  implements com.nianticproject.ingress.common.ui.e.a
{
  private static final float f = com.nianticproject.ingress.common.w.l.a(44.0F);
  private final f g;
  private final boolean h;
  private final j i;
  private final com.nianticproject.ingress.common.j.h j;
  private final com.nianticproject.ingress.common.model.k k;
  private final bl l;
  private final t m;
  private final com.nianticproject.ingress.common.h.l n;
  private bn o;
  private bm p;
  private bt q;
  private PortalInfoHud r = null;
  private bk s;
  private ab t = ab.c;
  private final Map<r, f> u = hc.b();
  private ej v = null;
  private f w = null;
  private boolean x = false;

  public bj(com.nianticproject.ingress.common.scanner.k paramk, com.nianticproject.ingress.common.h.l paraml, com.nianticproject.ingress.common.j.h paramh, com.nianticproject.ingress.common.model.k paramk1, ed paramed, f paramf, j paramj, bl parambl, t paramt, boolean paramBoolean)
  {
    super(paramk, paraml, paramh, paramk1, paramed, parambl);
    this.j = paramh;
    this.k = paramk1;
    this.g = paramf;
    this.l = parambl;
    this.m = paramt;
    this.n = paraml;
    this.i = ((j)an.a(paramj));
    this.h = paramBoolean;
  }

  private void h()
  {
    if (this.c == null)
      return;
    String str = this.i.a();
    this.w = ((f)this.c.gameEntities.get(str));
    if ((this.w != null) && (this.r == null))
    {
      ac.a(this.p);
      this.p = null;
      this.v = this.a.b(str);
      if (this.v != null)
      {
        this.r = new PortalInfoHud(this.j, this.k, this.w, this.i, this.q.a(), "remote-portal");
        this.a.a(this.v, this.r);
      }
      Portal localPortal = (Portal)this.w.getComponent(Portal.class);
      if (localPortal != null)
        this.u.putAll(com.nianticproject.ingress.gameentity.components.k.a(new RemotePortalMode.1(this), localPortal));
    }
    while (true)
    {
      if (this.o != null)
      {
        bn.a(this.o);
        bn.b(this.o);
      }
      this.x = false;
      return;
      if ((this.w == null) && (this.r != null))
      {
        this.r.a();
        this.r = null;
      }
    }
  }

  public final com.nianticproject.ingress.common.ui.e.d a()
  {
    return new com.nianticproject.ingress.common.ui.e.d(false, true);
  }

  public final void a(as paramas)
  {
    super.a(paramas);
    this.q = new bt(f);
    this.a.a(this.q);
    u localu1 = this.i.b();
    float f1 = 1.570796F + d();
    if (com.nianticproject.ingress.common.scanner.k.u());
    for (float f2 = this.b.f(); ; f2 = 0.0F)
    {
      float f3 = f2 + f1;
      u localu2 = u.a(localu1.a().b() + ()(-40.0D * Math.sin(f3)), localu1.d().b() + ()(-40.0D * Math.cos(f3)));
      this.a.b(localu2);
      this.o = new bn(this, f);
      this.a.a(this.o);
      if (!this.c.gameEntities.containsKey(this.i.a()))
      {
        this.p = new bm((byte)0);
        this.a.a(this.p);
      }
      bn.a(this.o);
      bn.b(this.o);
      h();
      return;
    }
  }

  public final void a(GameState paramGameState)
  {
    super.a(paramGameState);
    this.x = true;
  }

  public final boolean a(float paramFloat)
  {
    if (this.x)
      h();
    return super.a(paramFloat);
  }

  public final void b()
  {
    super.b();
    ac.a(this.p);
    this.p = null;
    this.o.e();
    if (this.r != null)
    {
      this.r.a();
      this.r = null;
    }
    if (this.s != null)
    {
      this.s.g();
      this.s = null;
    }
    ac.a(this.q);
    this.q = null;
  }

  protected final Set<h> c()
  {
    return du.b(h.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bj
 * JD-Core Version:    0.6.2
 */