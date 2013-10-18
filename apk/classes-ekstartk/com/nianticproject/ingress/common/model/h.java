package com.nianticproject.ingress.common.model;

import com.google.a.c.dc;
import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.p;
import java.util.Iterator;
import java.util.Set;

final class h
  implements f
{
  h(g paramg, k paramk1, k paramk2)
  {
  }

  public final f a(p paramp)
  {
    Iterator localIterator = g.a(this.c).iterator();
    while (localIterator.hasNext())
    {
      l locall = (l)localIterator.next();
      this.a.a(locall);
      locall.a(this.a.c(), this.a.d(), 0L, z.d);
      locall.a(this.a.e(), dc.d());
      locall.a(this.a.l(), false);
      if (this.b != null)
      {
        locall.a(this.b.b(), this.a.b());
        locall.a(this.b.h(), this.a.h());
      }
    }
    return null;
  }

  public final String n_()
  {
    return "ForwardingPlayerModel#setPlayerModel:notify_listeners";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.h
 * JD-Core Version:    0.6.2
 */