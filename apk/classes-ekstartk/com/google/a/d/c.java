package com.google.a.d;

public final class c
{
  private final double a;
  private final double b;

  public strictfp c()
  {
    this(0.0D, 0.0D);
  }

  public strictfp c(double paramDouble1, double paramDouble2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
  }

  public static strictfp c a(c paramc, double paramDouble)
  {
    return new c(paramDouble * paramc.a, paramDouble * paramc.b);
  }

  public static strictfp c a(c paramc1, c paramc2)
  {
    return new c(paramc1.a + paramc2.a, paramc1.b + paramc2.b);
  }

  public final strictfp double a()
  {
    return this.a;
  }

  public final strictfp double a(c paramc)
  {
    return this.a * paramc.a + this.b * paramc.b;
  }

  public final strictfp double b()
  {
    return this.b;
  }

  public final strictfp double b(c paramc)
  {
    return this.a * paramc.b - this.b * paramc.a;
  }

  public final strictfp double c()
  {
    return this.a * this.a + this.b * this.b;
  }

  public final strictfp boolean c(c paramc)
  {
    if (this.a < paramc.a);
    do
    {
      return true;
      if (paramc.a < this.a)
        return false;
    }
    while (this.b < paramc.b);
    return false;
  }

  public final strictfp boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c));
    c localc;
    do
    {
      return false;
      localc = (c)paramObject;
    }
    while ((this.a != localc.a) || (this.b != localc.b));
    return true;
  }

  public final strictfp int hashCode()
  {
    long l1 = 17L + (629L + Double.doubleToLongBits(Math.abs(this.a)));
    long l2 = l1 + (37L * l1 + Double.doubleToLongBits(Math.abs(this.b)));
    return (int)(l2 ^ l2 >>> 32);
  }

  public final strictfp String toString()
  {
    return "(" + this.a + ", " + this.b + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.c
 * JD-Core Version:    0.6.2
 */