package com.nianticproject.ingress.common.missions;

import com.google.a.c.al;
import com.google.a.c.dc;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.google.a.c.hs;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.w.c;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.w.h;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.SimplePortalCoupler;
import com.nianticproject.ingress.gameentity.components.SimpleResource;
import com.nianticproject.ingress.gameentity.components.l;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.ai;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class bd extends a
{
  private static final com.nianticproject.ingress.common.w.aa Q = new com.nianticproject.ingress.common.w.aa(bd.class);
  private static final bs R = bs.X;
  private static final bs S = bs.V;
  private static final List<String> T = dc.a("Hack Portal for key", "Tap another Portal", "Hack second Portal", "Deploy all Resonators", "Click on Portal and LINK");
  protected final d A = new com.nianticproject.ingress.common.w.f("hackEvent");
  protected final d B = new com.nianticproject.ingress.common.w.f("waitForHackEvent");
  protected final d C = new com.nianticproject.ingress.common.w.f("resonateEvent");
  protected final d D = new com.nianticproject.ingress.common.w.f("linkEvent");
  protected final aq E = new aq(this, this.C, 8, 1000);
  protected final h F = new be(this, "hackFirstPortalState");
  protected final h G = new bf(this, "waitForFirstPortalHackState");
  protected final h H = new bg(this, "selectSecondPortalState");
  protected final h I = new bh(this, "hackSecondPortalState");
  protected final h J = new bi(this, "resonateSecondPortalState");
  protected final h K = new z(this, "linkFirstToSecondState", 4, this.E);
  protected Map<u, com.nianticproject.ingress.gameentity.f> L = hc.b();
  protected hs<Portal, com.nianticproject.ingress.gameentity.f> M = al.i();
  protected u N;
  protected com.nianticproject.ingress.gameentity.f O;
  protected final Set<com.nianticproject.ingress.gameentity.f> P = jc.a();
  private final com.nianticproject.ingress.common.scanner.f U = new bk(this);
  private final eg V = new bm(this);
  protected final com.nianticproject.ingress.common.scanner.e y;
  protected final d z = new com.nianticproject.ingress.common.w.f("portalSelectedEvent");

  public bd(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.scanner.e parame, com.nianticproject.ingress.common.c.e parame1, com.nianticproject.ingress.common.a parama, com.nianticproject.ingress.common.ui.elements.i parami, com.nianticproject.ingress.common.model.a.e parame2)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame1, parama, parami, parame2);
    this.y = parame;
    this.a = 200.0F;
  }

  protected static com.nianticproject.ingress.gameentity.f b(com.nianticproject.ingress.gameentity.f paramf, u paramu, String paramString)
  {
    return new GameEntityBuilder(paramString).a(new SimpleResource(af.i, l.a)).a(new SimplePortalCoupler(paramf.getGuid(), paramu, "Portal", "")).a();
  }

  protected final void a(com.nianticproject.ingress.gameentity.f paramf, u paramu, String paramString)
  {
    com.nianticproject.ingress.gameentity.f localf = b(paramf, paramu, paramString);
    this.M.a(paramf.getComponent(Portal.class), localf);
  }

  protected void b(c paramc)
  {
    paramc.a(this.e, this.d, this.F);
    paramc.a(this.F, this.A, this.G);
    paramc.a(this.G, this.B, this.H);
    paramc.a(this.H, this.z, this.I);
    paramc.a(this.I, this.A, this.J);
    paramc.a(this.J, this.C, this.K);
    paramc.a(this.K, this.D, this.f);
  }

  protected aa e()
  {
    return new aa(q(), "You are now ready to link two Portals.\n\nPortals can be hacked in order to obtain their Portal Keys. Once you have obtained a Portal Key, you can remotely link to it.\n\nSelect LINK to begin the linking process.  Eligible destination Portals will be indicated on the Scanner by a red highlight.\n\nA Portal not visible on the Scanner can be linked by selecting the Portal Key.\n\nHack a nearby Portal to obtain its Portal Key.  Then move within range of another Portal to initiate a Link.\n\n", R);
  }

  protected aa f()
  {
    return new aa(q(), "Link successful. Excellent work. Higher level Resonators will increase Portal power. High level Portals can create links of distances up to hundreds of kilometers.\n\nLinks are powerful XM energy bands.\nLinks cannot intersect.\nLinks will fail if Resonators become depleted from decay or enemy attack.\n\n", S);
  }

  public void g()
  {
    this.k.a(2200L, com.nianticproject.ingress.common.model.z.d);
  }

  protected Set<h> i()
  {
    return du.a(this.F, this.G, this.H, this.I, this.J, this.K, new h[0]);
  }

  protected final ep j()
  {
    return new bl(this);
  }

  protected final el k()
  {
    return this.E;
  }

  protected final es n()
  {
    return new ej(this.P);
  }

  protected final en o()
  {
    return new eh(this.j);
  }

  protected eq p()
  {
    return new ei(this.j, this.k, this.V);
  }

  public String q()
  {
    return "Links";
  }

  public List<String> r()
  {
    return T;
  }

  protected final void w()
  {
    ai localai = this.k.h();
    this.c = this.j.a(this.b.a, localai, 8, 1, 0, this.k.k(), this.b.b, this.b.c);
  }

  protected final void x()
  {
    this.q.b(com.nianticproject.ingress.common.model.a.i.e, (float)this.N.c());
    this.q.b(com.nianticproject.ingress.common.model.a.i.f, (float)this.N.f());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bd
 * JD-Core Version:    0.6.2
 */