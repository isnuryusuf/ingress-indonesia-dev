package com.nianticproject.ingress.common.scanner.visuals;

import com.nianticproject.ingress.common.scanner.fp;
import java.util.Iterator;
import java.util.List;

final class bk extends bc
{
  bk(bj parambj, fp paramfp1, fp paramfp2)
  {
    super(paramfp1);
  }

  protected final void a()
  {
    bj.b(this.b).b();
    bj.c(this.b);
    Iterator localIterator = bj.d(this.b).iterator();
    while (localIterator.hasNext())
    {
      bm localbm = (bm)localIterator.next();
      this.a.a(bm.a(localbm), bm.b(localbm));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bk
 * JD-Core Version:    0.6.2
 */