package com.nianticproject.ingress.common.g;

import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.model.i;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.PersistentGameEntity;
import com.nianticproject.ingress.gameentity.components.DefaultActionRange;
import com.nianticproject.ingress.gameentity.components.ImmutableCapturedRegion;
import com.nianticproject.ingress.gameentity.components.ImmutableEdge;
import com.nianticproject.ingress.gameentity.components.ImmutableImageByUrl;
import com.nianticproject.ingress.gameentity.components.ImmutableLocationE6;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.SimpleCaptured;
import com.nianticproject.ingress.gameentity.components.SimpleDamageable;
import com.nianticproject.ingress.gameentity.components.SimpleEntityScore;
import com.nianticproject.ingress.gameentity.components.SimplePortal;
import com.nianticproject.ingress.gameentity.components.SimpleResonator;
import com.nianticproject.ingress.gameentity.components.SimpleTeam;
import com.nianticproject.ingress.gameentity.components.portal.SimplePhotoStreamInfo;
import com.nianticproject.ingress.knobs.PortalKnobBundle;
import com.nianticproject.ingress.shared.RegionPoint;
import com.nianticproject.ingress.shared.ab;
import com.nianticproject.ingress.shared.ac;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.m;
import com.nianticproject.ingress.shared.model.SimpleGameStateUpdate;
import com.nianticproject.ingress.shared.r;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public final class ae
  implements ad
{
  private final e a;
  private final e b;
  private final AtomicInteger c = new AtomicInteger();
  private final Set<String> d = com.nianticproject.ingress.common.w.j.a();
  private final Set<g> e = com.nianticproject.ingress.common.w.j.a();

  public ae(e parame1, e parame2)
  {
    this.a = parame1;
    this.b = parame2;
  }

  public final ak<i, Long> a(h paramh, long paramLong)
  {
    return this.a.a(paramh, paramLong);
  }

  public final com.nianticproject.ingress.gameentity.f a(u paramu, ai paramai, int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3)
  {
    HashSet localHashSet = jc.a();
    String str = "training." + com.nianticproject.ingress.shared.g.a(com.nianticproject.ingress.shared.g.b);
    SimplePortal localSimplePortal = new SimplePortal();
    GameEntityBuilder localGameEntityBuilder = new GameEntityBuilder(str).a(com.nianticproject.ingress.shared.b.a.b(paramu)).a(new SimpleTeam(paramai)).a(localSimplePortal).a(new DefaultActionRange()).a(new SimplePhotoStreamInfo(null, 0));
    if (paramString3 != null)
      localGameEntityBuilder.a(new ImmutableImageByUrl(paramString3));
    PersistentGameEntity localPersistentGameEntity = localGameEntityBuilder.a();
    this.d.add(str);
    localHashSet.add(localPersistentGameEntity);
    for (int i = 0; i < paramInt1; i++)
      localHashSet.add(a(localSimplePortal, paramu, paramInt2, paramInt3, paramString1, paramai));
    localSimplePortal.addOrUpdateDescriptiveText(m.a, paramString2);
    SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().a(localHashSet).a();
    this.a.a(localSimpleGameStateUpdate);
    return localPersistentGameEntity;
  }

  public final com.nianticproject.ingress.gameentity.f a(Portal paramPortal, u paramu, int paramInt1, int paramInt2, String paramString, ai paramai)
  {
    ab localab = new ab(new PortalKnobBundle());
    String str = "training." + com.nianticproject.ingress.shared.g.a(com.nianticproject.ingress.shared.g.c);
    u localu1 = com.nianticproject.ingress.shared.b.a.b(paramu, 0.0D, 20.0D);
    r localr = ac.a(paramPortal, new ImmutableLocationE6(localu1));
    u localu2 = ac.a(new ImmutableLocationE6(paramu), new ImmutableLocationE6(localu1), localr);
    SimpleResonator localSimpleResonator = new SimpleResonator(paramInt1, paramPortal.getEntity().getGuid(), paramString);
    PersistentGameEntity localPersistentGameEntity = new GameEntityBuilder(str).a(localSimpleResonator).a(new SimpleTeam(paramai)).a(new SimpleCaptured(System.currentTimeMillis(), paramString)).a(com.nianticproject.ingress.shared.b.a.b(localu2)).a(new SimpleDamageable(localSimpleResonator.getEnergyCapacity() - paramInt2)).a();
    this.d.add(str);
    localab.a(localPersistentGameEntity, paramPortal, paramString, localr);
    return localPersistentGameEntity;
  }

  public final com.nianticproject.ingress.gameentity.f a(com.nianticproject.ingress.gameentity.f paramf)
  {
    return this.b.a(paramf);
  }

  public final com.nianticproject.ingress.gameentity.f a(ai paramai, Portal paramPortal1, Portal paramPortal2)
  {
    ImmutableEdge localImmutableEdge = new ImmutableEdge(paramPortal1.getEntityGuid(), paramPortal2.getEntityGuid(), (LocationE6)paramPortal1.getEntity().getComponent(LocationE6.class), (LocationE6)paramPortal2.getEntity().getComponent(LocationE6.class));
    String str = "training_edge." + com.nianticproject.ingress.shared.g.a(com.nianticproject.ingress.shared.g.i);
    PersistentGameEntity localPersistentGameEntity = new GameEntityBuilder(str).a(new SimpleTeam(paramai)).a(localImmutableEdge).a();
    this.d.add(str);
    SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().a(du.b(localPersistentGameEntity)).a();
    this.a.a(localSimpleGameStateUpdate);
    return localPersistentGameEntity;
  }

  public final com.nianticproject.ingress.gameentity.f a(ai paramai, Collection<Portal> paramCollection, long paramLong)
  {
    if (paramCollection.size() == 3);
    RegionPoint[] arrayOfRegionPoint;
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "illegal portals.size=" + paramCollection.size());
      arrayOfRegionPoint = new RegionPoint[3];
      Iterator localIterator = paramCollection.iterator();
      int j;
      for (int i = 0; localIterator.hasNext(); i = j)
      {
        Portal localPortal = (Portal)localIterator.next();
        j = i + 1;
        arrayOfRegionPoint[i] = RegionPoint.a(localPortal.getEntity());
      }
    }
    ImmutableCapturedRegion localImmutableCapturedRegion = new ImmutableCapturedRegion(arrayOfRegionPoint[0], arrayOfRegionPoint[1], arrayOfRegionPoint[2]);
    String str = "training_region." + com.nianticproject.ingress.shared.g.a(com.nianticproject.ingress.shared.g.k);
    PersistentGameEntity localPersistentGameEntity = new GameEntityBuilder(str).a(new SimpleTeam(paramai)).a(new SimpleEntityScore(paramLong)).a(localImmutableCapturedRegion).a();
    this.d.add(str);
    SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().a(du.b(localPersistentGameEntity)).a();
    this.a.a(localSimpleGameStateUpdate);
    return localPersistentGameEntity;
  }

  public final com.nianticproject.ingress.gameentity.f a(String paramString)
  {
    return this.a.a(paramString);
  }

  public final <T extends com.nianticproject.ingress.gameentity.a> Collection<T> a(Class<T> paramClass, h paramh)
  {
    return this.a.a(paramClass, paramh);
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> a(Collection<com.nianticproject.ingress.shared.af> paramCollection)
  {
    return this.a.a(paramCollection);
  }

  public final void a(long paramLong)
  {
    this.b.a(paramLong);
  }

  public final void a(u paramu, int paramInt)
  {
    long l = com.google.a.d.j.a(paramu).d();
    int i = this.c.incrementAndGet();
    if ((paramInt >= 0) && (i >= 0));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      String str = com.nianticproject.ingress.shared.g.a(com.nianticproject.ingress.shared.g.f, l, i << 32 | paramInt);
      this.d.add(str);
      SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().a(du.b(str), Long.valueOf(System.currentTimeMillis())).a();
      this.a.a(localSimpleGameStateUpdate);
      return;
    }
  }

  public final void a(f paramf)
  {
    this.a.a(paramf);
  }

  public final void a(g paramg)
  {
    this.a.a(paramg);
    this.e.add(paramg);
  }

  public final void a(com.nianticproject.ingress.shared.model.e parame)
  {
    if (parame.f() != null)
    {
      HashSet localHashSet = jc.a(parame.f());
      Set localSet3 = jc.a(localHashSet, new af(this));
      parame = SimpleGameStateUpdate.a(parame).a(jc.a(localHashSet, localSet3)).a();
      this.a.a(SimpleGameStateUpdate.m().a(localSet3).a());
      this.d.remove(localSet3);
    }
    if (parame.b() != null)
    {
      Set localSet2 = jc.a(parame.b(), new ag(this));
      parame = SimpleGameStateUpdate.a(parame).a(jc.a(parame.b(), localSet2)).a();
      this.a.a(SimpleGameStateUpdate.m().a(localSet2).a());
    }
    if (parame.c() != null)
    {
      Set localSet1 = jc.a(parame.c(), new ah(this));
      parame = SimpleGameStateUpdate.a(parame).b(jc.a(parame.c(), localSet1)).a();
      this.a.a(SimpleGameStateUpdate.m().b(localSet1).a());
    }
    this.b.a(parame);
  }

  public final void a(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    this.b.a(paramArrayOfLong1, paramArrayOfLong2);
  }

  public final boolean a(Set<String> paramSet)
  {
    return this.a.a(paramSet);
  }

  public final long[] a(long[] paramArrayOfLong)
  {
    return this.b.a(paramArrayOfLong);
  }

  public final com.nianticproject.ingress.gameentity.f b(String paramString)
  {
    return this.a.b(paramString);
  }

  public final void b()
  {
  }

  public final void b(f paramf)
  {
    this.a.b(paramf);
  }

  public final void b(g paramg)
  {
    this.a.b(paramg);
    this.e.remove(paramg);
  }

  public final void b(com.nianticproject.ingress.gameentity.f paramf)
  {
    this.b.b(paramf);
  }

  public final void b(Collection<com.nianticproject.ingress.gameentity.f> paramCollection)
  {
    SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().b(du.a(paramCollection)).a();
    this.a.a(localSimpleGameStateUpdate);
    Iterator localIterator1 = paramCollection.iterator();
    while (localIterator1.hasNext())
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator1.next();
      this.d.add(localf.getGuid());
    }
    Iterator localIterator2 = this.e.iterator();
    while (localIterator2.hasNext())
      ((g)localIterator2.next()).a();
  }

  public final boolean b(Set<String> paramSet)
  {
    return this.a.b(paramSet);
  }

  public final void c()
  {
    this.b.c();
  }

  public final void c(Set<String> paramSet)
  {
    SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().a(paramSet).a();
    this.a.a(localSimpleGameStateUpdate);
  }

  public final void d()
  {
    this.b.d();
  }

  public final void d(Set<com.nianticproject.ingress.gameentity.f> paramSet)
  {
    SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().a(paramSet).a();
    this.a.a(localSimpleGameStateUpdate);
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> e()
  {
    return this.a.e();
  }

  public final int f()
  {
    return this.a.f();
  }

  public final long g()
  {
    return this.b.g();
  }

  public final e h()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.ae
 * JD-Core Version:    0.6.2
 */