package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.q;
import com.nianticproject.ingress.shared.rpc.y;

final class bt extends m<RpcResult<PlayerProfile, q>>
{
  private final ah a;
  private final ba b;
  private final String c;
  private final av d;

  public bt(ah paramah, ba paramba, String paramString, av paramav)
  {
    this.a = ((ah)an.a(paramah));
    this.b = ((ba)an.a(paramba));
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.c = paramString;
      this.d = ((av)an.a(paramav));
      return;
    }
  }

  private RpcResult<PlayerProfile, q> j()
  {
    try
    {
      RpcResult localRpcResult = this.a.a(aj.d(this.c));
      return localRpcResult;
    }
    catch (y localy)
    {
      bm.b().a(localy, "RPC exception while trying to get the player profile.");
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.bt
 * JD-Core Version:    0.6.2
 */