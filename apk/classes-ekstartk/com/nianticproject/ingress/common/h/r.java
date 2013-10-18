package com.nianticproject.ingress.common.h;

import com.google.a.a.ba;
import com.nianticproject.ingress.common.missions.ek;
import com.nianticproject.ingress.common.missions.el;
import com.nianticproject.ingress.common.missions.em;
import com.nianticproject.ingress.common.missions.en;
import com.nianticproject.ingress.common.missions.eo;
import com.nianticproject.ingress.common.missions.ep;
import com.nianticproject.ingress.common.missions.eq;
import com.nianticproject.ingress.common.missions.er;
import com.nianticproject.ingress.common.missions.es;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.server.FindNearbyPortalsFail;
import com.nianticproject.ingress.shared.FireEmpResult;
import com.nianticproject.ingress.shared.GameScore;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.e;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.DischargePowerCubeResult;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class r
  implements ek
{
  private final com.nianticproject.ingress.common.a a;
  private final com.nianticproject.ingress.common.g.ad b;
  private final com.nianticproject.ingress.common.model.m c;
  private em d;
  private ep e;
  private el f;
  private er g;
  private eo h;
  private es i;
  private en j;
  private eq k;

  public r(com.nianticproject.ingress.common.a parama, com.nianticproject.ingress.common.g.ad paramad, com.nianticproject.ingress.common.model.m paramm)
  {
    this.a = parama;
    this.b = paramad;
    this.c = paramm;
  }

  public final g a(List<String> paramList, List<Long> paramList1, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.rpc.m>> paramg, com.nianticproject.ingress.common.x.f paramf)
  {
    return null;
  }

  public final String a(String paramString, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<String, com.nianticproject.ingress.shared.ad>> paramg, int paramInt)
  {
    if (this.f != null)
    {
      s locals = new s(this, new w(this, this.f.a(paramString, paramPortal.getEntity())), this.a, this.b, this.c, paramString, paramPortal.getEntity(), paramInt);
      String str = (String)locals.f().c();
      locals.a(paramg);
      return str;
    }
    return null;
  }

  public final void a(ba<GameScore> paramba)
  {
  }

  public final void a(el paramel)
  {
    this.f = paramel;
  }

  public final void a(em paramem)
  {
    this.d = paramem;
  }

  public final void a(en paramen)
  {
    this.j = paramen;
  }

  public final void a(eo parameo)
  {
    this.h = parameo;
  }

  public final void a(ep paramep)
  {
    this.e = paramep;
  }

  public final void a(eq parameq)
  {
    this.k = parameq;
  }

  public final void a(er paramer)
  {
    this.g = paramer;
  }

  public final void a(es parames)
  {
    this.i = parames;
  }

  public final void a(Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<CollectItemsFromPortalResult, ae>> paramg)
  {
    if (this.e != null)
      new p(new w(this, this.e.a(paramPortal)), paramPortal, this.c).a(paramg);
  }

  public final void a(Portal paramPortal1, Portal paramPortal2, String paramString, com.nianticproject.ingress.common.x.g<RpcResult<LinkResult, com.nianticproject.ingress.shared.n>> paramg)
  {
    if (this.k == null)
      return;
    new q(new w(this, this.k.a(paramPortal1, paramPortal2, paramString)), paramPortal1.getEntityGuid(), paramPortal2.getEntityGuid(), paramString, this.b, this.a).a(paramg);
  }

  public final void a(Resource paramResource, com.nianticproject.ingress.common.x.g<RpcResult<Void, ae>> paramg)
  {
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, ba<RpcResult<FireEmpResult, e>> paramba, com.nianticproject.ingress.common.x.g<RpcResult<FireEmpResult, e>> paramg)
  {
    new i(paramf, new w(this, this.d.a()), this.b, this.c, paramba, null).a(paramg);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.x.g<RpcResult<DischargePowerCubeResult, com.nianticproject.ingress.shared.rpc.c>> paramg)
  {
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.server.flip.a>> paramg)
  {
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, Set<com.nianticproject.ingress.shared.r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.ad>> paramg)
  {
    if (this.g != null)
      paramg.a(this.g.a(paramf, paramSet));
  }

  public final void a(String paramString)
  {
  }

  public final void a(String paramString, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Set<com.nianticproject.ingress.gameentity.f>, FindNearbyPortalsFail>> paramg)
  {
  }

  public final void a(String paramString, com.nianticproject.ingress.common.x.g<Integer> paramg)
  {
  }

  public final void a(String paramString, Modable paramModable, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.p>> paramg)
  {
  }

  public final void a(String paramString, com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.shared.r paramr, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.ad>> paramg)
  {
  }

  public final void a(String paramString, Set<String> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Map<String, com.nianticproject.ingress.shared.n>, com.nianticproject.ingress.shared.w>> paramg)
  {
    if (this.j == null)
      return;
    new n(new w(this, this.j.a(paramSet)), paramString, paramSet).a(paramg);
  }

  public final void a(List<String> paramList, com.nianticproject.ingress.common.x.g<List<String>> paramg)
  {
    if (this.h != null)
      paramg.a(this.h.a());
  }

  public final boolean a()
  {
    if (this.f != null)
      return this.f.a();
    return false;
  }

  public final void b(String paramString)
  {
  }

  public final void b(String paramString, Set<com.nianticproject.ingress.shared.r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, com.nianticproject.ingress.shared.ad>> paramg)
  {
  }

  public final boolean b()
  {
    return a();
  }

  public final boolean c()
  {
    return false;
  }

  public final boolean d()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.r
 * JD-Core Version:    0.6.2
 */