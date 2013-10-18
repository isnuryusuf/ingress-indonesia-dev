package com.nianticproject.ingress.common.g;

import com.google.a.c.dc;
import com.google.a.d.j;
import com.nianticproject.ingress.gameentity.f;
import java.util.Collection;

public final class z
  implements h
{
  private final dc<j> a;

  public z(Collection<j> paramCollection)
  {
    this.a = dc.a(paramCollection);
  }

  public final boolean a(f paramf)
  {
    return true;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.a.size());
    return String.format("S2CellID region: %d cells", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.z
 * JD-Core Version:    0.6.2
 */