package com.nianticproject.ingress.common.scanner;

import com.google.a.a.an;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.scanner.visuals.cv;
import com.nianticproject.ingress.common.scanner.visuals.cy;
import com.nianticproject.ingress.common.ui.f.a;
import com.nianticproject.ingress.common.ui.f.e;
import com.nianticproject.ingress.common.w.c;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.w.g;
import com.nianticproject.ingress.gameentity.components.ControllingTeam;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.portal.PortalV2;
import com.nianticproject.ingress.knobs.NearbyPortalKnobs;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ez
{
  private static final d A = new com.nianticproject.ingress.common.w.f("EVENT_NO_PORTALS");
  private static final d B = new com.nianticproject.ingress.common.w.f("EVENT_TRAINING_STARTED");
  private static final d C = new com.nianticproject.ingress.common.w.f("EVENT_TRAINING_STOPPED");
  private static final d D = new com.nianticproject.ingress.common.w.f("EVENT_DESTINATION_MODE_STARTED");
  private static final d E = new com.nianticproject.ingress.common.w.f("EVENT_DESTINATION_MODE_FINISHED");
  private static final d x = new com.nianticproject.ingress.common.w.f("EVENT_ACCURATE_LOCATION_ACHIEVED");
  private static final d y = new com.nianticproject.ingress.common.w.f("EVENT_FIRST_GAMESTATE_RECEIVED");
  private static final d z = new com.nianticproject.ingress.common.w.f("EVENT_SOME_PORTALS");
  private final com.nianticproject.ingress.common.w.b F = com.nianticproject.ingress.common.w.b.a().a(this.r).a(this.r, x, this.t).a(this.t, y, this.v).a(this.u, z, this.v).a(this.v, A, this.u).a(this.r, B, this.s).a(this.t, B, this.s).a(this.s, B, this.s).a(this.u, B, this.s).a(this.v, B, this.s).a(this.w, B, this.s).a(this.s, C, this.v).a(this.r, D, this.w).a(this.t, D, this.w).a(this.s, D, this.w).a(this.u, D, this.w).a(this.v, D, this.w).a(this.w, D, this.w).a(this.w, E, this.v).b();
  private long G = -1L;
  private boolean H = false;
  private boolean I = false;
  private final fp a;
  private final com.nianticproject.ingress.common.model.k b;
  private final k c;
  private final h d;
  private final av e;
  private final ed f;
  private final l g;
  private final Map<String, cv> h = hc.b();
  private final cy i = new cy();
  private final a j;
  private final NearbyPortalKnobs k = q.k();
  private int l;
  private long m;
  private long n;
  private long o;
  private boolean p = false;
  private e q = null;
  private final g r = new fe(this, "STATE_AWAITING_ACCURATE_LOCATION");
  private final g s = new fa(this, "STATE_IN_TRAINING");
  private final g t = new fe(this, "STATE_AWAITING_NEXT_GAMESTATE_UPDATE");
  private final g u = new fb(this, "STATE_NO_PORTALS");
  private final g v = new fc(this, "STATE_SOME_PORTALS");
  private final g w = new fd(this, "STATE_IN_DESTINATION_MODE");

  public ez(fp paramfp, com.nianticproject.ingress.common.model.k paramk, k paramk1, h paramh, av paramav, ed paramed, l paraml, a parama)
  {
    this.a = paramfp;
    this.b = paramk;
    this.c = paramk1;
    this.d = paramh;
    this.e = paramav;
    this.f = paramed;
    this.g = paraml;
    this.j = parama;
    this.o = 10000L;
    this.F.b();
    paramk1.a(this.i);
  }

  private void b(List<com.nianticproject.ingress.gameentity.f> paramList)
  {
    if (!this.p);
    while (true)
    {
      return;
      c();
      HashSet localHashSet = jc.a();
      for (int i1 = 0; i1 < paramList.size(); i1++)
      {
        com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)paramList.get(i1);
        PortalV2 localPortalV2 = (PortalV2)an.a(localf.getComponent(PortalV2.class));
        u localu = ((LocationE6)localf.getComponent(LocationE6.class)).getLatLng();
        String str = localPortalV2.getEntityGuid();
        localHashSet.add(str);
        if (!this.h.containsKey(str))
        {
          ed localed = new ed(null, null, this.a, this.b, -1.0F);
          h localh = this.d;
          k localk = this.c;
          fp localfp = this.a;
          cv localcv = new cv(localh, localk, localed, localfp, this.f, this);
          this.i.a(localcv);
          this.h.put(str, localcv);
          localed.a(localu);
          localcv.a(((ControllingTeam)localf.getComponent(ControllingTeam.class)).getTeam());
          localcv.a(localPortalV2.getLevel());
          localcv.a(this.e.a(com.nianticproject.ingress.gameentity.components.f.a(localf, ""), this.l));
        }
      }
      Iterator localIterator = this.h.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (!localHashSet.contains(localEntry.getKey()))
          ((cv)localEntry.getValue()).f();
      }
    }
  }

  private void c()
  {
    Iterator localIterator = this.h.entrySet().iterator();
    while (localIterator.hasNext())
      if (((cv)((Map.Entry)localIterator.next()).getValue()).g())
        localIterator.remove();
  }

  private void d()
  {
    long l1 = System.currentTimeMillis();
    if (((this.q == null) || (this.q.c())) && (l1 > this.n))
      if (l1 <= this.m)
        if ((this.j.b() == null) || (this.b.g().a(this.j.b()) <= this.k.a()))
          break label161;
    label161: for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
      {
        this.q = new e(this.g, this.b, this.j);
        this.q.b();
        this.n = (l1 + this.o);
        if (this.o < 40000L)
          this.o <<= 1;
        this.m = (l1 + this.k.b());
      }
      return;
    }
  }

  public final void a()
  {
    this.F.a(x);
  }

  public final void a(int paramInt)
  {
    this.l = paramInt;
  }

  public final void a(List<com.nianticproject.ingress.gameentity.f> paramList)
  {
    this.o = 10000L;
    b(paramList);
  }

  public final void a(boolean paramBoolean)
  {
    com.nianticproject.ingress.common.w.b localb;
    if ((this.I) && (this.c.B().d()))
    {
      localb = this.F;
      if (!paramBoolean)
        break label39;
    }
    label39: for (d locald = z; ; locald = A)
    {
      localb.a(locald);
      return;
    }
  }

  public final void b()
  {
    if ((!this.I) && (p.a().C()))
    {
      this.I = true;
      this.F.a(y);
    }
    boolean bool = p.a().G();
    if (this.H != bool)
    {
      this.H = bool;
      localb = this.F;
      if (bool)
      {
        locald = B;
        localb.a(locald);
      }
    }
    while ((bool) || (this.G == -1L))
      while (true)
      {
        com.nianticproject.ingress.common.w.b localb;
        return;
        d locald = C;
      }
    if (this.p)
      d();
    c();
  }

  public final void b(boolean paramBoolean)
  {
    com.nianticproject.ingress.common.w.b localb = this.F;
    if (paramBoolean);
    for (d locald = D; ; locald = E)
    {
      localb.a(locald);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ez
 * JD-Core Version:    0.6.2
 */