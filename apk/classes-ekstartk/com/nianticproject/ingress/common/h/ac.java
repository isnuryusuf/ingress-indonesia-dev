package com.nianticproject.ingress.common.h;

import com.google.a.a.ba;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.server.FindNearbyPortalsFail;
import com.nianticproject.ingress.shared.FireEmpResult;
import com.nianticproject.ingress.shared.GameScore;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.DischargePowerCubeResult;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.w;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ac
  implements l
{
  private final com.nianticproject.ingress.common.u.q a;
  private final com.nianticproject.ingress.common.g.e b;
  private final com.nianticproject.ingress.common.a c;
  private final k d;
  private final com.nianticproject.ingress.common.r e;
  private boolean f;
  private boolean g;

  public ac(com.nianticproject.ingress.common.u.q paramq, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.a parama, k paramk, com.nianticproject.ingress.common.r paramr)
  {
    this.a = paramq;
    this.b = parame;
    this.c = parama;
    this.d = paramk;
    this.e = paramr;
  }

  public final g a(List<String> paramList, List<Long> paramList1, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.rpc.m>> paramg, com.nianticproject.ingress.common.x.f paramf)
  {
    ag localag = new ag(this, this.a, paramList, paramList1, paramf);
    localag.a(paramg);
    return localag;
  }

  public final String a(String paramString, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<String, com.nianticproject.ingress.shared.ad>> paramg, int paramInt)
  {
    if (this.f)
    {
      RpcResult localRpcResult = RpcResult.a(com.nianticproject.ingress.shared.ad.r);
      if (paramg != null)
        paramg.a(localRpcResult);
      return null;
    }
    this.f = true;
    c localc = new c(this.a, this.c, this.b, this.d, paramString, paramPortal.getEntity(), paramInt);
    Result localResult = localc.f();
    ad localad = new ad(this, paramg);
    if (localResult.e())
    {
      localc.a(localad);
      com.nianticproject.ingress.common.a.a.b("Resonator", "deploy");
      return (String)localResult.c();
    }
    localad.a(RpcResult.a(localResult.d()));
    return null;
  }

  public final void a(ba<GameScore> paramba)
  {
    new m(this.a, this.c).a(paramba);
  }

  public final void a(Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<CollectItemsFromPortalResult, com.nianticproject.ingress.shared.ae>> paramg)
  {
    if (this.g)
    {
      paramg.a(RpcResult.a(com.nianticproject.ingress.shared.ae.j));
      return;
    }
    this.g = true;
    ae localae = new ae(this, paramg);
    new p(this.a, paramPortal, this.d).a(localae);
    com.nianticproject.ingress.common.a.a.b("Portal", "acquireItems");
  }

  public final void a(Portal paramPortal1, Portal paramPortal2, String paramString, com.nianticproject.ingress.common.x.g<RpcResult<LinkResult, com.nianticproject.ingress.shared.n>> paramg)
  {
    new q(this.a, paramPortal1.getEntity().getGuid(), paramPortal2.getEntity().getGuid(), paramString, this.b, this.c).a(paramg);
    com.nianticproject.ingress.common.a.a.b("Portal", "link");
  }

  public final void a(Resource paramResource, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.ae>> paramg)
  {
    new x(this.a, this.b, this.c, paramResource).a(paramg);
    com.nianticproject.ingress.common.a.a.b("Item", "pickUp");
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, ba<RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e>> paramba, com.nianticproject.ingress.common.x.g<RpcResult<FireEmpResult, com.nianticproject.ingress.shared.e>> paramg)
  {
    new i(paramf, this.a, this.b, this.d, paramba, this.e).a(paramg);
    com.nianticproject.ingress.common.a.a.b("Weapon", "fire");
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.x.g<RpcResult<DischargePowerCubeResult, com.nianticproject.ingress.shared.rpc.c>> paramg)
  {
    new e(paramf, this.a, this.b).a(paramg);
    com.nianticproject.ingress.common.a.a.b("PowerCube", "discharge");
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.server.flip.a>> paramg)
  {
    new j(this.e, paramf, paramPortal, this.a).a(paramg);
    com.nianticproject.ingress.common.a.a.b("Weapon", "flipCard");
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, Set<com.nianticproject.ingress.shared.r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.ad>> paramg)
  {
    new z(this.a, this.c, paramf, paramSet).a(paramg);
    com.nianticproject.ingress.common.a.a.b("Resonator", "recharge");
  }

  public final void a(String paramString)
  {
    this.c.a(paramString);
  }

  public final void a(String paramString, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Set<com.nianticproject.ingress.gameentity.f>, FindNearbyPortalsFail>> paramg)
  {
    new h(this.a, paramString, paramInt).a(paramg);
  }

  public final void a(String paramString, com.nianticproject.ingress.common.x.g<Integer> paramg)
  {
    if (com.nianticproject.ingress.common.q.f().f())
    {
      new aa(this.a, this.c, this.b, paramString, paramg).a();
      com.nianticproject.ingress.common.a.a.b("Item", "recycle");
    }
  }

  public final void a(String paramString, Modable paramModable, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.p>> paramg)
  {
    new b(this.a, this.c, this.b, paramString, paramModable, paramInt).a(paramg);
    com.nianticproject.ingress.common.a.a.b("Mod", "deploy");
  }

  public final void a(String paramString, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.shared.r paramr, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.ad>> paramg)
  {
    if (this.f)
    {
      RpcResult localRpcResult = RpcResult.a(com.nianticproject.ingress.shared.ad.r);
      if (paramg != null)
        paramg.a(localRpcResult);
      return;
    }
    this.f = true;
    new al(this.a, this.b, paramString, paramf, paramr).a(new af(this, paramg));
    com.nianticproject.ingress.common.a.a.b("Resonator", "upgrade");
  }

  public final void a(String paramString, Set<String> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Map<String, com.nianticproject.ingress.shared.n>, w>> paramg)
  {
    new n(this.a, paramString, paramSet).a(paramg);
  }

  public final void a(List<String> paramList, com.nianticproject.ingress.common.x.g<List<String>> paramg)
  {
    new o(this.a, paramList).a(paramg);
  }

  public final boolean a()
  {
    return !this.f;
  }

  public final void b(String paramString)
  {
    new f(this.a, this.c, this.b, paramString).a();
    com.nianticproject.ingress.common.a.a.b("Item", "drop");
  }

  public final void b(String paramString, Set<com.nianticproject.ingress.shared.r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.ad>> paramg)
  {
    new ah(this.a, this.c, paramString, paramSet).a(paramg);
    com.nianticproject.ingress.common.a.a.b("Resonator", "remoteRecharge");
  }

  public final boolean b()
  {
    return true;
  }

  public final boolean c()
  {
    return true;
  }

  public final boolean d()
  {
    return !this.g;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.ac
 * JD-Core Version:    0.6.2
 */