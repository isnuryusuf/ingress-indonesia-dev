package com.nianticproject.ingress.common.missions.tutorial;

import com.google.a.c.du;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.ai;
import com.nianticproject.ingress.common.aj;
import com.nianticproject.ingress.common.missions.ep;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.PersistentGameEntity;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.SimpleEmpWeapon;
import com.nianticproject.ingress.gameentity.components.SimpleInInventory;
import com.nianticproject.ingress.gameentity.components.SimpleResourceWithLevels;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;

final class i extends com.nianticproject.ingress.common.w.g
  implements aj, ep
{
  static final d a = new com.nianticproject.ingress.common.w.f("HACKING_COMPLETE_EVENT");
  private final u b;
  private final com.nianticproject.ingress.common.h.k c;
  private final com.nianticproject.ingress.common.model.k d;

  public i(u paramu, com.nianticproject.ingress.common.h.k paramk, com.nianticproject.ingress.common.model.k paramk1)
  {
    super("PendingHackState");
    this.b = paramu;
    this.c = paramk;
    this.d = paramk1;
  }

  public final RpcResult<CollectItemsFromPortalResult, ae> a(Portal paramPortal)
  {
    PersistentGameEntity localPersistentGameEntity = new GameEntityBuilder("hacked_xmp_guid").a(new SimpleResourceWithLevels(af.b, 1)).a(new SimpleInInventory(this.d.k(), System.currentTimeMillis())).a(new SimpleEmpWeapon(1)).a();
    return RpcResult.a(new CollectItemsFromPortalResult(du.b("hacked_xmp_guid")), new com.nianticproject.ingress.shared.rpc.g().c(jc.a(new com.nianticproject.ingress.gameentity.f[] { localPersistentGameEntity })).a());
  }

  public final void a()
  {
    this.c.a(this);
    ai.a(this);
  }

  public final void b()
  {
    this.b.a(a);
  }

  public final void u_()
  {
    ai.b(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.i
 * JD-Core Version:    0.6.2
 */