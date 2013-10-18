package com.nianticproject.ingress.common.factionchoice;

import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.x.a;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

final class ak extends a
{
  ak(aj paramaj, String paramString)
  {
    super(paramString);
  }

  public final f a(p paramp)
  {
    if (aj.a(this.a) != null)
      aj.a(this.a).n();
    aj.a(this.a, (bn)aj.b(this.a).poll());
    if (aj.a(this.a) == null)
      return null;
    o.a().a(aj.a(this.a));
    Iterator localIterator = aj.a(this.a).a().iterator();
    int i = 1500;
    while (localIterator.hasNext())
      i += ((bi)localIterator.next()).a().d();
    aj.a(this.a, i);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.ak
 * JD-Core Version:    0.6.2
 */