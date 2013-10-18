package com.nianticproject.ingress.shared.rpc;

import com.google.a.c.du;
import com.google.a.c.dv;
import com.google.a.c.eg;
import com.google.a.c.jc;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.KnobBundleUpdate;
import com.nianticproject.ingress.shared.model.ApGain;
import com.nianticproject.ingress.shared.model.LevelUp;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class g
{
  private boolean a = false;
  private boolean b = false;
  private final i<Set<PlayerDamage>> c = c();
  private final i<f> d = c();
  private final i<List<ApGain>> e = c();
  private final i<LevelUp> f = c();
  private final i<Set<f>> g = c();
  private final i<Set<String>> h = c();
  private final i<Long> i = c();
  private final i<KnobBundleUpdate> j = c();
  private final i<Set<? extends f>> k = c();
  private final i<Set<? extends f>> l = c();
  private final i<List<String>> m = c();
  private final i<Set<String>> n = c();
  private final i<Set<String>> o = c();
  private final i<Set<? extends f>> p = c();
  private final i<Set<? extends f>> q = c();
  private final i<List<String>> r = c();
  private final Set<String> s = jc.a();

  private void b()
  {
    if (this.a)
      throw new IllegalArgumentException("This builder has already been built.");
  }

  private <T> i<T> c()
  {
    return new i(this);
  }

  public final GameBasket a()
  {
    while (true)
    {
      Object localObject2;
      try
      {
        b();
        this.a = true;
        boolean bool = this.b;
        GameBasket localGameBasket;
        if (bool)
        {
          localGameBasket = null;
          return localGameBasket;
        }
        Set localSet = (Set)this.c.a();
        List localList = (List)this.e.a();
        LevelUp localLevelUp = (LevelUp)this.f.a();
        dv localdv1 = du.h();
        if (this.k.a() != null)
          localdv1.b((Iterable)this.k.a());
        if (this.l.a() != null)
          localdv1.b((Iterable)this.l.a());
        du localdu1 = localdv1.a();
        dv localdv2 = du.h();
        if (this.q.a() != null)
          localdv2.b((Iterable)this.q.a());
        if (this.p.a() != null)
          localdv2.b((Iterable)this.p.a());
        du localdu2 = localdv2.a();
        dv localdv3 = du.h();
        if (this.m.a() != null)
          localdv3.b((Iterable)this.m.a());
        if (this.n.a() != null)
          localdv3.b((Iterable)this.n.a());
        if (this.o.a() != null)
          localdv3.b((Iterable)this.o.a());
        localdv3.b(this.s);
        du localdu3 = localdv3.a();
        localObject2 = (Set)this.h.a();
        if (localObject2 == null)
        {
          localObject2 = null;
          localGameBasket = new GameBasket(localSet, localList, localLevelUp, localdu1, localdu2, localdu3, (Set)localObject2, (Long)this.i.a(), (f)this.d.a(), (KnobBundleUpdate)this.j.a(), (List)this.r.a());
          continue;
        }
      }
      finally
      {
      }
      if (this.s != null)
      {
        h localh = new h(this);
        HashSet localHashSet = jc.a(eg.b(((Set)localObject2).iterator(), localh));
        localObject2 = localHashSet;
      }
    }
  }

  public final g a(Set<? extends f> paramSet)
  {
    this.k.a(paramSet);
    return this;
  }

  public final g b(Set<? extends f> paramSet)
  {
    this.p.a(paramSet);
    return this;
  }

  public final g c(Set<? extends f> paramSet)
  {
    this.q.a(paramSet);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.g
 * JD-Core Version:    0.6.2
 */