package com.nianticproject.ingress.common.missions;

import com.google.a.c.dc;
import com.google.a.c.du;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.ui.elements.i;
import com.nianticproject.ingress.common.w.c;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.w.f;
import com.nianticproject.ingress.common.w.h;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.components.SimpleInInventory;
import com.nianticproject.ingress.gameentity.components.SimpleResourceWithLevels;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.g;
import java.util.List;
import java.util.Set;

public class as extends a
{
  private static final com.nianticproject.ingress.common.w.aa y = new com.nianticproject.ingress.common.w.aa(as.class);
  private final d A = new f("RESONATOR_DEPLOYMENT_STARTED_EVENT");
  private final aq B = new aq(this, this.A);
  private final h C = new at(this, "MISSION_ACTIVATED");
  private final String z = "training." + g.a(g.d);

  public as(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.c.e parame, com.nianticproject.ingress.common.a parama, i parami, com.nianticproject.ingress.common.model.a.e parame1)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame, parama, parami, parame1);
  }

  protected final void b(c paramc)
  {
    paramc.a(this.e, this.d, this.C);
    paramc.a(this.C, this.A, this.f);
  }

  protected final aa e()
  {
    return new aa("Deploy Resonator", "Resonators are used to control Portals. To deploy a Resonator, close within range, tap the Portal, and select DEPLOY RESONATOR.\n\n", bs.Q);
  }

  protected final aa f()
  {
    return new aa("Deploy Resonator", "Adding additional Resonators will increase Portal energy output and defense.\n\n", bs.P);
  }

  public final void g()
  {
    this.k.a(1000L, z.d);
    this.j.b(du.b(new GameEntityBuilder(this.z).a(new SimpleInInventory(this.k.k(), System.currentTimeMillis())).a(new SimpleResourceWithLevels(af.a, 1)).a()));
  }

  protected final Set<h> i()
  {
    return du.b(this.C);
  }

  protected final el k()
  {
    return this.B;
  }

  public final String q()
  {
    return "Deploy Resonator";
  }

  public final List<String> r()
  {
    return dc.a("Click on Portal", "Deploy Resonator");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.as
 * JD-Core Version:    0.6.2
 */