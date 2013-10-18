package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Array;
import com.google.a.a.an;
import com.google.a.c.ct;
import com.google.a.c.dc;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.missions.bp;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.j;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.modes.ah;
import com.nianticproject.ingress.common.scanner.visuals.aw;
import com.nianticproject.ingress.common.scanner.visuals.be;
import com.nianticproject.ingress.common.scanner.visuals.bj;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.scanner.visuals.ce;
import com.nianticproject.ingress.common.scanner.visuals.ch;
import com.nianticproject.ingress.common.scanner.visuals.ck;
import com.nianticproject.ingress.common.scanner.visuals.cn;
import com.nianticproject.ingress.common.scanner.visuals.cr;
import com.nianticproject.ingress.common.scanner.visuals.db;
import com.nianticproject.ingress.common.scanner.visuals.m;
import com.nianticproject.ingress.common.ui.elements.Compass;
import com.nianticproject.ingress.common.ui.elements.PortalInfoDialog;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.components.Weapon;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class k extends com.nianticproject.ingress.common.ui.a
{
  private static final com.nianticproject.ingress.common.w.aa d = new com.nianticproject.ingress.common.w.aa(k.class);
  private static final com.nianticproject.ingress.common.t.b e = com.nianticproject.ingress.common.t.c.a("Scanner Update");
  private static final com.nianticproject.ingress.common.t.b f = com.nianticproject.ingress.common.t.c.a("Scanner GameState");
  private static final com.nianticproject.ingress.common.t.b g = com.nianticproject.ingress.common.t.c.a("Scanner Render");
  private com.google.a.d.u A = null;
  private final com.nianticproject.ingress.common.j.ao B;
  private Compass C;
  private float D = (0.0F / 0.0F);
  private boolean E = true;
  private boolean F;
  private final com.c.a.a.a.a G = new com.c.a.a.a.a((byte)0);
  private final Map<String, fg> H = hc.b();
  private final es I = new l(this);
  private final ge J = new ge();
  private final com.nianticproject.ingress.common.q.e K;
  private com.nianticproject.ingress.common.scanner.visuals.h L;
  private ch M;
  private cn N;
  private be O;
  private bt P;
  private aw Q;
  private ce R;
  private bj S;
  private m T;
  private aa U;
  private ab V;
  private final com.nianticproject.ingress.common.ui.e.b W;
  private final com.nianticproject.ingress.common.scanner.modes.a X;
  private final ez Y;
  private final et Z;
  final com.nianticproject.ingress.common.j.h a;
  private boolean aa;
  private boolean ab = true;
  private String ac;
  private int ad = 0;
  private int ae = 0;
  private final com.nianticproject.ingress.common.ui.f.a af = new com.nianticproject.ingress.common.ui.f.a();
  private ac ag;
  private final com.nianticproject.ingress.common.model.l ah = new p(this);
  private final com.nianticproject.ingress.common.ui.f.d ai = new n(this);
  final ey b;
  final ed c;
  private final fp h = new fp();
  private final com.nianticproject.ingress.common.ui.d.a i;
  private final com.nianticproject.ingress.common.ui.d.d j;
  private final com.nianticproject.ingress.common.w.k k;
  private final ft l;
  private final com.nianticproject.ingress.common.h.l m;
  private final com.nianticproject.ingress.common.ac n;
  private final av o;
  private final com.nianticproject.ingress.common.model.k p;
  private final com.nianticproject.ingress.common.c.ao q;
  private final r r;
  private final ad s;
  private final com.nianticproject.ingress.common.a t;
  private final ck u;
  private float v;
  private float w;
  private Skin x = null;
  private final c y = new c();
  private Array<j> z = new Array(true, 10);

  public k(com.nianticproject.ingress.common.w.k paramk, com.nianticproject.ingress.common.h.l paraml, com.nianticproject.ingress.common.ac paramac, av paramav, com.nianticproject.ingress.common.model.k paramk1, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.q.e parame1, r paramr, com.nianticproject.ingress.common.a parama, ad paramad)
  {
    super("ScannerActivity");
    try
    {
      aj.a("Scanner.Scanner");
      this.k = ((com.nianticproject.ingress.common.w.k)an.a(paramk));
      this.m = ((com.nianticproject.ingress.common.h.l)an.a(paraml));
      this.n = ((com.nianticproject.ingress.common.ac)an.a(paramac));
      this.o = ((av)an.a(paramav));
      this.p = ((com.nianticproject.ingress.common.model.k)an.a(paramk1));
      this.K = ((com.nianticproject.ingress.common.q.e)an.a(parame1));
      this.r = ((r)an.a(paramr));
      this.s = paramad;
      this.t = parama;
      this.u = new ck(paramk1);
      this.a = new com.nianticproject.ingress.common.j.h();
      this.l = new ft(this.I);
      this.c = new ed(this.k, this.h, paramk1);
      this.q = new com.nianticproject.ingress.common.c.ao(paramk1, this.c, this.u);
      this.B = new com.nianticproject.ingress.common.j.ao();
      this.b = new ey(this, paraml, paramac, paramk1, paramav, parame, this.a, this.c, paramr);
      this.X = new com.nianticproject.ingress.common.scanner.modes.k(this, paraml, this.a, paramk1, this.c, this.b);
      this.W = new com.nianticproject.ingress.common.ui.e.b(this.B, this.X);
      com.nianticproject.ingress.common.ui.d.b[] arrayOfb = new com.nianticproject.ingress.common.ui.d.b[1];
      arrayOfb[0] = this.W;
      this.j = new com.nianticproject.ingress.common.ui.d.d(arrayOfb);
      this.i = new com.nianticproject.ingress.common.ui.d.a(this.j);
      this.Y = new ez(this.h, paramk1, this, this.a, paramav, this.c, paraml, this.af);
      this.af.a(this.ai);
      this.Z = new et(this);
      super.addProcessor(this.i);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  private Ray b(float paramFloat1, float paramFloat2, Vector2 paramVector2)
  {
    float f1 = paramFloat1 / this.v;
    float f2 = 1.0F - paramFloat2 / this.w;
    Ray localRay = com.nianticproject.ingress.common.j.g.a(this.B, f1, f2);
    if ((localRay != null) && (paramVector2 != null))
    {
      float f3 = localRay.origin.y / localRay.direction.y;
      paramVector2.x = (localRay.origin.x - f3 * localRay.direction.x);
      paramVector2.y = (localRay.origin.z - f3 * localRay.direction.z);
    }
    return localRay;
  }

  private void c(com.google.a.d.u paramu)
  {
    this.h.c(paramu);
    this.l.a(paramu);
  }

  public static void d(boolean paramBoolean)
  {
    ag.a(paramBoolean);
    aw.a(paramBoolean);
    cr.a(paramBoolean);
    PortalInfoDialog.a(paramBoolean);
    com.nianticproject.ingress.common.scanner.a.ad.a();
    com.nianticproject.ingress.common.scanner.visuals.h.b();
    com.nianticproject.ingress.common.ui.o.a();
  }

  private boolean j()
  {
    return this.ad == 0;
  }

  public static boolean u()
  {
    return com.nianticproject.ingress.common.s.c.s();
  }

  public final float A()
  {
    return this.v;
  }

  public final com.nianticproject.ingress.common.ui.e.b B()
  {
    return this.W;
  }

  public final z C()
  {
    return new z(this, (byte)0);
  }

  public final com.google.a.d.u D()
  {
    if (j())
      return this.h.a();
    if (this.p.g() != null)
      return this.p.g().a();
    return null;
  }

  final com.google.a.d.u E()
  {
    return this.h.a();
  }

  public final ed F()
  {
    return this.c;
  }

  public final com.c.a.a.a.a G()
  {
    return this.G;
  }

  public final boolean H()
  {
    return this.F;
  }

  public final void I()
  {
    com.nianticproject.ingress.common.ui.widget.t.a(K());
  }

  public final com.google.a.d.u a(float paramFloat1, float paramFloat2)
  {
    Vector2 localVector2 = Vector2.Zero.cpy();
    if (b(paramFloat1, paramFloat2, localVector2) != null)
      return this.h.a(localVector2);
    return null;
  }

  public final ej a(float paramFloat1, float paramFloat2, Vector2 paramVector2)
  {
    Ray localRay = b(paramFloat1, paramFloat2, paramVector2);
    ej localej;
    if (localRay != null)
    {
      localej = this.l.a(localRay);
      if (localej == null);
    }
    do
    {
      return localej;
      float f1 = paramFloat1 / this.v;
      float f2 = 1.0F - paramFloat2 / this.w;
      localej = this.l.a(this.B, new Vector2(f1, f2));
    }
    while (localej != null);
    return null;
  }

  public final List<com.nianticproject.ingress.common.scanner.visuals.b.g> a(f paramf, Portal paramPortal)
  {
    fk localfk = (fk)b(paramPortal.getEntityGuid());
    if (localfk == null)
      return dc.d();
    ArrayList localArrayList1 = eq.a();
    Iterator localIterator1 = paramPortal.getLinkedResonatorGuids().d_().iterator();
    while (localIterator1.hasNext())
    {
      ej localej = b((String)localIterator1.next());
      if (localej != null)
        localArrayList1.add(localej);
    }
    ArrayList localArrayList2 = eq.a();
    localArrayList2.add(new com.nianticproject.ingress.common.scanner.visuals.b.g(this.h, paramf, localfk, localArrayList1, 1.0F));
    localArrayList2.add(new com.nianticproject.ingress.common.scanner.visuals.b.g(this.h, paramf, localfk, localArrayList1, 0.5F));
    Iterator localIterator2 = localArrayList2.iterator();
    while (localIterator2.hasNext())
      a(new com.nianticproject.ingress.common.scanner.visuals.b.e((com.nianticproject.ingress.common.scanner.visuals.b.g)localIterator2.next()));
    return localArrayList2;
  }

  public final void a()
  {
    Color localColor = ea.a;
    Gdx.gl.glClearColor(localColor.r, localColor.g, localColor.b, 1.0F);
    this.C.a(com.nianticproject.ingress.common.s.c.s());
  }

  public final void a(float paramFloat)
  {
    e.b();
    if (this.D != this.p.f())
    {
      this.D = this.p.f();
      x();
    }
    com.google.a.d.u localu;
    if (this.A != null)
    {
      localu = this.h.a();
      if (localu != null)
        break label241;
      b(this.A);
    }
    long l1;
    GameState localGameState;
    HashSet localHashSet;
    while (true)
    {
      f localf;
      LocationE6 localLocationE6;
      try
      {
        aj.a("Scanner.processGameStateUpdates");
        l1 = System.currentTimeMillis();
        f.b();
        localGameState = this.y.a();
        if (localGameState == null)
          break label674;
        localHashSet = jc.a(localGameState.disappeared);
        du localdu = localGameState.changedEntities;
        try
        {
          aj.a("Scanner.updatePointEntities");
          Iterator localIterator1 = localdu.iterator();
          if (!localIterator1.hasNext())
            break;
          localf = (f)localIterator1.next();
          Resource localResource = (Resource)localf.getComponent(Resource.class);
          if ((localResource != null) && (af.n.equals(localResource.getResourceType())))
            continue;
          localLocationE6 = (LocationE6)localf.getComponent(LocationE6.class);
          if (localLocationE6 != null)
            break label327;
          localHashSet.add(localf.getGuid());
          continue;
        }
        finally
        {
        }
      }
      finally
      {
        aj.b();
      }
      label241: double d1 = com.nianticproject.ingress.shared.b.a.a(this.A, localu);
      double d2 = Math.max(d1 - 50.0D, (2.5D + 3.950000047683716D * d1) * paramFloat);
      if ((d2 > d1) || (d2 > 1000.0D))
      {
        b(this.A);
        this.A = null;
      }
      else
      {
        c(com.nianticproject.ingress.shared.b.a.a(localu, this.A, d2));
        continue;
        label327: ej localej2 = b(localf.getGuid());
        if (localej2 == null)
        {
          eo localeo = this.h.b(localLocationE6.getIndexPoint());
          fg localfg = ff.a(localeo, localf, this.J);
          if (localfg != null)
          {
            this.H.put(localf.getGuid(), localfg);
            localfg.l();
            this.l.a(localeo.a(), localfg);
            ff.a();
          }
        }
        else
        {
          localej2.a(localf);
        }
      }
    }
    aj.b();
    Iterator localIterator2 = localHashSet.iterator();
    while (localIterator2.hasNext())
    {
      String str = (String)localIterator2.next();
      ej localej1 = (ej)this.H.get(str);
      if (localej1 != null)
        localej1.i();
    }
    this.q.a(localGameState);
    this.W.a(localGameState);
    this.M.a(localGameState);
    this.O.a(localGameState);
    this.L.a(localGameState);
    this.N.a(localGameState);
    this.S.a(localGameState);
    this.S.a(localHashSet);
    int i2;
    for (int i1 = 0; ; i1 = i2 + 1)
    {
      if (i1 < this.z.size)
      {
        if (!((j)this.z.get(i1)).a(localGameState))
        {
          this.z.removeIndex(i1);
          i2 = i1 - 1;
          continue;
        }
      }
      else
      {
        com.nianticproject.ingress.common.w.aa localaa = d;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l1);
        localaa.a("Scanner.processGameStateUpdates completed in %dms", arrayOfObject);
        label674: com.nianticproject.ingress.common.t.b.c();
        aj.b();
        this.W.a(paramFloat);
        if ((this.ae > 0) && (this.ad == 0))
        {
          b(this.p.g().a());
          this.r.b();
        }
        this.ae = this.ad;
        this.B.a(paramFloat);
        this.c.a(paramFloat);
        this.l.a(paramFloat);
        this.q.a(paramFloat);
        this.Y.b();
        this.Z.a();
        com.nianticproject.ingress.common.t.b.c();
        return;
      }
      i2 = i1;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    super.a(paramInt1, paramInt2);
    this.v = paramInt1;
    this.w = paramInt2;
    this.a.a(paramInt1, paramInt2);
    this.B.a(paramInt1, paramInt2);
    this.B.a(0.0F);
  }

  public final void a(Skin paramSkin)
  {
    try
    {
      aj.a("Scanner.doCreate");
      this.x = paramSkin;
      this.a.a(paramSkin, K().a());
      this.C = new Compass(new u(this), com.nianticproject.ingress.common.s.c.s());
      this.C.b();
      a(this.C);
      this.V = new ab(this, (byte)0);
      this.U = new aa(this, (byte)0);
      this.j.a();
      this.j.a(this.W);
      this.j.a(this.V);
      this.j.a(this.U);
      this.a.a();
      if (this.K != null)
        this.l.a(new com.nianticproject.ingress.common.scanner.a.ad(this.K));
      this.L = new com.nianticproject.ingress.common.scanner.visuals.h(this.h);
      this.l.a(this.L);
      this.N = new cn(this, this.h);
      this.l.a(this.N);
      this.P = new bt(this.h, this.p, this);
      this.l.a(this.P);
      this.P.b(this.u);
      this.O = new be(this.h);
      this.l.b(this.O);
      this.l.a(this.O);
      this.M = new ch(this.h);
      this.l.b(this.M);
      this.R = new ce(this.h);
      this.l.b(this.R);
      this.S = new bj(this.h, new v(this));
      this.l.b(this.S);
      this.T = new m(this.h);
      this.l.b(this.T);
      this.p.a(this.ah);
      com.nianticproject.ingress.common.ad localad = this.p.g();
      if (localad != null)
        this.ah.a(localad);
      this.P.b(new cr(this.a, this, this.c, this.h, this.p));
      this.b.a(J(), this.X, this.C);
      this.F = true;
      com.nianticproject.ingress.common.missions.et.a(this.t, this, this.b);
      if (!com.nianticproject.ingress.common.missions.et.a().a())
        com.nianticproject.ingress.common.x.i.a().a(new w(this, "InviteNag"), 10000L);
      this.Y.a(com.nianticproject.ingress.common.inventory.ui.v.a(K().a()));
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(com.google.a.d.u paramu)
  {
    com.nianticproject.ingress.common.a.a.b("Target", "location");
    this.c.a(paramu);
  }

  public final void a(com.nianticproject.ingress.common.j.o paramo)
  {
    this.l.b(paramo);
  }

  public final void a(GameState paramGameState)
  {
    super.a(paramGameState);
    this.y.a(paramGameState);
  }

  public final void a(j paramj)
  {
    this.z.add(paramj);
  }

  public final void a(ac paramac)
  {
    int i1 = 0;
    if (i1 < paramac.b.size())
    {
      ev localev = (ev)paramac.b.get(i1);
      if (i1 < -1 + paramac.b.size())
        a(localev);
      while (true)
      {
        i1++;
        break;
        a(new q(this, localev, paramac));
      }
    }
  }

  public final void a(ej paramej, com.nianticproject.ingress.common.ui.hud.b paramb)
  {
    paramej.a(paramb);
    K().a(paramb);
  }

  public final void a(ev paramev)
  {
    this.Z.a(paramev);
  }

  public final void a(com.nianticproject.ingress.common.ui.ac paramac)
  {
    K().a(paramac);
  }

  final void a(Portal paramPortal)
  {
    this.W.b(new ah(this, this.h, this.a, paramPortal, this.p, this.m, this.r, this.o));
  }

  public final void a(f paramf)
  {
    this.W.b();
    com.nianticproject.ingress.common.scanner.modes.l locall = new com.nianticproject.ingress.common.scanner.modes.l(this, this.m, this.a, this.p, this.c, this.b);
    locall.a(paramf);
    this.W.b(locall);
  }

  public final void a(f paramf, com.nianticproject.ingress.common.ui.c.h paramh)
  {
    an.a(paramf.getComponent(Weapon.class));
    eo localeo = this.h.a(this.p.g().a());
    new com.nianticproject.ingress.common.ui.c.c(this.p, paramf, this, this.m, this.P, this.l, this.a, localeo, paramh);
  }

  final void a(f paramf1, f paramf2, Color paramColor)
  {
    if ((paramf1 != null) && (paramf2 != null))
      this.R.a(paramf1, paramf2, paramColor, this.B);
  }

  public final void a(Collection<String> paramCollection)
  {
    if (this.O != null)
      this.O.a(paramCollection);
  }

  public final void a(Set<String> paramSet)
  {
    this.y.a(paramSet);
  }

  public final boolean a(String paramString)
  {
    return this.y.a(paramString);
  }

  public final ej b(String paramString)
  {
    return (ej)this.H.get(paramString);
  }

  public final void b(Skin paramSkin)
  {
    super.b(paramSkin);
    ea.a(paramSkin);
    com.nianticproject.ingress.common.x.i.a().a(new y(this));
  }

  public final void b(com.google.a.d.u paramu)
  {
    this.A = null;
    c(paramu);
  }

  public final void b(com.nianticproject.ingress.common.ui.ac paramac)
  {
    K().b(paramac);
  }

  public final void b(f paramf)
  {
    LocationE6 localLocationE6 = (LocationE6)paramf.getComponent(LocationE6.class);
    if (localLocationE6 == null)
    {
      d.b("startDestinationTracking failed -- no LocationE6 found in entity=%s", new Object[] { paramf });
      return;
    }
    com.google.a.d.u localu = localLocationE6.getLatLng();
    this.c.a(new t(this, paramf));
    this.c.a(localu);
    com.nianticproject.ingress.common.a.a.b("Target", "entity");
  }

  public final void b(Set<String> paramSet)
  {
    this.y.b(paramSet);
  }

  public final void b(boolean paramBoolean)
  {
    com.nianticproject.ingress.common.s.c.b(paramBoolean);
    if (paramBoolean)
    {
      this.X.e();
      return;
    }
    this.X.b(this.p.f());
  }

  public final void c(boolean paramBoolean)
  {
    this.E = paramBoolean;
    this.C.b(paramBoolean);
  }

  public final void e()
  {
    this.q.b();
  }

  protected final boolean f()
  {
    return true;
  }

  public final void g()
  {
    g.b();
    this.l.a(this.B);
    try
    {
      aj.a("DrawDebug");
      this.a.a(this.B);
      this.a.c();
      aj.b();
      this.C.a();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final Skin k()
  {
    return this.x;
  }

  public final bt l()
  {
    return this.P;
  }

  public final boolean l_()
  {
    return this.W.a();
  }

  public final cn m()
  {
    return this.N;
  }

  public final boolean m_()
  {
    return true;
  }

  public final com.nianticproject.ingress.common.j.h n()
  {
    return this.a;
  }

  public final com.nianticproject.ingress.common.ui.d.a o()
  {
    return this.i;
  }

  public final com.nianticproject.ingress.common.ac p()
  {
    return this.n;
  }

  public final void p_()
  {
    Iterator localIterator = this.H.values().iterator();
    while (localIterator.hasNext())
      ((fg)localIterator.next()).dispose();
    this.H.clear();
    this.y.b();
    com.nianticproject.ingress.common.w.ac.a(this.l);
    com.nianticproject.ingress.common.w.ac.a(this.a);
    this.p.b(this.ah);
    this.q.a();
    super.p_();
  }

  public final void q()
  {
    if (this.ag == ac.a)
    {
      this.ag = null;
      com.nianticproject.ingress.common.g.p.a().x().a(com.nianticproject.ingress.common.ui.elements.n.b);
      com.nianticproject.ingress.common.missions.et.a().c();
    }
  }

  public final void q_()
  {
    super.q_();
    ag.a();
    aw.c();
    cr.c();
    PortalInfoDialog.b();
    com.nianticproject.ingress.common.scanner.a.ad.b();
    com.nianticproject.ingress.common.scanner.visuals.h.c();
    com.nianticproject.ingress.common.ui.o.b();
  }

  public final void r()
  {
    this.l.b(new db(ag.v));
  }

  public final void s()
  {
    if (this.c.a())
      this.c.b();
  }

  public final boolean t()
  {
    return this.E;
  }

  public final boolean v()
  {
    return (this.W.a(this.X)) && (L()) && (!this.B.m());
  }

  public final float w()
  {
    if (this.C.c());
    for (float f1 = this.p.f(); ; f1 = 0.0F)
      return f1 + this.X.d();
  }

  final void x()
  {
    this.C.b(-57.29578F * w());
  }

  public final com.nianticproject.ingress.common.scanner.modes.a y()
  {
    return this.X;
  }

  public final float z()
  {
    return this.w;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.k
 * JD-Core Version:    0.6.2
 */