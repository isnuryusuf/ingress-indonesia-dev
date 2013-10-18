package com.nianticproject.ingress.common.factionchoice;

import com.google.a.a.an;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.common.w.c;
import com.nianticproject.ingress.common.w.f;
import com.nianticproject.ingress.common.w.h;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;

public class n
{
  private static final com.nianticproject.ingress.common.w.d n = new f("Proceed");
  private static final com.nianticproject.ingress.common.w.d o = new f("CHOICE_MADE_HUMANIST");
  private static final com.nianticproject.ingress.common.w.d p = new f("CHOICE_MADE_ENLIGHTENED");
  private static final com.nianticproject.ingress.common.w.d q = new f("JARVIS_IN_DA_HOUSE");
  private static final com.nianticproject.ingress.common.w.d r = new f("RPC_SUCCESS");
  private static final com.nianticproject.ingress.common.w.d s = new f("RPC_FAILURE");
  private final az A = new w(this);
  private final com.nianticproject.ingress.common.ui.widget.z B = new x(this);
  private final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(n.class);
  private final h b = new o(this, "ADA_PITCH");
  private final h c = new z(this, "AUTH_OP_CODE");
  private final h d = new aa(this, "JARVIS_PITCH");
  private final h e = new ac(this, "MAKE_CHOICE");
  private final h f = new ad(this, "MAKE_CHOICE_FAST_PATH");
  private final h g = new ae(this, "CONFIRM_HUMANIST");
  private final h h = new af(this, "CHOICE_MADE_HUMANIST");
  private final h i = new ag(this, "CONFIRM_ENLIGHTENED");
  private final h j = new ah(this, "CHOICE_MADE_ENLIGHTENED");
  private final h k = new q(this, "CHOICE_MADE");
  private final h l = new t(this, "PROGRESS_HUMANIST");
  private final h m = new u(this, "PROGRESS_ENLIGHTENED");
  private final d t;
  private final e u;
  private final com.nianticproject.ingress.common.u.q v;
  private boolean w;
  private b x;
  private ai y;
  private final az z = new v(this);

  public n(d paramd, e parame, com.nianticproject.ingress.common.u.q paramq)
  {
    this.t = paramd;
    this.u = parame;
    this.v = paramq;
  }

  public final void a(ai paramai)
  {
    this.y = ((ai)an.a(paramai));
    if (com.nianticproject.ingress.common.q.f().m());
    for (b localb = b.a().a(this.f).a(this.f, r, this.k).a(this.f, s, this.f).b(); ; localb = b.a().a(this.b).a(this.b, n, this.c).a(this.c, q, this.d).a(this.d, n, this.e).a(this.e, o, this.l).a(this.l, r, this.g).a(this.l, s, this.e).a(this.g, n, this.h).a(this.e, p, this.m).a(this.m, r, this.i).a(this.m, s, this.e).a(this.i, n, this.j).b())
    {
      this.x = localb;
      i.a().a(new y(this));
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.n
 * JD-Core Version:    0.6.2
 */