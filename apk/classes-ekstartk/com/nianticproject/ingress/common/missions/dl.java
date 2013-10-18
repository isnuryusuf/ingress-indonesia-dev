package com.nianticproject.ingress.common.missions;

import com.google.a.c.dc;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.ui.elements.i;
import com.nianticproject.ingress.common.w.c;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.w.h;
import com.nianticproject.ingress.gameentity.components.Portal;
import java.util.List;
import java.util.Set;

public class dl extends bd
{
  private static final com.nianticproject.ingress.common.w.aa R = new com.nianticproject.ingress.common.w.aa(dl.class);
  private static final bs S = bs.ac;
  private static final bs T = bs.aa;
  private static final List<String> U = dc.a("Hack Portal for key", "Tap another Portal", "Hack second Portal", "Deploy all Resonators", "Click on Portal and LINK", "Tap third Portal", "Hack third Portal", "Prepare Portal for linking", "Create second Link", "Create third Link");
  protected u Q;
  private final Set<Portal> V = jc.a();
  private int W;
  private com.nianticproject.ingress.gameentity.f X;
  private final d Y = new com.nianticproject.ingress.common.w.f("skipEvent");
  private final d Z = new com.nianticproject.ingress.common.w.f("dontSkipEvent");
  private final d aa = new com.nianticproject.ingress.common.w.f("readyForLinkEvent");
  private final h ab = new do(this, "checkForLinkMissionDone");
  private final h ac = new dp(this, "selectThirdPortalState");
  private final h ad = new dq(this, "hackThirdPortalState");
  private final h ae = new dr(this, "resonateThirdPortalState");
  private final h af = new dt(this, "readyForSecondLinkState");
  private final h ag = new du(this, "secondLinkState", this.E);
  private final h ah = new dv(this, "thirdLinkState", this.E);
  private final com.nianticproject.ingress.common.scanner.f ai = new dw(this);
  private final eg aj = new dn(this);

  public dl(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.scanner.e parame, com.nianticproject.ingress.common.c.e parame1, a parama, i parami, com.nianticproject.ingress.common.model.a.e parame2)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame, parame1, parama, parami, parame2);
    a(new dm(this, parame1));
  }

  protected final void b(c paramc)
  {
    paramc.a(this.e, this.d, this.ab);
    paramc.a(this.ab, this.Y, this.ac);
    paramc.a(this.ab, this.Z, this.F);
    paramc.a(this.F, this.A, this.H);
    paramc.a(this.H, this.z, this.I);
    paramc.a(this.I, this.A, this.J);
    paramc.a(this.J, this.C, this.K);
    paramc.a(this.K, this.D, this.ac);
    paramc.a(this.ac, this.z, this.ad);
    paramc.a(this.ad, this.A, this.ae);
    paramc.a(this.ae, this.C, this.af);
    paramc.a(this.af, this.aa, this.ag);
    paramc.a(this.ag, this.D, this.ah);
    paramc.a(this.ah, this.D, this.f);
  }

  protected final aa e()
  {
    return new aa("Fields", "The most important goal we have is to protect humanity from enemy ingression.\n\nWe do that by connecting Portals and forming protective Fields.  Fields are formed by three connected Portals.  \n\nObtain Portal Keys and use them to create two additional Links to form a triangle.  Move to the third Portal and hack it to obtain a Portal Key.\n\n", S);
  }

  protected final aa f()
  {
    return new aa("Fields", "Excellent!\nYou have created an XM Field which shelters humans in this area from Shaper ingression.\n\nProtecting humans is your primary objective. Our goal is to protect the entire human population.\n\nI maintain a constantly updated count of protected humans.  Each protective Field adds to this total.\n\nThe Shapers are attempting to establish Fields as well through which they intend to infect and alter human thought.  If you encounter them, you must destroy them.\n\n", T);
  }

  public final void g()
  {
    this.k.a(2200L, z.d);
  }

  protected final Set<h> i()
  {
    h localh1 = this.F;
    h localh2 = this.H;
    h localh3 = this.I;
    h localh4 = this.J;
    h localh5 = this.K;
    h localh6 = this.ac;
    h[] arrayOfh = new h[3];
    arrayOfh[0] = this.ad;
    arrayOfh[1] = this.ae;
    arrayOfh[2] = this.ag;
    return com.google.a.c.du.a(localh1, localh2, localh3, localh4, localh5, localh6, arrayOfh);
  }

  protected final eq p()
  {
    return new ei(this.j, this.k, this.aj);
  }

  public final String q()
  {
    return "Fields";
  }

  public final List<String> r()
  {
    return U;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.dl
 * JD-Core Version:    0.6.2
 */