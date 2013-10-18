package com.nianticproject.ingress.common.model;

import com.nianticproject.ingress.common.f.h;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.p;
import com.nianticproject.ingress.shared.rpc.y;

final class b extends h
{
  b(a parama, int paramInt)
  {
  }

  private Void j()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("AckLevelUpTask");
      ab localab = com.nianticproject.ingress.common.u.aj.a(this.a);
      try
      {
        RpcResult localRpcResult2 = a.a(this.b).a(localab);
        localObject2 = localRpcResult2;
        if (!((RpcResult)localObject2).e())
          a.a().c("Level up was rejected by server: " + ((RpcResult)localObject2).b());
        return null;
      }
      catch (y localy)
      {
        while (true)
        {
          RpcResult localRpcResult1 = RpcResult.a(p.b);
          Object localObject2 = localRpcResult1;
        }
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.b
 * JD-Core Version:    0.6.2
 */