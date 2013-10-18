package com.google.a.d;

public final class y
  implements Comparable<y>
{
  public static final y a = new y(0.0D, 0.0D, 0.0D);
  public static final y b = new y(1.0D, 0.0D, 0.0D);
  public static final y c = new y(-1.0D, 0.0D, 0.0D);
  public static final y d = new y(0.0D, 1.0D, 0.0D);
  public static final y e = new y(0.0D, -1.0D, 0.0D);
  public static final y f = new y(0.0D, 0.0D, 1.0D);
  public static final y g = new y(0.0D, 0.0D, -1.0D);
  final double h;
  final double i;
  final double j;

  public strictfp y()
  {
    this.j = 0.0D;
    this.i = 0.0D;
    this.h = 0.0D;
  }

  public strictfp y(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    this.h = paramDouble1;
    this.i = paramDouble2;
    this.j = paramDouble3;
  }

  public static final strictfp double a(y paramy1, y paramy2, y paramy3)
  {
    double d1 = paramy2.i * paramy3.j - paramy2.j * paramy3.i;
    double d2 = paramy2.j * paramy3.h - paramy2.h * paramy3.j;
    double d3 = paramy2.h * paramy3.i - paramy2.i * paramy3.h;
    return d1 * paramy1.h + d2 * paramy1.i + d3 * paramy1.j;
  }

  public static final strictfp y a(y paramy)
  {
    return new y(-paramy.h, -paramy.i, -paramy.j);
  }

  public static final strictfp y a(y paramy, double paramDouble)
  {
    return new y(paramDouble * paramy.h, paramDouble * paramy.i, paramDouble * paramy.j);
  }

  public static final strictfp y a(y paramy1, y paramy2)
  {
    return d(paramy1, paramy2);
  }

  public static final strictfp y b(y paramy1, y paramy2)
  {
    return new y(paramy1.i * paramy2.j - paramy1.j * paramy2.i, paramy1.j * paramy2.h - paramy1.h * paramy2.j, paramy1.h * paramy2.i - paramy1.i * paramy2.h);
  }

  public static final strictfp y c(y paramy)
  {
    return new y(paramy.h / 2.0D, paramy.i / 2.0D, paramy.j / 2.0D);
  }

  public static final strictfp y c(y paramy1, y paramy2)
  {
    return new y(paramy1.h + paramy2.h, paramy1.i + paramy2.i, paramy1.j + paramy2.j);
  }

  public static final strictfp y d(y paramy)
  {
    double d1 = Math.sqrt(paramy.a());
    if (d1 != 0.0D)
      d1 = 1.0D / d1;
    return a(paramy, d1);
  }

  public static final strictfp y d(y paramy1, y paramy2)
  {
    return new y(paramy1.h - paramy2.h, paramy1.i - paramy2.i, paramy1.j - paramy2.j);
  }

  public final strictfp double a()
  {
    return this.h * this.h + this.i * this.i + this.j * this.j;
  }

  public final strictfp double a(int paramInt)
  {
    if (paramInt == 0)
      return this.h;
    if (paramInt == 1)
      return this.i;
    return this.j;
  }

  public final strictfp double b()
  {
    return Math.sqrt(a());
  }

  public final strictfp double b(y paramy)
  {
    return this.h * paramy.h + this.i * paramy.i + this.j * paramy.j;
  }

  public final strictfp y c()
  {
    int k = d();
    y localy;
    if (k == 1)
      localy = b;
    while (true)
    {
      return d(b(this, localy));
      if (k == 2)
        localy = d;
      else
        localy = f;
    }
  }

  public final strictfp int d()
  {
    int k = 2;
    double d1 = Math.abs(this.h);
    double d2 = Math.abs(this.i);
    double d3 = Math.abs(this.j);
    if (d1 > d2)
      if (d1 > d3)
        k = 0;
    while (d2 <= d3)
      return k;
    return 1;
  }

  public final strictfp double e(y paramy)
  {
    double d1 = this.i * paramy.j - this.j * paramy.i;
    double d2 = this.j * paramy.h - this.h * paramy.j;
    double d3 = this.h * paramy.i - this.i * paramy.h;
    return Math.atan2(Math.sqrt(d1 * d1 + d2 * d2 + d3 * d3), b(paramy));
  }

  public final strictfp String e()
  {
    u localu = new u(this);
    return "(" + Double.toString(localu.c()) + ", " + Double.toString(localu.f()) + ")";
  }

  public final strictfp boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof y));
    y localy;
    do
    {
      return false;
      localy = (y)paramObject;
    }
    while ((this.h != localy.h) || (this.i != localy.i) || (this.j != localy.j));
    return true;
  }

  public final strictfp boolean f(y paramy)
  {
    return (this.h == paramy.h) && (this.i == paramy.i) && (this.j == paramy.j);
  }

  public final strictfp boolean g(y paramy)
  {
    if (this.h < paramy.h);
    do
    {
      do
      {
        return true;
        if (paramy.h < this.h)
          return false;
      }
      while (this.i < paramy.i);
      if (paramy.i < this.i)
        return false;
    }
    while (this.j < paramy.j);
    return false;
  }

  public final strictfp int h(y paramy)
  {
    if (g(paramy))
      return -1;
    if (equals(paramy))
      return 0;
    return 1;
  }

  public final strictfp int hashCode()
  {
    long l1 = 17L + (629L + Double.doubleToLongBits(Math.abs(this.h)));
    long l2 = l1 + (37L * l1 + Double.doubleToLongBits(Math.abs(this.i)));
    long l3 = l2 + (37L * l2 + Double.doubleToLongBits(Math.abs(this.j)));
    return (int)(l3 ^ l3 >>> 32);
  }

  public final strictfp String toString()
  {
    return "(" + this.h + ", " + this.i + ", " + this.j + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.y
 * JD-Core Version:    0.6.2
 */