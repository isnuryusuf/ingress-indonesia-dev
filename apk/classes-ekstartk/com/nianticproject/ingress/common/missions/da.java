package com.nianticproject.ingress.common.missions;

import com.google.a.c.al;
import com.google.a.c.du;
import com.google.a.c.hs;
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

public class da extends a
{
  private static final bs A = bs.T;
  private static final bs B = bs.R;
  private static final List<String> C = com.google.a.c.dc.a("Hack nearby Portal", "Deploy remaining Resonators", "Recharge Resonators");
  private static final com.nianticproject.ingress.common.w.aa z = new com.nianticproject.ingress.common.w.aa(da.class);
  private final d D = new com.nianticproject.ingress.common.w.f("hackEvent");
  private final d E = new com.nianticproject.ingress.common.w.f("deployEvent");
  private final d F = new com.nianticproject.ingress.common.w.f("pauseDoneEvent");
  private final d G = new com.nianticproject.ingress.common.w.f("rechargeEvent");
  private final d H = new com.nianticproject.ingress.common.w.f("doneEvent");
  private final dh I = new dh(this, (byte)0);
  private final aq J = new aq(this, this.E, 8, 1000);
  private final di K = new di(this, (byte)0);
  private final h L = new db(this, "hackState");
  private final h M = new dc(this, "deployState");
  private final h N = new dd(this, "pauseState");
  private final h O = new de(this, "rechargeState");
  private final h P = new df(this, "doneState");
  protected final hs<Portal, com.nianticproject.ingress.gameentity.f> y = al.i();

  public da(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.c.e parame, com.nianticproject.ingress.common.a parama, i parami, com.nianticproject.ingress.common.model.a.e parame1)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame, parama, parami, parame1);
  }

  protected final void b(c paramc)
  {
    paramc.a(this.e, this.d, this.L);
    paramc.a(this.L, this.D, this.M);
    paramc.a(this.M, this.D, this.M);
    paramc.a(this.M, this.E, this.N);
    paramc.a(this.N, this.F, this.O);
    paramc.a(this.O, this.G, this.P);
    paramc.a(this.P, this.H, this.f);
  }

  protected final aa e()
  {
    return new aa("Resonating", "Portals can be linked together by powerful bands of Exotic Matter.  In order to link, Portals must have eight charged Resonators.  Move within range of a nearby Portal and hack it to obtain Resonators.  Deploy them and recharge all Resonators above critical levels.\n\n", A);
  }

  protected final aa f()
  {
    return new aa("Resonating", "Excellent.  This Portal is now ready for linking.", B);
  }

  public final void g()
  {
    this.k.a(200L, z.d);
  }

  protected final Set<h> i()
  {
    return du.a(this.L, this.M, this.O);
  }

  protected final ep j()
  {
    return this.I;
  }

  protected final el k()
  {
    return this.J;
  }

  protected final er l()
  {
    return this.K;
  }

  public final String q()
  {
    return "Resonating";
  }

  public final List<String> r()
  {
    return C;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.da
 * JD-Core Version:    0.6.2
 */