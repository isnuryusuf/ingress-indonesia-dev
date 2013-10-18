package com.nianticproject.ingress.common.e;

import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.shared.af;
import java.util.Map;

public final class m extends a
{
  private final q b;
  private final com.nianticproject.ingress.common.a c;

  public m(q paramq, com.nianticproject.ingress.common.a parama, k paramk)
  {
    super(paramk);
    this.b = paramq;
    this.c = parama;
  }

  protected final void a(int paramInt)
  {
    new p(this, paramInt).e();
  }

  protected final void a(Map<af, Integer> paramMap, int paramInt)
  {
    if (!paramMap.isEmpty())
      new com.nianticproject.ingress.common.h.a(this.b, this.c, paramMap, paramInt).e();
  }

  protected final void b()
  {
    new n(this).e();
  }

  protected final void c()
  {
    new o(this).e();
  }

  protected final String d()
  {
    return "RemoteCheats";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.m
 * JD-Core Version:    0.6.2
 */