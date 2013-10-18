package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.model.a.i;
import com.nianticproject.ingress.common.r;
import java.util.Iterator;
import java.util.List;

final class bv
  implements cj
{
  bv(bp parambp)
  {
  }

  public final void a(ck paramck)
  {
    ch localch = bp.a(this.a).b();
    localch.b(this);
    i locali = bp.a(this.a).a();
    bp.a(this.a, locali, paramck);
    bp.d(this.a).c("");
    localch.h();
    bp.e(this.a);
    if (paramck == ck.c)
    {
      Iterator localIterator = bp.f(this.a).iterator();
      while (localIterator.hasNext())
      {
        ca localca2 = (ca)localIterator.next();
        bp.a(this.a, co.a(localca2), paramck);
      }
    }
    ca localca1 = bp.g(this.a);
    if (localca1 != null)
    {
      bp.b(this.a).a(true);
      bp.b(this.a).j().b();
      bp.a(this.a, localca1);
      return;
    }
    bp.h(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bv
 * JD-Core Version:    0.6.2
 */