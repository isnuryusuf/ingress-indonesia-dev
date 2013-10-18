package com.nianticproject.ingress.common.h;

import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ag;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.m;
import java.util.List;

public class g extends j<Void, m>
{
  private final List<String> a;
  private final List<Long> b;

  public g(q paramq, List<String> paramList, List<Long> paramList1)
  {
    super(paramq);
    this.a = paramList;
    this.b = paramList1;
  }

  protected final Result<t<Void, m>, m> c()
  {
    return Result.a(ag.a(this.a, this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.g
 * JD-Core Version:    0.6.2
 */