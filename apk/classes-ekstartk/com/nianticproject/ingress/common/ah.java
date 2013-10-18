package com.nianticproject.ingress.common;

final class ah
{
  private double a = 0.0D;
  private double b = 0.0D;
  private double c = 0.0D;
  private double d = 0.0D;
  private int e = 0;

  final int a()
  {
    return this.e;
  }

  final void a(float paramFloat1, float paramFloat2)
  {
    this.a += paramFloat1;
    this.b += paramFloat1 * paramFloat1;
    this.c += paramFloat2;
    this.d += paramFloat2 * paramFloat2;
    this.e = (1 + this.e);
  }

  final float b()
  {
    double d1 = this.b / this.e;
    double d2 = this.a / this.e;
    double d3 = this.d / this.e;
    double d4 = this.c / this.e;
    return (float)Math.sqrt((d3 + (d1 - d2 * d2) - d4 * d4) / 2.0D);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ah
 * JD-Core Version:    0.6.2
 */