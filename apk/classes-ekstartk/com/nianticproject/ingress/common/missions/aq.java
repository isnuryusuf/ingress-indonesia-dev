package com.nianticproject.ingress.common.missions;

import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.h.c;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.PersistentGameEntity;
import com.nianticproject.ingress.gameentity.components.DefaultActionRange;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.SimpleCaptured;
import com.nianticproject.ingress.gameentity.components.SimplePortal;
import com.nianticproject.ingress.gameentity.components.SimpleTeam;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public final class aq extends y
{
  private final af a;
  private final d b;
  private final int c;
  private final int d;
  private final Set<String> e = jc.a();
  private boolean f = false;
  private Runnable g;
  private boolean h;
  private final AtomicBoolean i = new AtomicBoolean(true);
  private final com.nianticproject.ingress.common.g.f j = new ar(this);

  public aq(af paramaf, d paramd)
  {
    this(paramaf, paramd, 1, 5000);
  }

  public aq(af paramaf, d paramd, int paramInt1, int paramInt2)
  {
    this.a = paramaf;
    this.b = paramd;
    this.c = paramInt1;
    this.d = paramInt2;
    paramaf.j.a(this.j);
  }

  private static int a(Portal paramPortal)
  {
    Iterator localIterator = paramPortal.getLinkedResonatorGuids().g().iterator();
    int k = 0;
    if (localIterator.hasNext())
    {
      r localr = (r)localIterator.next();
      if (c.a((String)paramPortal.getLinkedResonatorGuids().get(localr)))
        break label66;
    }
    label66: for (int m = k + 1; ; m = k)
    {
      k = m;
      break;
      return k;
    }
  }

  public final RpcResult<String, com.nianticproject.ingress.shared.ad> a(String paramString, com.nianticproject.ingress.gameentity.f paramf)
  {
    if (!this.f)
      return super.a(paramString, paramf);
    if (this.i.compareAndSet(true, false))
    {
      Portal localPortal = (Portal)paramf.getComponent(Portal.class);
      if (a(localPortal) < 8)
      {
        LocationE6 localLocationE6 = (LocationE6)paramf.getComponent(LocationE6.class);
        SimplePortal localSimplePortal = new SimplePortal();
        PersistentGameEntity localPersistentGameEntity = new GameEntityBuilder(paramf.getGuid()).a(localLocationE6).a(localSimplePortal).a(new SimpleTeam(this.a.k.h())).a(new DefaultActionRange()).a(new SimpleCaptured(System.currentTimeMillis(), this.a.k.k())).a();
        Iterator localIterator = localPortal.getLinkedResonatorGuids().g().iterator();
        while (localIterator.hasNext())
        {
          r localr = (r)localIterator.next();
          String str = (String)localPortal.getLinkedResonatorGuids().get(localr);
          if (!c.a(str))
            localSimplePortal.addLinkedResonator(str, ((Integer)localPortal.getLinkedResonatorLevels().get(localr)).intValue(), localr, this.a.k.k());
        }
        com.nianticproject.ingress.gameentity.f localf = this.a.j.a(localSimplePortal, localLocationE6.getLatLng(), 1, 0, this.a.k.k(), this.a.k.h());
        return RpcResult.a(localf.getGuid(), new g().a(du.a(localPersistentGameEntity, localf)).a());
      }
      return RpcResult.a(com.nianticproject.ingress.shared.ad.m);
    }
    return RpcResult.a(com.nianticproject.ingress.shared.ad.i);
  }

  public final void a(Runnable paramRunnable)
  {
    this.f = true;
    this.g = paramRunnable;
  }

  public final void a(String paramString)
  {
    this.e.add(paramString);
    this.a.j.b(this.j);
    this.a.j.a(this.j);
  }

  public final void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public final boolean a()
  {
    if (this.f)
      return this.i.get();
    if (this.h)
      return true;
    return super.a();
  }

  public final void b()
  {
    this.i.set(true);
  }

  public final void b(String paramString)
  {
    this.e.remove(paramString);
    if (this.e.isEmpty())
      this.a.j.b(this.j);
  }

  public final void c()
  {
    this.f = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.aq
 * JD-Core Version:    0.6.2
 */