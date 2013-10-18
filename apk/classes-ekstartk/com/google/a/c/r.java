package com.google.a.c;

import java.util.List;
import java.util.ListIterator;

final class r extends f<K, V>.com.google.a.c.o.com.google.a.c.p
  implements ListIterator<V>
{
  r(q paramq)
  {
    super(paramq);
  }

  public r(q paramq, int paramInt)
  {
    super(paramq, paramq.d().listIterator(paramInt));
  }

  private ListIterator<V> b()
  {
    a();
    return (ListIterator)this.a;
  }

  public final void add(V paramV)
  {
    boolean bool = this.d.isEmpty();
    b().add(paramV);
    f.c(this.d.g);
    if (bool)
      this.d.c();
  }

  public final boolean hasPrevious()
  {
    return b().hasPrevious();
  }

  public final int nextIndex()
  {
    return b().nextIndex();
  }

  public final V previous()
  {
    return b().previous();
  }

  public final int previousIndex()
  {
    return b().previousIndex();
  }

  public final void set(V paramV)
  {
    b().set(paramV);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.r
 * JD-Core Version:    0.6.2
 */