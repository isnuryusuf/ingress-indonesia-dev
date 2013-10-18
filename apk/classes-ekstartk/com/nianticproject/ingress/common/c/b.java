package com.nianticproject.ingress.common.c;

import java.util.Formatter;

public final class b
{
  private ba a;
  private float b;

  private b(ba paramba)
  {
    this.a = paramba;
    this.b = 0.85F;
  }

  public b(ba paramba, byte paramByte)
  {
    this(paramba);
  }

  public final long a(float paramFloat)
  {
    float f = paramFloat * this.b;
    if (f > 0.05F)
    {
      bo localbo = new bo();
      ba[] arrayOfba = new ba[1];
      arrayOfba[0] = this.a;
      bn localbn = localbo.a(arrayOfba).a(f).a(false).e().a(bp.a).f();
      o.a().a(localbn);
    }
    return this.a.d();
  }

  public final ba a()
  {
    return this.a;
  }

  public final String toString()
  {
    Formatter localFormatter = new Formatter();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.a.b();
    arrayOfObject[1] = Integer.valueOf(this.a.d());
    arrayOfObject[2] = Float.valueOf(this.b);
    localFormatter.format("{asset=%s length=%d capVolume=%.2f}", arrayOfObject);
    String str = localFormatter.toString();
    localFormatter.close();
    return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.b
 * JD-Core Version:    0.6.2
 */