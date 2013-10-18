package com.nianticproject.ingress.common.h;

import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.e;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.CheatAddInventoryResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.y;
import java.util.Map;

public final class a extends m<RpcResult<CheatAddInventoryResult, ae>>
{
  private final com.nianticproject.ingress.common.a a;
  private final Map<af, Integer> b;
  private final int c;
  private final q d;

  public a(q paramq, com.nianticproject.ingress.common.a parama, Map<af, Integer> paramMap, int paramInt)
  {
    this.d = paramq;
    this.a = parama;
    this.b = paramMap;
    this.c = paramInt;
  }

  private RpcResult<CheatAddInventoryResult, ae> j()
  {
    try
    {
      aj.a("CheatAddInventoryTask");
      ab localab = e.a(this.b, this.c);
      try
      {
        RpcResult localRpcResult2 = this.d.a(localab);
        return localRpcResult2;
      }
      catch (y localy)
      {
        this.a.a("Not only is cheating bad, you are bad at cheating.");
        RpcResult localRpcResult1 = RpcResult.a(ae.j);
        return localRpcResult1;
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.a
 * JD-Core Version:    0.6.2
 */