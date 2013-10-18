package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.a.b;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.components.Captured;
import com.nianticproject.ingress.gameentity.components.ControllingTeam;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.SimpleDamageable;
import com.nianticproject.ingress.gameentity.components.SimpleResonator;
import com.nianticproject.ingress.shared.model.SimpleGameStateUpdate;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

final class di
  implements er
{
  private boolean b;

  private di(da paramda)
  {
  }

  public final RpcResult<Void, com.nianticproject.ingress.shared.ad> a(com.nianticproject.ingress.gameentity.f paramf, Set<r> paramSet)
  {
    if (!this.b)
      return da.c(this.a).a(paramf, paramSet);
    this.a.c.getComponent(Portal.class);
    com.nianticproject.ingress.common.g.ac localac = new com.nianticproject.ingress.common.g.ac(this.a.b.a);
    Collection localCollection = this.a.j.a(Resonator.class, localac);
    ArrayList localArrayList = eq.a();
    Iterator localIterator = localCollection.iterator();
    while (localIterator.hasNext())
    {
      Resonator localResonator = (Resonator)localIterator.next();
      if (this.a.c.getGuid().equals(localResonator.getLinkedPortalGuid()))
      {
        com.nianticproject.ingress.gameentity.f localf = localResonator.getEntity();
        SimpleResonator localSimpleResonator = new SimpleResonator(localResonator.getLevel(), localResonator.getLinkedPortalGuid(), localResonator.getOwnerId());
        localArrayList.add(new GameEntityBuilder(localf.getGuid()).a(localSimpleResonator).a(localf.getComponent(ControllingTeam.class)).a(localf.getComponent(Captured.class)).a(localf.getComponent(LocationE6.class)).a(new SimpleDamageable(localResonator.getEnergyCapacity())).a());
      }
    }
    if (localArrayList.size() != 8)
    {
      a.a(b.h, "BadResonatorCountInPortalMission");
      da.w().b("Unexpected resonator count in recharge in prepare portal mission. entityList.size(" + localArrayList.size() + ") RECHARGE_RESONATOR_COUNT(8)");
    }
    RpcResult localRpcResult = RpcResult.a(null, new g().a(du.a(localArrayList)).a());
    SimpleGameStateUpdate localSimpleGameStateUpdate = SimpleGameStateUpdate.m().a(du.a(localArrayList)).a();
    this.a.j.a(localSimpleGameStateUpdate);
    a.a(this.a, "RechargedResonators");
    this.a.a(da.d(this.a), 5, TimeUnit.SECONDS);
    da.e(this.a).b = false;
    this.a.n.a(bs.aD);
    return localRpcResult;
  }

  public final void a()
  {
    this.b = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.di
 * JD-Core Version:    0.6.2
 */