package com.nianticproject.ingress.common.factionchoice;

import com.nianticproject.ingress.common.f.m;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.h;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.y;

final class r extends m<RpcResult<Void, h>>
{
  r(n paramn, ai paramai)
  {
  }

  private RpcResult<Void, h> j()
  {
    try
    {
      RpcResult localRpcResult = n.h(this.b).a(aj.b(this.a));
      return localRpcResult;
    }
    catch (y localy)
    {
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.r
 * JD-Core Version:    0.6.2
 */