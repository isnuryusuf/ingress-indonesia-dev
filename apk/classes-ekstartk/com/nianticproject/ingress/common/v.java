package com.nianticproject.ingress.common;

import com.google.a.c.dc;
import com.google.a.c.eq;
import com.google.a.d.k;
import com.nianticproject.ingress.common.g.h;
import com.nianticproject.ingress.common.g.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class v
{
  private final List<w> a = eq.a();

  private h a()
  {
    dc localdc;
    synchronized (this.a)
    {
      localdc = dc.a(this.a);
      if (localdc.size() == 1)
        return w.a((w)localdc.get(0));
    }
    ArrayList localArrayList = eq.a();
    Iterator localIterator = localdc.iterator();
    while (localIterator.hasNext())
      localArrayList.addAll(w.a((w)localIterator.next()).a());
    k localk = new k();
    localk.a(localArrayList);
    return new z(localk.a());
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.a.size());
    localStringBuilder.append(String.format("EyeSet regions: %d", arrayOfObject));
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      w localw = (w)localIterator.next();
      localStringBuilder.append(" ");
      localStringBuilder.append(w.a(localw));
    }
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v
 * JD-Core Version:    0.6.2
 */