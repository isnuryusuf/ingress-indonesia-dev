package com.nianticproject.ingress.common.f;

import com.google.a.a.ba;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.r;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.common.x.p;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.y;

public final class k extends m<RpcResult<Success, Error>>
  implements f
{
  final ba<RpcResult<Success, Error>> a;

  k(ba<RpcResult<Success, Error>> paramba)
  {
    Object localObject;
    this.a = localObject;
  }

  private RpcResult<Success, Error> j()
  {
    try
    {
      aj.a("GameRpcTask.initRequest");
      r localr = j.c(this.b).a(j.b(this.b));
      f localf = this.b.b(localr.a());
      if (localf != null)
        i.a().a(localf);
      localr.b();
      RpcResult localRpcResult2 = localr.a();
      return localRpcResult2;
    }
    catch (y localy)
    {
      RpcResult localRpcResult1 = RpcResult.a(this.b.d());
      return localRpcResult1;
    }
    finally
    {
      aj.b();
    }
  }

  public final f a(p paramp)
  {
    if (j.a(this.b))
      this.b.e();
    Result localResult;
    do
    {
      return null;
      localResult = this.b.c();
      if (localResult.e())
      {
        j.a(this.b, (t)localResult.c());
        a(this.a);
        return null;
      }
    }
    while (this.a == null);
    this.a.a(RpcResult.a(localResult.d()));
    return null;
  }

  public final String n_()
  {
    return "GameRpcTask.initRequest";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.k
 * JD-Core Version:    0.6.2
 */