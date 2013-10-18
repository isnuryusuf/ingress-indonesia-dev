package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;
import com.google.a.a.br;
import com.google.a.c.dh;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.j.ar;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.em;
import com.nianticproject.ingress.common.scanner.en;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.scanner.gf;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.ui.d.e;
import com.nianticproject.ingress.common.ui.e.d;
import com.nianticproject.ingress.common.ui.g.m;
import com.nianticproject.ingress.common.ui.g.s;
import com.nianticproject.ingress.common.ui.hud.PortalInfoHud;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment.SelectableHudStyle;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.components.i;
import com.nianticproject.ingress.shared.n;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class ah extends e
  implements en, com.nianticproject.ingress.common.ui.e.a
{
  private static final aa a = new aa(ah.class);
  private static final double b = Math.toRadians(90.0D);
  private List<q> A;
  private final Map<String, q> B = hc.b();
  private s C;
  private com.nianticproject.ingress.common.ui.g.c D;
  private boolean E = true;
  private boolean F;
  private u G;
  private final com.nianticproject.ingress.common.ui.g.g H = new aj(this);
  private final com.nianticproject.ingress.common.ui.g.f I = new ak(this);
  private final com.nianticproject.ingress.common.scanner.k c;
  private final fp d;
  private final h e;
  private final l f;
  private final r g;
  private final av h;
  private final com.nianticproject.ingress.common.model.k i;
  private af j;
  private ap k;
  private m l;
  private boolean m;
  private Portal n;
  private PortalInfoHud o;
  private final Map<String, SelectableHudFragment> p = hc.b();
  private GameState q;
  private long r;
  private com.nianticproject.ingress.common.j.as s;
  private final com.nianticproject.ingress.common.j.ap t;
  private final ar u;
  private final SelectableHudFragment.SelectableHudStyle v;
  private final Vector2 w = new Vector2();
  private em x;
  private float y = 0.0F;
  private am z;

  public ah(com.nianticproject.ingress.common.scanner.k paramk, fp paramfp, h paramh, Portal paramPortal, com.nianticproject.ingress.common.model.k paramk1, l paraml, r paramr, av paramav)
  {
    this.d = ((fp)com.google.a.a.an.a(paramfp));
    this.c = ((com.nianticproject.ingress.common.scanner.k)com.google.a.a.an.a(paramk));
    this.e = ((h)com.google.a.a.an.a(paramh));
    this.f = ((l)com.google.a.a.an.a(paraml));
    this.n = ((Portal)com.google.a.a.an.a(paramPortal));
    this.g = ((r)com.google.a.a.an.a(paramr));
    this.h = paramav;
    com.nianticproject.ingress.common.j.ap localap = new com.nianticproject.ingress.common.j.ap();
    localap.a = 40.0F;
    localap.b = 15.0F;
    localap.c = 2048.0F;
    this.t = localap;
    this.u = new ai(this);
    this.v = new SelectableHudFragment.SelectableHudStyle();
    this.v.defaultColor = ea.a(paramk1.h());
    this.z = new am(this, (byte)0);
    this.i = paramk1;
  }

  private void a(Vector2 paramVector2)
  {
    if (this.E);
    for (float f1 = 20.0F; ; f1 = 1.2F * d())
    {
      paramVector2.add(f1 * -this.t.f.x, f1 * -this.t.f.z);
      return;
    }
  }

  private void b(float paramFloat1, float paramFloat2)
  {
    this.w.set(paramFloat1, paramFloat2);
  }

  private void b(Vector2 paramVector2)
  {
    b(paramVector2.x, paramVector2.y);
    this.t.e.set(paramVector2.x, this.t.e.y, paramVector2.y);
    this.t.d.set(paramVector2.x, this.t.d.y, paramVector2.y);
  }

  private Vector2 c(float paramFloat1, float paramFloat2)
  {
    Ray localRay = com.nianticproject.ingress.common.j.g.a(this.s, paramFloat1 / this.c.A(), 1.0F - paramFloat2 / this.c.z());
    if (localRay != null)
    {
      float f1 = localRay.origin.y / localRay.direction.y;
      return new Vector2(localRay.origin.x - f1 * localRay.direction.x, localRay.origin.z - f1 * localRay.direction.z);
    }
    return null;
  }

  private float d()
  {
    return (float)Math.min(300L, this.r);
  }

  private void e()
  {
    if ((this.q == null) || (this.x == null) || (this.m));
    com.nianticproject.ingress.gameentity.f localf;
    do
    {
      PortalCoupler localPortalCoupler;
      ej localej;
      do
      {
        return;
        String str = this.x.b();
        localf = (com.nianticproject.ingress.gameentity.f)this.q.gameEntities.get(str);
        if ((localf == null) || (this.o != null))
          break;
        localPortalCoupler = (PortalCoupler)((q)this.B.get(str)).h().getComponent(PortalCoupler.class);
        localej = this.c.b(str);
      }
      while ((localPortalCoupler == null) || (localej == null));
      this.o = new PortalInfoHud(this.e, this.i, localf, gf.a(localPortalCoupler), null, null);
      this.c.a(localej, this.o);
      Portal localPortal = (Portal)localf.getComponent(Portal.class);
      this.l.a(localPortal.getLevel());
      this.o.a(this.E);
      return;
    }
    while ((localf != null) || (this.o == null));
    this.o.a();
    this.o = null;
  }

  private void f()
  {
    if ((this.j == null) || (this.x == null) || (this.m));
    String str;
    do
    {
      return;
      ad localad = this.i.g();
      if ((localad == null) || (!i.a(this.n.getEntity(), localad.a())))
      {
        this.j.a("Origin portal moved out of range");
        return;
      }
      str = this.x.b();
      if (str != null)
        break;
      if (this.C.c())
      {
        this.j.a("Querying Linkability...", true);
        return;
      }
      if (this.C.b() == 0)
      {
        this.j.a("No Linkable Portals");
        return;
      }
      this.j.a("Select a Portal Key");
    }
    while (!this.F);
    this.F = false;
    this.l.a();
    return;
    q localq = (q)this.B.get(str);
    if (localq == null)
    {
      this.j.a("No Key for Portal");
      return;
    }
    n localn = this.C.d(localq);
    if (localn != null)
    {
      this.j.a(com.nianticproject.ingress.common.ui.c.a().a(localn));
      return;
    }
    if (this.C.c(localq))
    {
      this.j.a("Create Link");
      return;
    }
    this.j.a("Obtaining Portal Fix...", true);
  }

  private void g()
  {
    this.t.f.set(this.t.d).sub(this.t.e).crs(Vector3.X).nor();
  }

  public final d a()
  {
    return new d(false, false);
  }

  public final void a(u paramu)
  {
    this.G = paramu;
    if (this.o != null)
    {
      this.o.a();
      this.o = null;
    }
    e();
    f();
    ap.a(this.k);
    Vector2 localVector2 = new Vector2();
    this.d.a(paramu, localVector2);
    a(localVector2);
    b(localVector2.x, localVector2.y);
  }

  public final void a(com.nianticproject.ingress.common.j.as paramas)
  {
    Vector2 localVector2 = Vector2.Zero;
    double d1 = Math.max(100.0F, 1.1F * ((int)this.r * (this.c.z() / this.c.A()))) / Math.tan(Math.toRadians(20.0D));
    double d2 = Math.min(this.t.c - 512.0F, d1);
    this.t.d.set(localVector2.x, 0.0F, localVector2.y);
    this.t.e.set(0.0F, (float)(d2 * Math.sin(b)), (float)(d2 * -Math.cos(b))).add(this.t.d);
    g();
    b(Vector2.Zero);
    paramas.a(this.u, 0.75F);
    this.s = paramas;
    com.google.a.a.an.a(this.c.b(this.n.getEntityGuid()));
    this.j = new af(paramas, "small");
    this.k = new ap(this, (byte)0);
    this.c.a(this.j);
    this.c.a(this.k);
    this.x = new em(this.c, this, this.g);
    this.i.a(this.z);
    com.google.a.a.aj localaj = com.nianticproject.ingress.common.gameentity.a.a(this.i, com.nianticproject.ingress.shared.af.i);
    List localList = q.a(this.i, (Collection)localaj.a(Collections.emptySet()));
    Portal localPortal = this.n;
    Iterator localIterator1 = localList.iterator();
    label385: 
    while (localIterator1.hasNext())
    {
      q localq = (q)localIterator1.next();
      PortalCoupler localPortalCoupler = (PortalCoupler)localq.h().getComponent(PortalCoupler.class);
      if (localPortalCoupler != null);
      for (String str = localPortalCoupler.getPortalGuid(); ; str = null)
      {
        if (str == null)
          break label385;
        this.B.put(str, localq);
        break;
      }
    }
    this.B.remove(localPortal.getEntityGuid());
    ArrayList localArrayList = eq.b(this.B.size());
    u localu = ((LocationE6)localPortal.getEntity().getComponent(LocationE6.class)).getLatLng();
    Iterator localIterator2 = this.B.values().iterator();
    while (localIterator2.hasNext())
      localArrayList.add(new an(this, localu, (q)localIterator2.next()));
    Collections.sort(localArrayList, new as(this, (byte)0));
    this.A = eq.b(this.B.size());
    Iterator localIterator3 = localArrayList.iterator();
    while (localIterator3.hasNext())
    {
      an localan = (an)localIterator3.next();
      this.A.add(localan.b);
    }
    if (!localaj.a())
      this.j.a("No Keys In Inventory");
    while (true)
    {
      this.C = new s(this.A);
      this.l = new m(this.h, this.x, this.i, this.C);
      this.c.a(this.l);
      this.D = new com.nianticproject.ingress.common.ui.g.c(this.f, this.n.getEntityGuid(), this.H);
      this.D.a(this.I);
      this.D.a();
      this.F = true;
      return;
      if (this.A.isEmpty())
        this.j.a("No Usable Keys In Inventory");
      else
        this.j.a("Querying Linkability...", true);
    }
  }

  public final void a(GameState paramGameState)
  {
    String str = this.n.getEntityGuid();
    this.q = ((GameState)com.google.a.a.an.a(paramGameState));
    com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)this.q.gameEntities.get(str);
    if ((localf != null) && (localf.getComponent(Portal.class) != null))
    {
      this.n = ((Portal)localf.getComponent(Portal.class));
      this.r = this.n.maxLinkRange();
    }
    e();
    f();
  }

  public final void a(String paramString)
  {
    boolean bool;
    q localq;
    if (!br.b(paramString))
    {
      bool = true;
      com.google.a.a.an.a(bool);
      localq = (q)this.B.get(paramString);
      if (localq != null)
        break label37;
    }
    label37: com.nianticproject.ingress.gameentity.f localf;
    do
    {
      return;
      bool = false;
      break;
      localf = (com.nianticproject.ingress.gameentity.f)this.q.gameEntities.get(paramString);
    }
    while (localf == null);
    this.j.a("... Establishing Link ... ", true);
    this.m = true;
    Portal localPortal = (Portal)localf.getComponent(Portal.class);
    this.f.a(this.n, localPortal, localq.h().getGuid(), new ao(this, localq));
    if (p.a().G());
    for (this.y = 8.0F; ; this.y = 4.0F)
    {
      this.x.a(this.n.getEntity(), localf, this.i.h());
      this.l.a(false);
      if (this.o != null)
      {
        this.o.a();
        this.o = null;
      }
      ap.a(this.k, false);
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.E = paramBoolean;
    if (this.G != null)
      a(this.G);
  }

  public final boolean a(float paramFloat)
  {
    this.j.b(10.0F + this.k.a());
    this.l.b(10.0F + this.j.b());
    if ((!this.c.o().isPanning()) && (!this.m))
    {
      float f1 = d();
      float f2 = this.t.d.x;
      float f3 = this.t.d.z;
      float f4 = Vector2.Zero.dst(f2, f3);
      if (f4 > f1 + 1.0F)
        b(f2 * f1 / f4, f1 * f3 / f4);
      if (this.w.dst(f2, f3) > 1.0F)
      {
        float f5 = Math.max(Math.min(5.0F * paramFloat, 1.0F), 0.1F);
        float f6 = f2 - f5 * (f2 - this.w.x);
        float f7 = f3 - f5 * (f3 - this.w.y);
        this.t.e.set(f6, this.t.e.y, f7);
        this.t.d.set(f6, this.t.d.y, f7);
      }
    }
    if (this.m)
    {
      this.y -= paramFloat;
      if (this.y < 0.0F)
        this.x.a(true);
    }
    while (this.s != null)
      return true;
    return false;
  }

  public final boolean a(float paramFloat1, float paramFloat2)
  {
    if (this.m)
      return true;
    Vector3 localVector31 = new Vector3(this.t.e).sub(this.t.d).div(paramFloat1);
    Vector3 localVector32 = this.t.e.set(this.t.d);
    float f1 = localVector31.len();
    localVector32.add(localVector31.div(f1 / Math.min(1948.0F, Math.max(f1, 100.0F))));
    Vector3 localVector33 = this.t.f;
    float f2 = (float)Math.cos(-paramFloat2);
    float f3 = (float)Math.sin(-paramFloat2);
    float f4 = f2 * localVector33.x - f3 * localVector33.z;
    float f5 = f3 * localVector33.x + f2 * localVector33.z;
    this.t.f.x = f4;
    this.t.f.z = f5;
    return true;
  }

  public final boolean a(ej paramej)
  {
    if (this.m)
      return true;
    if (paramej == null)
      return false;
    com.nianticproject.ingress.gameentity.f localf = paramej.e();
    Portal localPortal = (Portal)localf.getComponent(Portal.class);
    if ((localPortal != null) && (localPortal != this.n))
    {
      q localq = (q)this.B.get(localf.getGuid());
      if (localq == null)
        this.j.a("No Key for Portal");
      while (true)
      {
        return true;
        this.x.a((PortalCoupler)localq.h().getComponent(PortalCoupler.class));
        this.l.a(localq);
      }
    }
    return false;
  }

  public final boolean a(bt parambt)
  {
    return false;
  }

  public final void b()
  {
    this.D.b();
    this.x.a(false);
    if (this.o != null)
      this.o.a();
    Iterator localIterator = this.p.values().iterator();
    while (localIterator.hasNext())
      ((SelectableHudFragment)localIterator.next()).a();
    this.c.b(this.j);
    this.j = null;
    this.c.b(this.k);
    this.k = null;
    this.c.b(this.l);
    this.l = null;
    this.s = null;
    this.i.b(this.z);
  }

  public final void b(u paramu)
  {
    Vector2 localVector2 = new Vector2();
    this.d.a(paramu, localVector2);
    g();
    a(localVector2);
    b(localVector2);
  }

  public final void dispose()
  {
  }

  public final boolean pan(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (this.m);
    Vector2 localVector21;
    Vector2 localVector22;
    do
    {
      return true;
      localVector21 = c(paramFloat1, paramFloat2);
      localVector22 = c(paramFloat1 + paramFloat3, paramFloat2 + paramFloat4);
    }
    while ((localVector21 == null) || (localVector22 == null));
    float f1 = localVector21.x - localVector22.x;
    float f2 = localVector21.y - localVector22.y;
    float f3 = 1.2F * d();
    Vector2 localVector23 = Vector2.Zero;
    float f4 = f1 + this.t.d.x;
    float f5 = f2 + this.t.d.z;
    float f6 = localVector23.dst(f4, f5);
    if (f6 > f3)
    {
      float f7 = f3 / f6;
      f4 = f7 * (f4 - localVector23.x) + localVector23.x;
      f5 = f7 * (f5 - localVector23.y) + localVector23.y;
    }
    this.t.e.set(f4, this.t.e.y, f5);
    this.t.d.set(f4, this.t.d.y, f5);
    b(f4, f5);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.ah
 * JD-Core Version:    0.6.2
 */