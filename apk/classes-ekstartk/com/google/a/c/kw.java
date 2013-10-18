package com.google.a.c;

import java.io.Serializable;

final class kw<R, C, V> extends kv<R, C, V>
  implements Serializable
{
  private final R a;
  private final C b;
  private final V c;

  kw(R paramR, C paramC, V paramV)
  {
    this.a = paramR;
    this.b = paramC;
    this.c = paramV;
  }

  public final R a()
  {
    return this.a;
  }

  public final C b()
  {
    return this.b;
  }

  public final V c()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kw
 * JD-Core Version:    0.6.2
 */