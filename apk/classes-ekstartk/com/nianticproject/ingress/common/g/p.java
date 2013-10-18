package com.nianticproject.ingress.common.g;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.e.m;
import com.nianticproject.ingress.common.h;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.missions.cc;
import com.nianticproject.ingress.common.missions.co;
import com.nianticproject.ingress.common.missions.cq;
import com.nianticproject.ingress.common.model.g;
import com.nianticproject.ingress.common.playerprofile.ax;
import com.nianticproject.ingress.common.playerprofile.bl;
import com.nianticproject.ingress.common.playerprofile.bm;
import com.nianticproject.ingress.common.u.ba;
import com.nianticproject.ingress.common.ui.elements.ab;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public class p
{
  private static final com.nianticproject.ingress.common.w.aa a = new com.nianticproject.ingress.common.w.aa(p.class.getSimpleName());
  private static p b = new p();
  private com.nianticproject.ingress.common.missions.a.l A;
  private cc B;
  private com.nianticproject.ingress.common.factionchoice.d C;
  private com.nianticproject.ingress.common.k.s D;
  private com.nianticproject.ingress.common.ui.elements.ah E;
  private h F;
  private com.nianticproject.ingress.common.ui.e G;
  private com.nianticproject.ingress.common.o H;
  private final com.nianticproject.ingress.i.b I = new com.nianticproject.ingress.i.b();
  private com.nianticproject.ingress.common.m.e J;
  private final com.nianticproject.ingress.common.u.f K = new com.nianticproject.ingress.common.u.f();
  private com.nianticproject.ingress.common.ac L;
  private boolean M;
  private boolean N;
  private final c O = new s(this, this.d);
  private final f P = new u(this);
  private final com.nianticproject.ingress.common.aa Q = new v(this);
  private final Set<w> c = com.nianticproject.ingress.common.w.j.a();
  private final b d = new b();
  private final g e = new g();
  private final com.nianticproject.ingress.common.h.k f = new com.nianticproject.ingress.common.h.k();
  private com.nianticproject.ingress.common.u.b g;
  private com.nianticproject.ingress.common.a h;
  private com.nianticproject.ingress.common.d.a i;
  private String j;
  private com.nianticproject.ingress.common.q.b.r k;
  private av l;
  private com.nianticproject.ingress.shared.a.b m;
  private final com.nianticproject.ingress.common.w.t n = new com.nianticproject.ingress.common.w.t();
  private com.nianticproject.ingress.common.model.d o;
  private com.nianticproject.ingress.common.u.q p;
  private ax q;
  private com.nianticproject.ingress.common.scanner.k r;
  private com.nianticproject.ingress.common.inventory.a s;
  private com.nianticproject.ingress.common.ui.t t;
  private com.nianticproject.ingress.common.l u;
  private com.nianticproject.ingress.common.r v;
  private com.nianticproject.ingress.common.ui.o w;
  private com.nianticproject.ingress.common.model.a.e x;
  private com.nianticproject.ingress.common.c.ak y;
  private com.nianticproject.ingress.common.missions.a.r z;

  public static p a()
  {
    return b;
  }

  private void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.d.a(i.a());
    while (true)
    {
      this.d.b();
      this.O.e();
      return;
      this.d.a(i.b());
    }
  }

  private void d(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.f.a(new com.nianticproject.ingress.common.h.ac(this.p, this.d, this.h, this.e, this.v));
      return;
    }
    com.nianticproject.ingress.common.h.k localk = this.f;
    com.nianticproject.ingress.common.a locala = this.h;
    an.b(this.d.a(), "NemesisCache is not in training mode");
    b localb = this.d;
    an.b(this.e.a(), "PlayerModel is not in training mode");
    localk.a(new com.nianticproject.ingress.common.h.r(locala, localb, this.e));
  }

  public final com.nianticproject.ingress.common.m.e A()
  {
    return this.J;
  }

  public final com.nianticproject.ingress.shared.a.a B()
  {
    return this.m.a();
  }

  public final boolean C()
  {
    if (this.u == null)
      return false;
    return this.u.a();
  }

  public final av D()
  {
    return this.l;
  }

  public final ax E()
  {
    return this.q;
  }

  public final com.nianticproject.ingress.common.ac F()
  {
    return this.L;
  }

  public final boolean G()
  {
    return this.M;
  }

  public final boolean H()
  {
    return this.N;
  }

  public final void a(w paramw)
  {
    this.c.add(paramw);
  }

  public final void a(com.nianticproject.ingress.common.u.b paramb, com.nianticproject.ingress.common.a parama, String paramString, com.nianticproject.ingress.common.q.b.r paramr, av paramav, x paramx, boolean paramBoolean, com.nianticproject.ingress.common.v.ah paramah, com.nianticproject.ingress.common.model.a.e parame, com.nianticproject.ingress.common.c.ak paramak, com.nianticproject.ingress.common.o paramo, com.nianticproject.ingress.shared.a.b paramb1)
  {
    while (true)
    {
      try
      {
        aj.a("NemesisWorld.init");
        this.g = paramb;
        this.h = parama;
        this.j = paramString;
        this.p = new com.nianticproject.ingress.common.u.q(paramb, paramString);
        this.k = paramr;
        this.l = paramav;
        this.x = parame;
        this.y = paramak;
        this.H = paramo;
        this.m = paramb1;
        this.L = paramx.a(this.p);
        com.nianticproject.ingress.common.ac localac = this.L;
        try
        {
          aj.a("NemesisWorld.initHelper");
          this.x.a(this.H.c);
          this.M = co.a(this.x);
          c(this.M);
          this.o = new com.nianticproject.ingress.common.model.f(this.d);
          boolean bool = this.M;
          com.nianticproject.ingress.gameentity.f localf = this.H.b;
          String str = this.H.a;
          if (!bool)
          {
            this.e.a(new com.nianticproject.ingress.common.model.a(localf, str, this.d, com.nianticproject.ingress.common.x.i.a(), this.o, this.p));
            if (!this.M)
            {
              localObject3 = new com.nianticproject.ingress.common.u.j(com.nianticproject.ingress.common.x.i.a(), this.d, this.e, this.o, this.K);
              this.p.a((com.nianticproject.ingress.common.u.j)localObject3);
              this.q = new bm(new bl(this.g, this.j));
              this.i = new com.nianticproject.ingress.common.d.a(this.p, this.h);
              com.nianticproject.ingress.common.u.s locals = new com.nianticproject.ingress.common.u.s(this.g, this.j, (com.nianticproject.ingress.common.u.j)localObject3, this.K);
              this.u = new com.nianticproject.ingress.common.l(i.a(), this.h);
              this.u.a(locals);
              this.v = new com.nianticproject.ingress.common.r(this.e, this.u, this.O);
              d(this.M);
              com.nianticproject.ingress.common.inventory.i locali = new com.nianticproject.ingress.common.inventory.i(this.f, localac, this.v, this.e, this.d, this.l, this.h);
              a.k(locali);
              this.s = new com.nianticproject.ingress.common.inventory.a(this.d, this.l, locali, this.e, this.f);
              this.D = new com.nianticproject.ingress.common.k.s(this.e, this.y, this.x, this.M, new q(this));
              m localm = new m(this.p, this.h, this.e);
              com.nianticproject.ingress.common.l.a locala = new com.nianticproject.ingress.common.l.a(this.f, locali, this.e, this.y);
              this.B = new cc(locali);
              this.z = new com.nianticproject.ingress.common.missions.a.r(this.n, this.f, localac, this.l, this.e, this.d, this.k, this.v, this.h, new r(this));
              this.A = new com.nianticproject.ingress.common.missions.a.l(this.z, com.nianticproject.ingress.common.c.o.a(), this.y);
              this.r = this.z;
              this.F = new h(this.e, this.r, this.d, this.o);
              this.e.a(this.F);
              com.nianticproject.ingress.common.u.ah localah = new com.nianticproject.ingress.common.u.ah(this.g, this.j);
              localah.a(new com.nianticproject.ingress.common.u.ai());
              this.C = new com.nianticproject.ingress.common.factionchoice.d(localac, localah, com.nianticproject.ingress.common.c.o.a(), this.y);
              com.nianticproject.ingress.common.v.j localj = new com.nianticproject.ingress.common.v.j(locali, paramah);
              com.nianticproject.ingress.common.ui.a[] arrayOfa = new com.nianticproject.ingress.common.ui.a[12];
              arrayOfa[0] = this.D;
              arrayOfa[1] = this.C;
              arrayOfa[2] = this.A;
              arrayOfa[3] = new com.nianticproject.ingress.common.m.f(localac, locali);
              arrayOfa[4] = this.z;
              arrayOfa[5] = this.s;
              arrayOfa[6] = locala;
              arrayOfa[7] = new com.nianticproject.ingress.common.r.a(localac, locali);
              arrayOfa[8] = localj;
              arrayOfa[9] = this.B;
              arrayOfa[10] = localm;
              arrayOfa[11] = new com.nianticproject.ingress.common.playerprofile.ak(this.e, this.l, this.q, locali);
              ArrayList localArrayList = eq.a(arrayOfa);
              long l1 = 5000000L;
              int i1 = 20;
              if (Runtime.getRuntime().availableProcessors() > 1)
              {
                l1 = 1000000L;
                i1 = 30;
              }
              this.G = new com.nianticproject.ingress.common.ui.e(i1);
              this.t = new com.nianticproject.ingress.common.ui.t(this.z, localArrayList);
              com.nianticproject.ingress.common.ui.t localt = this.t;
              if (!a.aj())
                localt.c(com.nianticproject.ingress.common.k.s.class);
              locali.a(this.t);
              if (!com.nianticproject.ingress.common.q.f().d(com.nianticproject.ingress.common.p.a.a()))
                break label1143;
              localObject4 = new com.nianticproject.ingress.common.ui.elements.c(this.t, this.l, this.e);
              this.E = ((com.nianticproject.ingress.common.ui.elements.ah)localObject4);
              this.z.a(this.E);
              com.nianticproject.ingress.common.ui.t.a(paramBoolean);
              com.nianticproject.ingress.common.ui.o.a(paramBoolean);
              this.w = new com.nianticproject.ingress.common.ui.o(this.t, this.G, l1);
              this.J = new com.nianticproject.ingress.common.m.e(this.g, this.j);
              aj.b();
              aj.b();
              a.r(this);
            }
          }
          else
          {
            this.e.a(new com.nianticproject.ingress.common.model.ac(localf, str, this.d, com.nianticproject.ingress.common.x.i.a(), this.o));
            continue;
          }
        }
        finally
        {
        }
      }
      finally
      {
        aj.b();
      }
      Object localObject3 = new ba(com.nianticproject.ingress.common.x.i.a(), this.d, this.e, this.o, this.K);
      continue;
      label1143: Object localObject4 = new ab(this.t, this.e);
    }
  }

  public final void a(boolean paramBoolean)
  {
    while (true)
    {
      com.nianticproject.ingress.gameentity.f localf;
      String str;
      try
      {
        aj.a("NemesisWorld.resetHelper");
        this.M = paramBoolean;
        this.p = new com.nianticproject.ingress.common.u.q(this.g, this.j);
        c(paramBoolean);
        Object localObject2;
        if (!paramBoolean)
        {
          localObject2 = new com.nianticproject.ingress.common.u.j(com.nianticproject.ingress.common.x.i.a(), this.d, this.e, this.o, this.K);
          this.p.a((com.nianticproject.ingress.common.u.j)localObject2);
          com.nianticproject.ingress.common.u.s locals = new com.nianticproject.ingress.common.u.s(this.g, this.j, (com.nianticproject.ingress.common.u.j)localObject2, this.K);
          this.u.a(locals);
          localf = this.H.b;
          str = this.H.a;
          if (!paramBoolean)
          {
            ad localad1 = this.e.g();
            float f1 = this.e.f();
            this.e.a(new com.nianticproject.ingress.common.model.a(localf, str, this.d, com.nianticproject.ingress.common.x.i.a(), this.o, this.p));
            if (localad1 != null)
              this.e.a(localad1);
            this.e.a(f1);
            com.nianticproject.ingress.common.a.a.a(1, this.e.h().name());
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Integer.valueOf(this.e.l());
            com.nianticproject.ingress.common.a.a.a(2, String.format("L%d", arrayOfObject));
            d(paramBoolean);
            aj.b();
            Iterator localIterator = this.c.iterator();
            if (!localIterator.hasNext())
              break;
            ((w)localIterator.next()).a(paramBoolean);
            continue;
          }
        }
        else
        {
          localObject2 = new ba(com.nianticproject.ingress.common.x.i.a(), this.d, this.e, this.o, this.K);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      ad localad2 = this.e.g();
      float f2 = this.e.f();
      com.nianticproject.ingress.shared.ai localai = this.e.h();
      this.e.a(new com.nianticproject.ingress.common.model.ac(localf, str, this.d, com.nianticproject.ingress.common.x.i.a(), this.o));
      if (localad2 != null)
        this.e.a(localad2);
      this.e.a(f2);
      this.e.a(localai);
    }
  }

  public final com.nianticproject.ingress.common.model.k b()
  {
    return this.e;
  }

  public final void b(w paramw)
  {
    this.c.remove(paramw);
  }

  public final void b(boolean paramBoolean)
  {
    this.N = paramBoolean;
  }

  public final g c()
  {
    return this.e;
  }

  public final e d()
  {
    return this.d;
  }

  public final b e()
  {
    return this.d;
  }

  public final com.nianticproject.ingress.common.h.l f()
  {
    return this.f;
  }

  public final com.nianticproject.ingress.common.h.k g()
  {
    return this.f;
  }

  public final com.nianticproject.ingress.common.w.t h()
  {
    return this.n;
  }

  public final com.nianticproject.ingress.common.u.q i()
  {
    return this.p;
  }

  public final com.nianticproject.ingress.common.r j()
  {
    return this.v;
  }

  public final com.nianticproject.ingress.common.scanner.k k()
  {
    return this.r;
  }

  public final com.nianticproject.ingress.common.a l()
  {
    return this.h;
  }

  public final com.nianticproject.ingress.common.d.a m()
  {
    return this.i;
  }

  public final com.nianticproject.ingress.common.ui.t n()
  {
    return this.t;
  }

  public final com.nianticproject.ingress.common.model.d o()
  {
    return this.o;
  }

  public final com.nianticproject.ingress.common.ui.o p()
  {
    return this.w;
  }

  public final com.nianticproject.ingress.common.aa q()
  {
    return this.Q;
  }

  public final com.nianticproject.ingress.common.model.a.e r()
  {
    return this.x;
  }

  public final com.nianticproject.ingress.common.c.ak s()
  {
    return this.y;
  }

  public final cq t()
  {
    return this.A;
  }

  public final com.nianticproject.ingress.common.ui.e u()
  {
    return this.G;
  }

  public final cc v()
  {
    return this.B;
  }

  public final com.nianticproject.ingress.common.factionchoice.d w()
  {
    return this.C;
  }

  public final com.nianticproject.ingress.common.ui.elements.i x()
  {
    if (this.E == null)
      return null;
    return this.E.a();
  }

  public final h y()
  {
    return this.F;
  }

  public final com.nianticproject.ingress.i.b z()
  {
    return this.I;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.p
 * JD-Core Version:    0.6.2
 */