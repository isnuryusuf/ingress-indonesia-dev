package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ar;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.common.ui.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Collections;

public class f extends j<Void, ae>
{
  private static final aa a = new aa(f.class);
  private final a b;
  private final com.nianticproject.ingress.common.g.e c;
  private final String d;

  public f(q paramq, a parama, com.nianticproject.ingress.common.g.e parame, String paramString)
  {
    super(paramq);
    this.b = ((a)an.a(parama));
    this.c = ((com.nianticproject.ingress.common.g.e)an.a(parame));
    this.d = ((String)an.a(paramString));
  }

  protected final com.nianticproject.ingress.common.x.f a(RpcResult<Void, ae> paramRpcResult)
  {
    if (paramRpcResult.e())
    {
      this.b.a("Drop successful");
      return null;
    }
    this.b.a("Drop failed: " + c.a().a((Enum)paramRpcResult.b()));
    return new aj(this.c, this.d);
  }

  protected final Result<t<Void, ae>, ae> c()
  {
    o.a().a(bs.f);
    if (!this.c.a(Collections.singleton(this.d)))
    {
      a.b("Item is already being used or does not exist (can be caused if the user selects items faster than we can mark them used).");
      return Result.b(ae.g);
    }
    return Result.a(ar.b(this.d));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.f
 * JD-Core Version:    0.6.2
 */