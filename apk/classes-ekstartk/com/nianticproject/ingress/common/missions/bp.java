package com.nianticproject.ingress.common.missions;

import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.factionchoice.d;
import com.nianticproject.ingress.common.factionchoice.n;
import com.nianticproject.ingress.common.g.b;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.model.a.i;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.ac;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.knobs.PlayerAnnounceSharedKnobs;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;
import com.nianticproject.ingress.shared.ai;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class bp
{
  private static final aa a = new aa(bp.class);
  private final com.nianticproject.ingress.common.a b;
  private final com.nianticproject.ingress.common.scanner.k c;
  private final com.nianticproject.ingress.common.scanner.e d;
  private final p e;
  private final List<ca> f;
  private final cq g;
  private bo h;
  private final com.nianticproject.ingress.common.g.ad i;
  private final m j;
  private final com.nianticproject.ingress.common.h.k k;
  private final com.nianticproject.ingress.common.c.e l;
  private final cc m;
  private final com.nianticproject.ingress.common.model.a.e n;
  private final n o;
  private final Map<ak<ck, ck>, ck> p = hc.b();
  private final cj q = new bv(this);

  public bp(List<ca> paramList, p paramp, com.nianticproject.ingress.common.a parama, b paramb, m paramm, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, com.nianticproject.ingress.common.scanner.e parame, com.nianticproject.ingress.common.c.e parame1, com.nianticproject.ingress.common.model.a.e parame2, cq paramcq, cc paramcc, d paramd)
  {
    this.f = dc.a(paramList);
    this.e = paramp;
    this.b = ((com.nianticproject.ingress.common.a)an.a(parama));
    this.i = ((com.nianticproject.ingress.common.g.ad)an.a(paramb));
    this.j = ((m)an.a(paramm));
    this.k = paramk;
    this.c = ((com.nianticproject.ingress.common.scanner.k)an.a(paramk1));
    this.d = ((com.nianticproject.ingress.common.scanner.e)an.a(parame));
    this.l = ((com.nianticproject.ingress.common.c.e)an.a(parame1));
    this.n = ((com.nianticproject.ingress.common.model.a.e)an.a(parame2));
    this.g = ((cq)an.a(paramcq));
    this.m = ((cc)an.a(paramcc));
    this.o = new n(paramd, parame1, paramp.i());
    paramcq.s_().a(new bq(this));
    a(null);
    this.p.put(new ak(ck.a, ck.a), ck.a);
    this.p.put(new ak(ck.a, ck.b), ck.a);
    this.p.put(new ak(ck.a, ck.c), ck.a);
    this.p.put(new ak(ck.a, ck.d), ck.a);
    this.p.put(new ak(ck.a, ck.e), ck.a);
    this.p.put(new ak(ck.b, ck.a), ck.a);
    this.p.put(new ak(ck.b, ck.b), ck.b);
    this.p.put(new ak(ck.b, ck.c), ck.c);
    this.p.put(new ak(ck.b, ck.d), ck.b);
    this.p.put(new ak(ck.b, ck.e), ck.b);
    this.p.put(new ak(ck.c, ck.a), ck.a);
    this.p.put(new ak(ck.c, ck.b), ck.b);
    this.p.put(new ak(ck.c, ck.c), ck.c);
    this.p.put(new ak(ck.c, ck.d), ck.d);
    this.p.put(new ak(ck.c, ck.e), ck.e);
    this.p.put(new ak(ck.d, ck.a), ck.a);
    this.p.put(new ak(ck.d, ck.b), ck.b);
    this.p.put(new ak(ck.d, ck.c), ck.c);
    this.p.put(new ak(ck.d, ck.d), ck.d);
    this.p.put(new ak(ck.d, ck.e), ck.e);
    this.p.put(new ak(ck.e, ck.a), ck.a);
    this.p.put(new ak(ck.e, ck.b), ck.b);
    this.p.put(new ak(ck.e, ck.c), ck.e);
    this.p.put(new ak(ck.e, ck.d), ck.d);
    this.p.put(new ak(ck.e, ck.e), ck.e);
  }

  private void a(ca paramca, boolean paramBoolean)
  {
    an.a(paramca);
    boolean bool1;
    ch localch;
    int i1;
    label154: boolean bool2;
    label215: int i2;
    label227: boolean bool3;
    if (this.h == null)
    {
      bool1 = true;
      an.a(bool1);
      cq localcq = this.g;
      com.nianticproject.ingress.common.g.ad localad = this.i;
      m localm = this.j;
      com.nianticproject.ingress.common.h.k localk = this.k;
      com.nianticproject.ingress.common.scanner.k localk1 = this.c;
      com.nianticproject.ingress.common.scanner.e locale = this.d;
      com.nianticproject.ingress.common.c.e locale1 = this.l;
      com.nianticproject.ingress.common.a locala = this.b;
      this.e.m();
      this.h = paramca.b(localcq, localad, localm, localk, localk1, locale, locale1, locala, this.e.x(), this.n);
      a(paramca.a());
      localch = this.h.b();
      localch.a(this.q);
      localch.a(paramBoolean);
      i1 = 0;
      if (i1 >= this.f.size())
        break label415;
      ca localca2 = (ca)this.f.get(i1);
      i locali2 = co.a(localca2);
      if ((this.n.c(locali2) == ck.d) || (paramca == localca2))
        break label409;
      bool2 = false;
      localch.b(bool2);
      i2 = 0;
      if (i2 >= this.f.size())
        break label427;
      ca localca1 = (ca)this.f.get(i2);
      i locali1 = co.a(localca1);
      if (this.n.c(locali1) != ck.d)
        break label421;
      bool3 = false;
      if (paramca == localca1)
        break label421;
      label288: localch.c(bool3);
      localch.s();
      localch.b();
      if (this.j.g() != null)
        break label433;
      bu localbu = new bu(this, localch);
      this.j.a(localbu);
    }
    while (true)
    {
      if (this.b != null)
        this.b.a("Started " + "training mission" + ": " + localch.q(), System.currentTimeMillis(), 5000);
      return;
      bool1 = false;
      break;
      label409: i1++;
      break label154;
      label415: bool2 = true;
      break label215;
      label421: i2++;
      break label227;
      label427: bool3 = true;
      break label288;
      label433: localch.c();
    }
  }

  private void a(i parami, ck paramck)
  {
    ck localck1 = this.n.c(parami);
    ck localck2 = (ck)this.p.get(new ak(localck1, paramck));
    this.n.a(parami, localck2);
  }

  private void a(String paramString)
  {
    cd localcd = new cd(paramString, new bs(this));
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
    {
      ca localca = (ca)localIterator.next();
      bt localbt = new bt(this, localca);
      localcd.a(localca.a(), localca.b(), localbt, this.n.c(co.a(localca)));
    }
    this.m.a(localcd);
  }

  private boolean f()
  {
    return (this.n.a(i.r)) && (q.f().m());
  }

  private void g()
  {
    this.c.a(dz.a);
    this.c.a(ed.a);
    this.c.a(dj.a);
    this.c.a(ac.a);
  }

  private ca h()
  {
    for (int i1 = 0; i1 < this.f.size(); i1++)
    {
      ca localca = (ca)this.f.get(i1);
      if (this.n.c(co.a(localca)) == ck.d)
        return localca;
    }
    return null;
  }

  private void i()
  {
    if (this.j.i())
    {
      d();
      return;
    }
    j();
  }

  private void j()
  {
    com.nianticproject.ingress.common.ad localad;
    if (l())
    {
      localad = this.j.g();
      if (localad != null)
        break label54;
      a.a("Unable to send training announcement, player's location is unknown.");
    }
    while (true)
    {
      this.e.a(false);
      this.e.j().b();
      a(null);
      return;
      label54: String str = String.format("successfully completed agent training and joined the %s.", new Object[] { this.j.h().a() });
      this.e.m().a(str, localad.a());
      this.n.a(i.q, true);
    }
  }

  private boolean k()
  {
    Iterator localIterator = this.f.iterator();
    while (localIterator.hasNext())
    {
      ca localca = (ca)localIterator.next();
      if (this.n.c(co.a(localca)) == ck.c)
        return true;
    }
    return false;
  }

  private boolean l()
  {
    if (this.n.a(i.q))
      return false;
    long l1 = q.l().a();
    if ((ag.a == ah.a) && (l1 == 9223372036854775807L))
      l1 = 0L;
    return this.n.b(i.g) >= l1;
  }

  public final void a(ca paramca)
  {
    if (!this.f.contains(paramca))
    {
      a.c("Could not find mission in mission controller: " + paramca.getClass().getName());
      return;
    }
    a(co.a(paramca), ck.d);
    an.a(this.c.H());
    a(paramca, false);
  }

  public final boolean a()
  {
    return (this.j.i()) || (f()) || (k());
  }

  public final void b()
  {
    if (q.f().m())
      for (int i1 = 0; i1 < this.f.size(); i1++)
      {
        i locali = co.a((ca)this.f.get(i1));
        if (this.n.c(locali) == ck.d)
          a(locali, ck.e);
      }
    ca localca = h();
    if (localca == null)
    {
      i();
      if (f())
        g();
      while (!k())
        return;
      bx localbx = new bx(this);
      by localby = new by(this);
      bz localbz = new bz(this);
      this.c.a(new br(this, localbx, localby, localbz));
      return;
    }
    a(localca);
  }

  public final void c()
  {
    this.n.a(i.r, false);
  }

  public final void d()
  {
    this.o.a(new bw(this));
  }

  public final void e()
  {
    new Object[1][0] = Boolean.valueOf(l());
    com.nianticproject.ingress.common.model.a.e locale = p.a().r();
    locale.a(i.q, false);
    int i1 = new Random().nextInt(this.f.size());
    int i2 = 0;
    if (i2 < this.f.size())
    {
      i locali = co.a((ca)this.f.get(i2));
      if (i2 == i1);
      for (ck localck = ck.d; ; localck = ck.a)
      {
        locale.a(locali, localck);
        i2++;
        break;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bp
 * JD-Core Version:    0.6.2
 */