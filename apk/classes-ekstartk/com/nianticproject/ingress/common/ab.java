package com.nianticproject.ingress.common;

import com.google.a.c.eq;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public final class ab
  implements aa
{
  private final List<aa> a = eq.a();
  private boolean b;

  public final void a(aa paramaa)
  {
    this.a.add(paramaa);
  }

  public final void b()
  {
    ListIterator localListIterator = this.a.listIterator(this.a.size());
    while (localListIterator.hasPrevious())
      ((aa)localListIterator.previous()).b();
  }

  public final void b(aa paramaa)
  {
    this.a.remove(paramaa);
  }

  public final void c()
  {
    ListIterator localListIterator = this.a.listIterator(this.a.size());
    while (localListIterator.hasPrevious())
      ((aa)localListIterator.previous()).c();
    this.b = false;
  }

  public final boolean d()
  {
    return this.b;
  }

  public final void f_()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((aa)localIterator.next()).f_();
    this.b = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ab
 * JD-Core Version:    0.6.2
 */