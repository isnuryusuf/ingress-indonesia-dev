package com.nianticproject.ingress.common.factionchoice;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;
import com.nianticproject.ingress.shared.h;
import com.nianticproject.ingress.shared.rpc.RpcResult;

final class s
  implements f
{
  s(r paramr, RpcResult paramRpcResult)
  {
  }

  public final f a(p paramp)
  {
    if (this.a == null)
    {
      n.a(this.b.b, true);
      n.i(this.b.b).a(n.a());
    }
    while (true)
    {
      return null;
      if (this.a.e())
      {
        n.a(this.b.b, false);
        n.i(this.b.b).a(n.b());
      }
      else
      {
        n.a(this.b.b, true);
        n.j(this.b.b).b("Faction choice failed, reason: " + ((h)this.a.b()).name());
        n.i(this.b.b).a(n.a());
      }
    }
  }

  public final String n_()
  {
    return "factionChoicePostRpc";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.s
 * JD-Core Version:    0.6.2
 */