package com.google.a.c;

import com.google.a.a.an;
import java.util.Comparator;

public final class ea<E> extends dv<E>
{
  private final Comparator<? super E> c;

  public ea(Comparator<? super E> paramComparator)
  {
    this.c = ((Comparator)an.a(paramComparator));
  }

  public final dz<E> b()
  {
    Object[] arrayOfObject = (Object[])this.a;
    dz localdz = dz.a(this.c, this.b, arrayOfObject);
    this.b = localdz.size();
    return localdz;
  }

  public final ea<E> d(E paramE)
  {
    super.c(paramE);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ea
 * JD-Core Version:    0.6.2
 */