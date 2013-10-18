package com.google.a.d;

public final class h
  implements ad
{
  private final y a;
  private final double b;

  private strictfp h()
  {
    this.a = new y();
    this.b = 0.0D;
  }

  private strictfp h(y paramy, double paramDouble)
  {
    this.a = paramy;
    this.b = paramDouble;
  }

  public static strictfp h a()
  {
    return new h(y.b, -1.0D);
  }

  public static strictfp h a(y paramy, double paramDouble)
  {
    return new h(paramy, paramDouble);
  }

  public static strictfp h a(y paramy, d paramd)
  {
    double d = Math.sin(0.5D * paramd.a());
    return new h(paramy, d * (2.0D * d));
  }

  private strictfp boolean a(i parami, y[] paramArrayOfy)
  {
    if (this.b >= 1.0D);
    label145: 
    while (true)
    {
      return false;
      if (!g())
      {
        if (parami.a(this.a))
          return true;
        double d1 = this.b * (2.0D - this.b);
        for (int i = 0; ; i++)
        {
          if (i >= 4)
            break label145;
          y localy1 = parami.c(i);
          double d2 = this.a.b(localy1);
          if (d2 <= 0.0D)
          {
            if (d2 * d2 > d1 * localy1.a())
              break;
            y localy2 = y.b(localy1, this.a);
            if ((localy2.b(paramArrayOfy[i]) < 0.0D) && (localy2.b(paramArrayOfy[(0x3 & i + 1)]) > 0.0D))
              return true;
          }
        }
      }
    }
  }

  private strictfp boolean g()
  {
    return this.b < 0.0D;
  }

  private strictfp boolean h()
  {
    return this.b >= 2.0D;
  }

  public final strictfp h a(h paramh)
  {
    if (g())
      return new h(paramh.a, paramh.b);
    double d1 = this.a.e(paramh.a) + paramh.e().a();
    if (d1 >= 3.141592653589793D)
      return new h(this.a, 2.0D);
    double d2 = Math.sin(d1 * 0.5D);
    double d3 = Math.max(this.b, d2 * (2.D * d2));
    return new h(this.a, d3);
  }

  public final strictfp h a(y paramy)
  {
    if (g())
      return new h(paramy, 0.0D);
    double d1 = y.d(this.a, paramy).a();
    double d2 = Math.max(this.b, d1 * 0.5000000000000001D);
    return new h(this.a, d2);
  }

  public final strictfp boolean a(i parami)
  {
    y[] arrayOfy = new y[4];
    for (int i = 0; i < 4; i++)
    {
      arrayOfy[i] = parami.b(i);
      if (!b(arrayOfy[i]))
        return false;
    }
    if (h());
    for (double d = -1.0D; !a(y.a(this.a), d).a(parami, arrayOfy); d = 2.0D - Math.max(this.b, 0.0D))
      return true;
    return false;
  }

  public final strictfp y b()
  {
    return this.a;
  }

  public final strictfp boolean b(i parami)
  {
    y[] arrayOfy = new y[4];
    for (int i = 0; i < 4; i++)
    {
      arrayOfy[i] = parami.b(i);
      if (b(arrayOfy[i]))
        return true;
    }
    return a(parami, arrayOfy);
  }

  public final strictfp boolean b(y paramy)
  {
    return y.d(this.a, paramy).a() <= 2.0D * this.b;
  }

  public final strictfp double c()
  {
    return this.b;
  }

  public final strictfp double d()
  {
    return 6.283185307179586D * Math.max(0.0D, this.b);
  }

  public final strictfp d e()
  {
    if (g())
      return d.a(-1.0D);
    return d.a(2.0D * Math.asin(Math.sqrt(0.5D * this.b)));
  }

  public final strictfp boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof h));
    h localh;
    do
    {
      return false;
      localh = (h)paramObject;
    }
    while (((!this.a.f(localh.a)) || (this.b != localh.b)) && ((!g()) || (!localh.g())) && ((!h()) || (!localh.h())));
    return true;
  }

  public final strictfp h f()
  {
    return this;
  }

  public final strictfp int hashCode()
  {
    if (h())
      return 17;
    if (g())
      return 37;
    int i = 629 + this.a.hashCode();
    long l = Double.doubleToLongBits(this.b);
    return i * 37 + (int)(l ^ l >>> 32);
  }

  public final strictfp String toString()
  {
    return "[Point = " + this.a.toString() + " Height = " + this.b + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.h
 * JD-Core Version:    0.6.2
 */