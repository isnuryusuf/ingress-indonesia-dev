package com.nianticproject.ingress.common.g;

import com.google.a.c.dc;
import com.google.a.d.ae;
import com.google.a.d.d;
import com.google.a.d.j;
import com.google.a.d.k;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;
import java.util.Collection;

public class ab
  implements h
{
  u a = u.a;
  int b = 0;
  dc<j> c = dc.d();
  double d = 50.0D;
  int e = 20;
  com.google.a.d.h f;

  public final Collection<j> a()
  {
    return this.c;
  }

  public final void a(u paramu, int paramInt)
  {
    double d1 = this.a.a(paramu);
    if ((this.b != paramInt) || (d1 > this.d))
      b(paramu, paramInt);
  }

  public boolean a(f paramf)
  {
    return true;
  }

  public final void b(u paramu, int paramInt)
  {
    this.a = paramu;
    this.b = paramInt;
    try
    {
      aj.a("SmartCapRegion.computeS2Cells");
      this.f = com.google.a.d.h.a(this.a.g(), d.a(this.b / 6371010.0D));
      ae localae = new ae();
      localae.b(this.e);
      localae.a(16);
      this.c = dc.a(localae.a(this.f).a());
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Double.valueOf(this.a.c());
    arrayOfObject[1] = Double.valueOf(this.a.f());
    arrayOfObject[2] = Integer.valueOf(this.b);
    arrayOfObject[3] = Integer.valueOf(this.c.size());
    return String.format("SmartCapRegion lat: %f lon: %f radius: %d cells: %d", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.ab
 * JD-Core Version:    0.6.2
 */