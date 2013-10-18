package com.google.a.c;

import com.google.a.a.an;
import java.util.Map;

final class jm<R, C, V> extends ec<R, C, V>
{
  final R a;
  final C b;
  final V c;

  jm(ks<R, C, V> paramks)
  {
    this(paramks.a(), paramks.b(), paramks.c());
  }

  jm(R paramR, C paramC, V paramV)
  {
    this.a = an.a(paramR);
    this.b = an.a(paramC);
    this.c = an.a(paramV);
  }

  public final dh<C, Map<R, V>> j()
  {
    return dh.b(this.b, dh.b(this.a, this.c));
  }

  public final dh<R, Map<C, V>> k()
  {
    return dh.b(this.a, dh.b(this.b, this.c));
  }

  public final int l()
  {
    return 1;
  }

  final du<ks<R, C, V>> p()
  {
    return du.b(b(this.a, this.b, this.c));
  }

  final ct<V> q()
  {
    return du.b(this.c);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jm
 * JD-Core Version:    0.6.2
 */