package com.nianticproject.ingress.common.missions;

import com.google.a.c.dc;
import com.google.a.c.du;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.l;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.model.z;
import com.nianticproject.ingress.common.ui.elements.i;
import com.nianticproject.ingress.common.w.c;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.w.f;
import com.nianticproject.ingress.common.w.h;
import java.util.List;
import java.util.Set;

public final class eu extends a
{
  private final d A = new f("PLAYER_ATTACKED_EVENT");
  private final d B = new f("HACKING_COMPLETE_EVENT");
  private final h C = new ev(this, "MISSION_ACTIVATED");
  private final h D = new ew(this, "IN_RANGE");
  private final h E = new ex(this, "HACKING_COMPLETE_STATE");
  private final h F = new ey(this, "WATCH_ATTACK_PLAYER_STATE");
  private final l G = new fa(this);
  private final d y = new f("WALKED_TO_PORTAL_EVENT");
  private final d z = new f("PORTAL_HACKED_EVENT");

  public eu(cq paramcq, ad paramad, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.c.e parame, com.nianticproject.ingress.common.a parama, i parami, com.nianticproject.ingress.common.model.a.e parame1)
  {
    super(paramcq, paramad, paramm, paramk, paramk1, parame, parama, parami, parame1);
  }

  protected final void b(c paramc)
  {
    paramc.a(this.e, this.d, this.C);
    paramc.a(this.C, this.z, this.E);
    paramc.a(this.C, this.y, this.D);
    paramc.a(this.D, this.z, this.E);
    paramc.a(this.E, this.B, this.F);
    paramc.a(this.F, this.A, this.f);
  }

  protected final aa e()
  {
    return new aa("Hack a Portal", "There is a Portal nearby. Close on the Portal until it is within your range circle. Tap the Portal on the Scanner Map. Select Hack. Warning, this is a hostile Portal. Move out of range after hacking.\n\n", bs.M);
  }

  protected final aa f()
  {
    return new aa("Hack a Portal", "Excellent. Hacking Portals will often produce resources. Portals can be hacked again after a cool-down period. Hack often to build inventory. Be aware, you may experience unusual ideas or emotions when encountering a Portal.", bs.L);
  }

  public final void g()
  {
    this.k.a(1200L, z.d);
  }

  protected final Set<h> i()
  {
    return du.a(this.C, this.D);
  }

  protected final ep j()
  {
    return new ez(this);
  }

  public final String q()
  {
    return "Hack a Portal";
  }

  public final List<String> r()
  {
    return dc.a("Walk to Portal", "Tap Portal and HACK");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.eu
 * JD-Core Version:    0.6.2
 */