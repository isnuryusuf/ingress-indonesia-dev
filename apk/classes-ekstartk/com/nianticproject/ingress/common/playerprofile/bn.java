package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.q;
import com.nianticproject.ingress.shared.rpc.y;

final class bn extends m<RpcResult<Void, q>>
{
  private final String a;
  private final av b;
  private final ah c;
  private final ay d;
  private final j e;

  public bn(String paramString, av paramav, ah paramah, ay paramay, j paramj)
  {
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = paramString;
      this.b = ((av)an.a(paramav));
      this.c = ((ah)an.a(paramah));
      this.d = ((ay)an.a(paramay));
      this.e = ((j)an.a(paramj));
      an.a(paramj.f());
      return;
    }
  }

  private RpcResult<Void, q> j()
  {
    try
    {
      RpcResult localRpcResult = this.c.a(aj.a(this.e.c().a(), this.e.b().a(), this.e.e().intValue(), this.e.d().intValue()));
      return localRpcResult;
    }
    catch (y localy)
    {
      bm.b().a(localy, "RPC Exception while trying to choose avatar.");
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.bn
 * JD-Core Version:    0.6.2
 */