package com.google.a.d;

import java.io.Serializable;

public class u
  implements Serializable
{
  public static final u a = new u(0.0D, 0.0D);
  private final double b;
  private final double c;

  public strictfp u()
  {
    this(0.0D, 0.0D);
  }

  private strictfp u(double paramDouble1, double paramDouble2)
  {
    this.b = paramDouble1;
    this.c = paramDouble2;
  }

  public strictfp u(d paramd1, d paramd2)
  {
    this(paramd1.a(), paramd2.a());
  }

  public strictfp u(y paramy)
  {
    this(Math.atan2(paramy.j, Math.sqrt(paramy.h * paramy.h + paramy.i * paramy.i)), Math.atan2(paramy.i, paramy.h));
  }

  public static strictfp u a(double paramDouble1, double paramDouble2)
  {
    return new u(paramDouble1, paramDouble2);
  }

  public static strictfp u a(long paramLong1, long paramLong2)
  {
    return new u(d.a(paramLong1), d.a(paramLong2));
  }

  public static strictfp u b(double paramDouble1, double paramDouble2)
  {
    return new u(d.b(paramDouble1), d.b(paramDouble2));
  }

  public final strictfp double a(u paramu)
  {
    double d1 = d.a(this.b).a();
    double d2 = d.a(paramu.b).a();
    double d3 = d.a(this.c).a();
    double d4 = d.a(paramu.c).a();
    double d5 = Math.sin(0.5D * (d2 - d1));
    double d6 = Math.sin(0.5D * (d4 - d3));
    double d7 = d5 * d5 + d6 * d6 * Math.cos(d1) * Math.cos(d2);
    return 6367000.0D * d.a(2.0D * Math.atan2(Math.sqrt(d7), Math.sqrt(Math.max(0.0D, 1.0D - d7)))).a();
  }

  public final strictfp d a()
  {
    return d.a(this.b);
  }

  public final strictfp boolean a(u paramu, double paramDouble)
  {
    return (Math.abs(this.b - paramu.b) < paramDouble) && (Math.abs(this.c - paramu.c) < paramDouble);
  }

  public final strictfp double b()
  {
    return this.b;
  }

  public final strictfp u b(u paramu)
  {
    return new u(this.b + paramu.b, this.c + paramu.c);
  }

  public final strictfp double c()
  {
    return 57.295779513082323D * this.b;
  }

  public final strictfp boolean c(u paramu)
  {
    return a(paramu, 1.E-09D);
  }

  public final strictfp d d()
  {
    return d.a(this.c);
  }

  public final strictfp double e()
  {
    return this.c;
  }

  public strictfp boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof u;
    boolean bool2 = false;
    if (bool1)
    {
      u localu = (u)paramObject;
      boolean bool3 = this.b < localu.b;
      bool2 = false;
      if (!bool3)
      {
        boolean bool4 = this.c < localu.c;
        bool2 = false;
        if (!bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  public final strictfp double f()
  {
    return 57.295779513082323D * this.c;
  }

  public final strictfp y g()
  {
    double d1 = d.a(this.b).a();
    double d2 = d.a(this.c).a();
    double d3 = Math.cos(d1);
    return new y(d3 * Math.cos(d2), d3 * Math.sin(d2), Math.sin(d1));
  }

  public final strictfp String h()
  {
    return "(" + c() + ", " + f() + ")";
  }

  public strictfp int hashCode()
  {
    long l1 = 17L + (629L + Double.doubleToLongBits(this.b));
    long l2 = l1 + (37L * l1 + Double.doubleToLongBits(this.c));
    return (int)(l2 ^ l2 >>> 32);
  }

  public strictfp String toString()
  {
    return "(" + this.b + ", " + this.c + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.u
 * JD-Core Version:    0.6.2
 */