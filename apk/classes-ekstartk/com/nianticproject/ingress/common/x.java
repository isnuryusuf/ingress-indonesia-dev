package com.nianticproject.ingress.common;

import com.nianticproject.ingress.shared.b.a;

public final class x
{
  private final double[] a = new double[20];
  private final double[] b = new double[20];
  private final double[] c = new double[20];
  private final double[] d = new double[20];
  private final double[] e = new double[20];
  private int f = 0;
  private int g = 0;
  private long h = -1L;

  private double a(double[] paramArrayOfDouble)
  {
    if (this.g == 0)
      return (0.0D / 0.0D);
    double d1 = 0.0D;
    for (int i = 0; i < this.g; i++)
      d1 += paramArrayOfDouble[i];
    return d1 / this.g;
  }

  private double b(double[] paramArrayOfDouble)
  {
    double d1 = 0.0D;
    if (this.g == 0)
      return (0.0D / 0.0D);
    int i = 0;
    double d2 = d1;
    while (i < this.g)
    {
      d2 += paramArrayOfDouble[i];
      d1 += paramArrayOfDouble[i] * paramArrayOfDouble[i];
      i++;
    }
    double d3 = d2 / this.g;
    return Math.sqrt(d1 / this.g - d3 * d3);
  }

  public final double a()
  {
    return b(this.a);
  }

  public final void a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, long paramLong)
  {
    if (this.h == paramLong)
      return;
    this.a[this.f] = paramDouble1;
    this.b[this.f] = paramDouble2;
    this.d[this.f] = paramDouble3;
    this.c[this.f] = paramDouble4;
    if (this.g < 20)
      this.g = (1 + this.g);
    if (this.g > 1)
      if (this.f != 0)
        break label190;
    label190: for (int i = 19; ; i = -1 + this.f)
    {
      double d1 = a.a(paramDouble1, paramDouble2, this.a[i], this.b[i]);
      double d2 = (paramLong - this.h) / 1000.0D;
      this.e[this.f] = (d1 / d2);
      if (this.g == 2)
        this.e[0] = (d1 / d2);
      this.h = paramLong;
      this.f = (1 + this.f);
      if (this.f < 20)
        break;
      this.f = 0;
      return;
    }
  }

  public final double b()
  {
    return b(this.b);
  }

  public final double c()
  {
    return b(this.d);
  }

  public final double d()
  {
    return b(this.c);
  }

  public final double e()
  {
    return b(this.e);
  }

  public final double f()
  {
    return a(this.e);
  }

  public final double g()
  {
    return a(this.a);
  }

  public final int h()
  {
    return this.g;
  }

  public final void i()
  {
    this.f = 0;
    this.g = 0;
    this.h = -1L;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x
 * JD-Core Version:    0.6.2
 */