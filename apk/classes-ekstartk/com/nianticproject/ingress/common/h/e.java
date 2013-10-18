package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ar;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.DischargePowerCubeResult;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.c;
import java.util.Collections;

public class e extends j<DischargePowerCubeResult, c>
{
  private static final aa a = new aa(e.class);
  private final String b;
  private final com.nianticproject.ingress.common.g.e c;

  public e(com.nianticproject.ingress.gameentity.f paramf, q paramq, com.nianticproject.ingress.common.g.e parame)
  {
    super(paramq);
    this.b = ((com.nianticproject.ingress.gameentity.f)an.a(paramf)).getGuid();
    this.c = ((com.nianticproject.ingress.common.g.e)an.a(parame));
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<DischargePowerCubeResult, c> paramRpcResult)
  {
    return new aj(this.c, this.b);
  }

  protected final Result<t<DischargePowerCubeResult, c>, c> c()
  {
    if (!this.c.a(Collections.singleton(this.b)))
    {
      a.b("Item " + this.b + " is already being used or does not exist (can be caused if the user selects items faster than we can mark them used).");
      return Result.b(c.b);
    }
    return Result.a(ar.c(this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.e
 * JD-Core Version:    0.6.2
 */