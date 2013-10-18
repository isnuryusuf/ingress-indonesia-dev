package com.nianticproject.ingress.common;

import com.google.a.a.an;
import com.google.a.d.u;

public final class ad
{
  private final u a;
  private final long b;
  private final float c;

  public ad(u paramu, long paramLong, float paramFloat)
  {
    this.a = ((u)an.a(paramu));
    this.b = paramLong;
    this.c = paramFloat;
  }

  public final double a(u paramu)
  {
    return this.a.a(paramu);
  }

  public final u a()
  {
    return this.a;
  }

  public final boolean a(ad paramad)
  {
    return (this.a.equals(paramad.a)) && (this.c == paramad.c);
  }

  public final long b()
  {
    return this.b;
  }

  public final float c()
  {
    return this.c;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ad));
    ad localad;
    do
    {
      return false;
      localad = (ad)paramObject;
    }
    while ((!a(localad)) || (this.b != localad.b));
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ad
 * JD-Core Version:    0.6.2
 */