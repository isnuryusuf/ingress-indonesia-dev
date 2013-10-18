package com.nianticproject.ingress.common.factionchoice;

import com.nianticproject.ingress.common.f.h;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.FactionChoiceHint;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.y;
import java.util.Arrays;
import java.util.List;

final class m extends h
{
  m(d paramd)
  {
  }

  private Void j()
  {
    FactionChoiceHint localFactionChoiceHint = c.r();
    if (localFactionChoiceHint == null)
      return null;
    d.a(this.a, localFactionChoiceHint.getTeamHint());
    String str = localFactionChoiceHint.getInviterGuid();
    RpcResult localRpcResult;
    try
    {
      localRpcResult = d.i(this.a).a(aj.a(Arrays.asList(new String[] { str })));
      if (localRpcResult.e())
      {
        d.a(this.a, (String)((List)localRpcResult.a()).get(0));
        return null;
      }
    }
    catch (y localy)
    {
      d.i().a(localy, "RPC to get nickname of inviting player failed.");
      return null;
    }
    aa localaa = d.i();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localRpcResult.b();
    localaa.b("RPC to get nickname of inviting player failed: %s", arrayOfObject);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.m
 * JD-Core Version:    0.6.2
 */