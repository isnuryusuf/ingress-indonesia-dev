package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.w;
import com.nianticproject.ingress.shared.rpc.y;

final class bv extends m<RpcResult<Void, w>>
{
  private final ah a;
  private final ProfileSettings b;
  private final bb c;

  public bv(ah paramah, ProfileSettings paramProfileSettings, bb parambb)
  {
    this.a = ((ah)an.a(paramah));
    this.b = ((ProfileSettings)an.a(paramProfileSettings));
    this.c = parambb;
  }

  private RpcResult<Void, w> j()
  {
    try
    {
      RpcResult localRpcResult = this.a.a(aj.a(this.b));
      return localRpcResult;
    }
    catch (y localy)
    {
      bm.b().a(localy, "RPC failed for setProfileSettings");
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.bv
 * JD-Core Version:    0.6.2
 */