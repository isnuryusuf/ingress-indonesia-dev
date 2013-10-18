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
import com.nianticproject.ingress.gameentity.components.SimpleEmpWeapon;
import com.nianticproject.ingress.gameentity.components.SimpleInInventory;
import com.nianticproject.ingress.gameentity.components.SimpleResourceWithLevels;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.g;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class aw extends a
{
  private static final com.nianticproject.ingress.common.w.aa y = new com.nianticproject.ingress.common.w.aa(aw.class);
  private String A;
  private final AtomicBoolean B = new AtomicBoolean();
  private final d C = new f("WEAPON_FIRED_EVENT");
  private final d D = new f("ATTACK_PLAYER_EVENT");
  private final d E = new f("MAKE_PORTAL_NEUTRAL_EVENT");
  private final d F = new f("WEAPON_FIRED_COMPLETE_EVENT");
  private final h G = new ax(this, "MISSION_ACTIVATED");
  private final h H = new ay(this, "WEAPON_FIRED_STATE");
  private final h I = new az(this, "ATTACK_PLAYER_STATE");
  private final h J = new ba(this, "MAKE_PORTAL_NEUTRAL_STATE");
  private final String z = "training." + g.a(g.d);

  public aw(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.c.e parame, com.nianticproject.ingress.common.a parama, i parami, com.nianticproject.ingress.common.model.a.e parame1)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame, parama, parami, parame1);
  }

  protected final void b(c paramc)
  {
    paramc.a(this.e, this.d, this.G).a(this.G, this.C, this.H).a(this.H, this.D, this.I).a(this.I, this.E, this.J).a(this.J, this.F, this.f);
  }

  protected final aa e()
  {
    return new aa("Fire XMP", "This Portal is resonated. In this simulation, it is enemy controlled. To attack, move within range of the Portal, press and hold on the Scanner Map, then select FIRE XMP.\n\n", bs.O);
  }

  protected final aa f()
  {
    return new aa("Fire XMP", "Portal neutralized. It is ready for capture.", bs.N);
  }

  public final void g()
  {
    this.k.a(1000L, z.d);
    this.j.b(du.b(new GameEntityBuilder(this.z).a(new SimpleEmpWeapon(6)).a(new SimpleInInventory(this.k.k(), System.currentTimeMillis())).a(new SimpleResourceWithLevels(af.b, 1)).a()));
  }

  protected final Set<h> i()
  {
    return du.b(this.G);
  }

  protected final em m()
  {
    return new bb(this);
  }

  public final String q()
  {
    return "Fire XMP";
  }

  public final List<String> r()
  {
    return dc.a("Press and hold on map", "Select FIRE XMP");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.aw
 * JD-Core Version:    0.6.2
 */