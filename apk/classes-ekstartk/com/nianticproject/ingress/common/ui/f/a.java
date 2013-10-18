package com.nianticproject.ingress.common.ui.f;

import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.eq;
import com.google.a.d.u;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private static final List<f> a = dc.d();
  private volatile List<f> b = a;
  private u c;
  private d d;
  private final Comparator<f> e = new c(this);

  private double a(f paramf)
  {
    u localu = ((LocationE6)paramf.getComponent(LocationE6.class)).getLatLng();
    return com.nianticproject.ingress.shared.b.a.b(this.c, localu);
  }

  private void a(List<f> paramList)
  {
    this.b = paramList;
    if (this.d != null)
      i.a().a(new b(this));
  }

  public final List<f> a()
  {
    return this.b;
  }

  public final void a(u paramu, Collection<f> paramCollection)
  {
    boolean bool1;
    if (paramu != null)
    {
      bool1 = true;
      an.a(bool1);
      if (paramCollection == null)
        break label44;
    }
    label44: for (boolean bool2 = true; ; bool2 = false)
    {
      an.a(bool2);
      if (paramCollection.size() != 0)
        break label50;
      a(a);
      return;
      bool1 = false;
      break;
    }
    label50: this.c = paramu;
    ArrayList localArrayList1 = eq.a(paramCollection);
    Collections.sort(localArrayList1, this.e);
    ArrayList localArrayList2 = eq.b(3);
    localArrayList2.add(localArrayList1.get(0));
    int i = 1;
    if (i < localArrayList1.size())
    {
      f localf = (f)localArrayList1.get(i);
      double d1 = a(localf);
      Iterator localIterator = localArrayList2.iterator();
      double d2;
      do
      {
        if (!localIterator.hasNext())
          break;
        d2 = Math.abs(d1 - a((f)localIterator.next())) % 360.0D;
        if (d2 > 180.0D)
          d2 = 360.0D - d2;
      }
      while (d2 >= 90.0D);
      do
      {
        i++;
        break;
        localArrayList2.add(localf);
      }
      while (localArrayList2.size() < 3);
    }
    a(localArrayList2);
  }

  public final void a(d paramd)
  {
    this.d = paramd;
  }

  public final u b()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.f.a
 * JD-Core Version:    0.6.2
 */