package com.google.a.d;

public final class g
{
  private final double a;
  private final int b;

  public strictfp g(int paramInt, double paramDouble)
  {
    this.a = paramDouble;
    this.b = paramInt;
  }

  public final strictfp double a()
  {
    return this.a;
  }

  public final strictfp double a(int paramInt)
  {
    return StrictMath.scalb(this.a, this.b * (1 - paramInt));
  }

  public final strictfp int a(double paramDouble)
  {
    if (paramDouble <= 0.0D)
      return 30;
    return Math.max(0, Math.min(30, -1 + f.a((1 << this.b) * this.a / paramDouble) >> -1 + this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.g
 * JD-Core Version:    0.6.2
 */