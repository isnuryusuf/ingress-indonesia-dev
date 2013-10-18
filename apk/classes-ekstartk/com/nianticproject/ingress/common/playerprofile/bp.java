package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.playerprofile.PaginatedDisplayedAchievementList;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.q;
import com.nianticproject.ingress.shared.rpc.y;

final class bp extends m<RpcResult<PaginatedDisplayedAchievementList, q>>
{
  private final ah a;
  private final ba b;
  private final String c;
  private final int d;
  private final av e;

  public bp(ah paramah, ba paramba, String paramString, int paramInt, av paramav)
  {
    this.a = ((ah)an.a(paramah));
    this.b = ((ba)an.a(paramba));
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.c = paramString;
      this.d = paramInt;
      this.e = ((av)an.a(paramav));
      return;
    }
  }

  private RpcResult<PaginatedDisplayedAchievementList, q> j()
  {
    try
    {
      RpcResult localRpcResult = this.a.a(aj.a(this.c, this.d));
      return localRpcResult;
    }
    catch (y localy)
    {
      bm.b().a(localy, "RPC Exception while trying to get another page of achievements.");
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.bp
 * JD-Core Version:    0.6.2
 */