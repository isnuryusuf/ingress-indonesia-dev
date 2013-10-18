package com.nianticproject.ingress.common.g;

import com.google.a.d.h;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.PointIndex;
import com.nianticproject.ingress.gameentity.f;

public final class ac extends ab
{
  public ac()
  {
    this.d = 0.0D;
  }

  public ac(u paramu)
  {
    this.d = 0.0D;
    b(paramu, 400);
  }

  public final boolean a(f paramf)
  {
    if (paramf != null)
    {
      PointIndex localPointIndex = (PointIndex)paramf.getComponent(PointIndex.class);
      return (localPointIndex != null) && (this.f.b(localPointIndex.getIndexPoint().g()));
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.ac
 * JD-Core Version:    0.6.2
 */