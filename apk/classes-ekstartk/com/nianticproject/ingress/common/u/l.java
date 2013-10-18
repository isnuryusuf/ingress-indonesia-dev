package com.nianticproject.ingress.common.u;

import com.google.a.d.u;
import com.nianticproject.ingress.common.ag;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.model.d;
import com.nianticproject.ingress.common.model.e;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.b.a;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;

final class l
  implements ad
{
  private final e b;
  private final long c;

  public l(j paramj, com.nianticproject.ingress.shared.rpc.l paraml, long paramLong, u paramu)
  {
    this.c = paramLong;
    if (paramLong != 0L)
      j.b(paramj).a(new m(this, paramj, paramLong));
    paraml.a(a.a(paramu));
    this.b = j.c(paramj).d();
    paraml.a(this.b.b);
    paraml.a(q.a());
    av localav = p.a().j().a();
    if (localav == null);
    for (aw localaw = av.u().a(System.currentTimeMillis()); ; localaw = localav.v())
    {
      ag.a().a(localaw);
      j.d(paramj).a(localaw.c(), (GameplayRpcParams)paraml, true, false);
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.c != 0L))
      j.b(this.a).a(new n(this));
    d locald = j.c(this.a);
    e locale = this.b;
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      locald.a(locale, bool);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.l
 * JD-Core Version:    0.6.2
 */