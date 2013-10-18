package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
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
import com.nianticproject.ingress.server.flip.a;
import com.nianticproject.ingress.shared.FireEmpResult;
import com.nianticproject.ingress.shared.GameScore;
import com.nianticproject.ingress.shared.ad;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.e;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.p;
import com.nianticproject.ingress.shared.r;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.DischargePowerCubeResult;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.c;
import com.nianticproject.ingress.shared.rpc.m;
import com.nianticproject.ingress.shared.w;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class k
  implements ek
{
  private l a;
  private boolean b;
  private ek c;

  public final g a(List<String> paramList, List<Long> paramList1, com.nianticproject.ingress.common.x.g<RpcResult<Void, m>> paramg, com.nianticproject.ingress.common.x.f paramf)
  {
    return this.a.a(paramList, paramList1, paramg, paramf);
  }

  public final String a(String paramString, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<String, ad>> paramg, int paramInt)
  {
    return this.a.a(paramString, paramPortal, paramg, paramInt);
  }

  public final void a(ba<GameScore> paramba)
  {
    this.a.a(paramba);
  }

  public final void a(l paraml)
  {
    this.a = ((l)an.a(paraml));
    this.b = (paraml instanceof ek);
    if (this.b);
    for (ek localek = (ek)paraml; ; localek = null)
    {
      this.c = localek;
      return;
    }
  }

  public final void a(el paramel)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(paramel);
  }

  public final void a(em paramem)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(paramem);
  }

  public final void a(en paramen)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(paramen);
  }

  public final void a(eo parameo)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(parameo);
  }

  public final void a(ep paramep)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(paramep);
  }

  public final void a(eq parameq)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(parameq);
  }

  public final void a(er paramer)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(paramer);
  }

  public final void a(es parames)
  {
    an.b(this.b, "delegate is not TrainingGameActions");
    this.c.a(parames);
  }

  public final void a(Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<CollectItemsFromPortalResult, ae>> paramg)
  {
    this.a.a(paramPortal, paramg);
  }

  public final void a(Portal paramPortal1, Portal paramPortal2, String paramString, com.nianticproject.ingress.common.x.g<RpcResult<LinkResult, n>> paramg)
  {
    this.a.a(paramPortal1, paramPortal2, paramString, paramg);
  }

  public final void a(Resource paramResource, com.nianticproject.ingress.common.x.g<RpcResult<Void, ae>> paramg)
  {
    this.a.a(paramResource, paramg);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, ba<RpcResult<FireEmpResult, e>> paramba, com.nianticproject.ingress.common.x.g<RpcResult<FireEmpResult, e>> paramg)
  {
    this.a.a(paramf, paramba, paramg);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.x.g<RpcResult<DischargePowerCubeResult, c>> paramg)
  {
    this.a.a(paramf, paramg);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<Void, a>> paramg)
  {
    this.a.a(paramf, paramPortal, paramg);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf, Set<r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, ad>> paramg)
  {
    this.a.a(paramf, paramSet, paramg);
  }

  public final void a(String paramString)
  {
    this.a.a(paramString);
  }

  public final void a(String paramString, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Set<com.nianticproject.ingress.gameentity.f>, FindNearbyPortalsFail>> paramg)
  {
    this.a.a(paramString, paramInt, paramg);
  }

  public final void a(String paramString, com.nianticproject.ingress.common.x.g<Integer> paramg)
  {
    this.a.a(paramString, paramg);
  }

  public final void a(String paramString, Modable paramModable, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Void, p>> paramg)
  {
    this.a.a(paramString, paramModable, paramInt, paramg);
  }

  public final void a(String paramString, com.nianticproject.ingress.gameentity.f paramf, r paramr, com.nianticproject.ingress.common.x.g<RpcResult<Void, ad>> paramg)
  {
    this.a.a(paramString, paramf, paramr, paramg);
  }

  public final void a(String paramString, Set<String> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Map<String, n>, w>> paramg)
  {
    this.a.a(paramString, paramSet, paramg);
  }

  public final void a(List<String> paramList, com.nianticproject.ingress.common.x.g<List<String>> paramg)
  {
    this.a.a(paramList, paramg);
  }

  public final boolean a()
  {
    return this.a.a();
  }

  public final void b(String paramString)
  {
    this.a.b(paramString);
  }

  public final void b(String paramString, Set<r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, ad>> paramg)
  {
    this.a.b(paramString, paramSet, paramg);
  }

  public final boolean b()
  {
    return this.a.b();
  }

  public final boolean c()
  {
    return this.a.c();
  }

  public final boolean d()
  {
    return this.a.d();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.k
 * JD-Core Version:    0.6.2
 */