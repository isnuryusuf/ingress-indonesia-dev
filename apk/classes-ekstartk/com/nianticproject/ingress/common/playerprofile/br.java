package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.playerprofile.AvatarOptions;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.q;
import com.nianticproject.ingress.shared.rpc.y;

final class br extends m<RpcResult<AvatarOptions, q>>
{
  private final ah a;
  private final az b;

  public br(ah paramah, az paramaz)
  {
    this.a = ((ah)an.a(paramah));
    this.b = ((az)an.a(paramaz));
  }

  private RpcResult<AvatarOptions, q> j()
  {
    try
    {
      RpcResult localRpcResult = this.a.a(aj.d());
      return localRpcResult;
    }
    catch (y localy)
    {
      bm.b().a(localy, "RPC Exception while trying to load avatar options.");
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.br
 * JD-Core Version:    0.6.2
 */