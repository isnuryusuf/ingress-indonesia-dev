package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.PersistentGameEntity;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.SimpleEmpWeapon;
import com.nianticproject.ingress.gameentity.components.SimpleInInventory;
import com.nianticproject.ingress.gameentity.components.SimpleResourceWithLevels;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.g;

final class ez
  implements ep
{
  ez(eu parameu)
  {
  }

  public final RpcResult<CollectItemsFromPortalResult, ae> a(Portal paramPortal)
  {
    PersistentGameEntity localPersistentGameEntity = new GameEntityBuilder("hacked_xmp_guid").a(new SimpleResourceWithLevels(af.b, 1)).a(new SimpleInInventory(this.a.k.k(), System.currentTimeMillis())).a(new SimpleEmpWeapon(1)).a();
    this.a.j.b(du.b(localPersistentGameEntity));
    a.a(this.a, "HackedPortal");
    this.a.t().a(eu.e(this.a));
    return RpcResult.a(new CollectItemsFromPortalResult(du.b("hacked_xmp_guid")), new g().b(jc.a(new f[] { localPersistentGameEntity })).a());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ez
 * JD-Core Version:    0.6.2
 */