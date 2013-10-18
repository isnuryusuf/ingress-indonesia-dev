package com.google.a.c;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public final class ed<R, C, V>
{
  private final List<ks<R, C, V>> a = new ArrayList();
  private Comparator<? super R> b;
  private Comparator<? super C> c;

  public final ec<R, C, V> a()
  {
    switch (this.a.size())
    {
    default:
      return iu.a(this.a, this.b, this.c);
    case 0:
      return ec.n();
    case 1:
    }
    return new jm((ks)ee.a(this.a));
  }

  public final ed<R, C, V> a(R paramR, C paramC, V paramV)
  {
    this.a.add(ec.b(paramR, paramC, paramV));
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ed
 * JD-Core Version:    0.6.2
 */