package com.nianticproject.ingress.common.ui.b;

import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.ad;
import java.util.Iterator;
import java.util.List;

public abstract class s extends b
{
  private final ad a;
  private final List<ac> b;
  private boolean c = false;

  public s(ad paramad, ac[] paramArrayOfac)
  {
    this.a = ((ad)an.a(paramad));
    this.b = eq.a(paramArrayOfac);
  }

  public final void a(ac paramac)
  {
    this.b.add(paramac);
    if (this.c)
      this.a.a(paramac);
  }

  public void c()
  {
    super.c();
    this.c = true;
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      ac localac = (ac)localIterator.next();
      this.a.a(localac);
    }
  }

  public void f()
  {
    this.c = false;
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      ac localac = (ac)localIterator.next();
      this.a.b(localac);
    }
    super.f();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.b.s
 * JD-Core Version:    0.6.2
 */