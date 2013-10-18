package com.nianticproject.ingress.common.missions;

import com.google.a.c.dc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.missions.tutorial.TutorialDialog;
import com.nianticproject.ingress.common.ui.widget.z;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.SimpleInInventory;
import com.nianticproject.ingress.gameentity.components.SimpleResourceWithLevels;
import com.nianticproject.ingress.shared.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public abstract class a extends af
{
  private static final com.nianticproject.ingress.common.w.aa y = new com.nianticproject.ingress.common.w.aa(a.class);
  private final com.nianticproject.ingress.common.w.d A = new com.nianticproject.ingress.common.w.f("MISSION_IGNORED_EVENT");
  private final com.nianticproject.ingress.common.w.d B = new com.nianticproject.ingress.common.w.f("MISSION_ABANDONED_EVENT");
  private final com.nianticproject.ingress.common.w.d C = new com.nianticproject.ingress.common.w.f("MISSION_CONGRATS_EVENT");
  private final com.nianticproject.ingress.common.w.d D = new com.nianticproject.ingress.common.w.f("MISSION_GO_TO_SCANNER_EVENT");
  private final com.nianticproject.ingress.common.w.h E = new b(this, "START");
  private final com.nianticproject.ingress.common.w.h F = new o(this, "BRIEFING");
  private final cs G = new v(this);
  private final ct H = new w(this);
  private final aa I = new aa(q(), "There are no Portals in your immediate vicinity. For training purposes we will create a simulated Portal. An optimum target will be located outdoors more than 50 meters from your current location. Press and hold that location on your Scanner map and tag it. ", bs.J);
  private final List<String> J = dc.a("Locate potential Portal", "Tag potential Portal");
  private final z K = a(this.d, "FakePortalPickerStart");
  private final z L = a(this.B, "FakePortalPickerSkip");
  private final cs M = new c(this);
  private final com.nianticproject.ingress.common.w.h N = new d(this, "PORTAL_PICKER_INTRO");
  private final com.nianticproject.ingress.common.w.h O = new e(this, "PORTAL_PICKER");
  private final com.nianticproject.ingress.common.w.d P = new com.nianticproject.ingress.common.w.f("PORTAL_INVALID_EVENT");
  private final com.nianticproject.ingress.common.w.d Q = new com.nianticproject.ingress.common.w.f("PORTAL_IDENTIFIED_EVENT");
  private final com.nianticproject.ingress.common.model.l R = new h(this);
  protected float a = 100.0F;
  protected ac b;
  protected com.nianticproject.ingress.gameentity.f c;
  protected final com.nianticproject.ingress.common.w.d d = new com.nianticproject.ingress.common.w.f("MISSION_STARTED_EVENT");
  protected final com.nianticproject.ingress.common.w.h e = new q(this, "INTRO");
  protected final com.nianticproject.ingress.common.w.h f = new s(this, "CONGRATS");
  protected final com.nianticproject.ingress.common.w.h g = new t(this, "OUTTRO");
  private final com.nianticproject.ingress.common.w.d z = new com.nianticproject.ingress.common.w.f("MISSION_ACCEPTED_EVENT");

  protected a(cq paramcq, com.nianticproject.ingress.common.g.ad paramad, com.nianticproject.ingress.common.model.m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.c.e parame, com.nianticproject.ingress.common.a parama, com.nianticproject.ingress.common.ui.elements.i parami, com.nianticproject.ingress.common.model.a.e parame1)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame, parama, parami, parame1);
  }

  private boolean w()
  {
    com.nianticproject.ingress.common.g.e locale = this.j.h();
    com.nianticproject.ingress.common.g.ac localac = new com.nianticproject.ingress.common.g.ac();
    u localu = this.k.g().a();
    localac.a(localu, (int)this.a);
    double d1 = 3.402823466385289E+38D;
    Object localObject1 = null;
    Iterator localIterator = locale.a(Portal.class, localac).iterator();
    Object localObject2;
    double d2;
    if (localIterator.hasNext())
    {
      localObject2 = (Portal)localIterator.next();
      d2 = ((LocationE6)((Portal)localObject2).getEntity().getComponent(LocationE6.class)).getLatLng().a(localu);
      if (d2 >= d1)
        break label206;
    }
    for (double d3 = d2; ; d3 = d1)
    {
      d1 = d3;
      localObject1 = localObject2;
      break;
      if (localObject1 != null)
      {
        a(new ac(((LocationE6)localObject1.getEntity().getComponent(LocationE6.class)).getLatLng(), localObject1.getDescriptiveText(com.nianticproject.ingress.shared.m.a), com.nianticproject.ingress.gameentity.components.f.a(localObject1.getEntity(), "")));
        return true;
      }
      return false;
      label206: localObject2 = localObject1;
    }
  }

  private boolean x()
  {
    return (this.k.g() != null) && (this.b.a.a(this.k.g().a()) < this.a);
  }

  protected final List<com.nianticproject.ingress.gameentity.f> a(int paramInt)
  {
    ArrayList localArrayList = com.google.a.c.eq.a();
    com.nianticproject.ingress.shared.af localaf = com.nianticproject.ingress.shared.af.a;
    for (int i = this.j.a(Collections.singleton(localaf)).size(); i < paramInt; i++)
      localArrayList.add(new GameEntityBuilder("training." + g.a(g.d)).a(new SimpleInInventory(this.k.k(), System.currentTimeMillis())).a(new SimpleResourceWithLevels(com.nianticproject.ingress.shared.af.a, 1)).a());
    return localArrayList;
  }

  protected final void a()
  {
    if (f() == null)
    {
      t().a(this.z);
      return;
    }
    this.i.a(this.H, f().b, f().c.c(), a(this.z, "AcceptFromMissionDebriefing"), a(this.A, "SkipFromMissionDebriefing"), this.w);
  }

  protected final void a(ac paramac)
  {
    this.b = paramac;
    this.q.b(com.nianticproject.ingress.common.model.a.i.a, (float)paramac.a.c());
    this.q.b(com.nianticproject.ingress.common.model.a.i.b, (float)paramac.a.f());
    this.q.a(com.nianticproject.ingress.common.model.a.i.d, paramac.b);
    this.q.a(com.nianticproject.ingress.common.model.a.i.c, paramac.c);
  }

  public final void a(ck paramck)
  {
    this.m.s();
    this.i.c();
    super.a(paramck);
  }

  protected final void a(com.nianticproject.ingress.common.w.c paramc)
  {
    if (this.u)
      paramc.a(this.F);
    while (true)
    {
      paramc.a(this.F, this.B, this.t);
      paramc.a(this.F, this.D, this.e);
      paramc.a(this.f, this.C, this.g);
      paramc.a(this.g, this.z, this.s);
      paramc.a(this.g, this.A, this.t);
      if (i().isEmpty())
        break;
      if (!x())
        paramc.a(this.N);
      paramc.a(this.N, this.d, this.O);
      paramc.a(this.N, this.B, this.t);
      paramc.a(this.O, this.Q, this.F);
      Iterator localIterator = i().iterator();
      while (localIterator.hasNext())
        paramc.a((com.nianticproject.ingress.common.w.h)localIterator.next(), this.P, this.N);
      paramc.a(this.E);
      paramc.a(this.E, this.z, this.F);
      paramc.a(this.E, this.A, this.t);
    }
    b(paramc);
  }

  public final void b()
  {
    this.l.a(j());
    this.l.a(k());
    this.l.a(l());
    this.l.a(new j(this));
    this.l.a(m());
    this.l.a(n());
    this.l.a(o());
    this.l.a(p());
    this.b = new ac(u.b(this.q.a(com.nianticproject.ingress.common.model.a.i.a, -30.0F), this.q.a(com.nianticproject.ingress.common.model.a.i.b, 0.0F)), this.q.b(com.nianticproject.ingress.common.model.a.i.d, "Simulation Portal"), this.q.b(com.nianticproject.ingress.common.model.a.i.c, ""));
    super.b();
  }

  protected abstract void b(com.nianticproject.ingress.common.w.c paramc);

  public final void c()
  {
    if (!x())
      w();
    if (!i().isEmpty())
      this.k.a(this.R);
    g();
    super.c();
  }

  protected TutorialDialog d()
  {
    return null;
  }

  protected abstract aa e();

  protected abstract aa f();

  protected abstract void g();

  public void h()
  {
    super.h();
    this.k.b(this.R);
  }

  protected abstract Set<com.nianticproject.ingress.common.w.h> i();

  protected ep j()
  {
    return new i(this);
  }

  protected el k()
  {
    return new y();
  }

  protected er l()
  {
    return new k(this);
  }

  protected em m()
  {
    return new l(this);
  }

  protected es n()
  {
    return new m(this);
  }

  protected en o()
  {
    return new n(this);
  }

  protected eq p()
  {
    return new p(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a
 * JD-Core Version:    0.6.2
 */