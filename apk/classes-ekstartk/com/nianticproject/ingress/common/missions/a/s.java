package com.nianticproject.ingress.common.missions.a;

import com.google.a.d.u;
import com.nianticproject.ingress.common.missions.cn;
import com.nianticproject.ingress.common.ui.d.e;
import java.util.Iterator;
import java.util.List;

final class s extends e
{
  s(r paramr)
  {
  }

  public final boolean tap(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    Iterator localIterator = r.a(this.a).iterator();
    while (localIterator.hasNext())
    {
      cn localcn = (cn)localIterator.next();
      u localu = this.a.a(paramFloat1, paramFloat2);
      if (localu != null)
        localcn.a(localu);
    }
    return r.a(this.a).size() != 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.s
 * JD-Core Version:    0.6.2
 */