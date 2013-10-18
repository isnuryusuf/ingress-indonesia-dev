package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.google.a.c.jc;
import com.google.a.c.lj;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.FireEmpResult;
import com.nianticproject.ingress.shared.e;
import com.nianticproject.ingress.shared.model.DamageDetail;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.GameBasket;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

final class bb
  implements em
{
  bb(aw paramaw)
  {
  }

  public final RpcResult<FireEmpResult, e> a()
  {
    if (!aw.b(this.a).compareAndSet(true, false))
      return RpcResult.a(e.f);
    GameBasket localGameBasket = new g().a();
    HashSet localHashSet = jc.a();
    if ((this.a.k.k() != null) && (aw.f(this.a) != null))
    {
      du localdu = ((Portal)this.a.c.getComponent(Portal.class)).getOccupiedSlots();
      if (localdu.size() == 1)
      {
        r localr = (r)localdu.b().next();
        localHashSet.add(new DamageDetail(this.a.k.k(), this.a.c.getGuid(), localr.ordinal(), aw.f(this.a)));
      }
    }
    FireEmpResult localFireEmpResult = new FireEmpResult(localHashSet);
    a.a(this.a, "FiredXmp");
    this.a.a(aw.h(this.a), 400, TimeUnit.MILLISECONDS);
    return RpcResult.a(localFireEmpResult, localGameBasket);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bb
 * JD-Core Version:    0.6.2
 */