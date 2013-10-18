package com.nianticproject.ingress.common.h;

import com.google.a.a.ba;
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

public abstract interface l
{
  public abstract g a(List<String> paramList, List<Long> paramList1, com.nianticproject.ingress.common.x.g<RpcResult<Void, m>> paramg, com.nianticproject.ingress.common.x.f paramf);

  public abstract String a(String paramString, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<String, ad>> paramg, int paramInt);

  public abstract void a(ba<GameScore> paramba);

  public abstract void a(Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<CollectItemsFromPortalResult, ae>> paramg);

  public abstract void a(Portal paramPortal1, Portal paramPortal2, String paramString, com.nianticproject.ingress.common.x.g<RpcResult<LinkResult, n>> paramg);

  public abstract void a(Resource paramResource, com.nianticproject.ingress.common.x.g<RpcResult<Void, ae>> paramg);

  public abstract void a(com.nianticproject.ingress.gameentity.f paramf, ba<RpcResult<FireEmpResult, e>> paramba, com.nianticproject.ingress.common.x.g<RpcResult<FireEmpResult, e>> paramg);

  public abstract void a(com.nianticproject.ingress.gameentity.f paramf, com.nianticproject.ingress.common.x.g<RpcResult<DischargePowerCubeResult, c>> paramg);

  public abstract void a(com.nianticproject.ingress.gameentity.f paramf, Portal paramPortal, com.nianticproject.ingress.common.x.g<RpcResult<Void, a>> paramg);

  public abstract void a(com.nianticproject.ingress.gameentity.f paramf, Set<r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, ad>> paramg);

  public abstract void a(String paramString);

  public abstract void a(String paramString, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Set<com.nianticproject.ingress.gameentity.f>, FindNearbyPortalsFail>> paramg);

  public abstract void a(String paramString, com.nianticproject.ingress.common.x.g<Integer> paramg);

  public abstract void a(String paramString, Modable paramModable, int paramInt, com.nianticproject.ingress.common.x.g<RpcResult<Void, p>> paramg);

  public abstract void a(String paramString, com.nianticproject.ingress.gameentity.f paramf, r paramr, com.nianticproject.ingress.common.x.g<RpcResult<Void, ad>> paramg);

  public abstract void a(String paramString, Set<String> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Map<String, n>, w>> paramg);

  public abstract void a(List<String> paramList, com.nianticproject.ingress.common.x.g<List<String>> paramg);

  public abstract boolean a();

  public abstract void b(String paramString);

  public abstract void b(String paramString, Set<r> paramSet, com.nianticproject.ingress.common.x.g<RpcResult<Void, ad>> paramg);

  public abstract boolean b();

  public abstract boolean c();

  public abstract boolean d();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.l
 * JD-Core Version:    0.6.2
 */