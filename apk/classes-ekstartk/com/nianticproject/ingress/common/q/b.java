package com.nianticproject.ingress.common.q;

public final class b
{
  public static double a(double paramDouble)
  {
    return 536870912.0D / (20002520.425406214D * Math.cos(paramDouble));
  }

  public static double b(double paramDouble)
  {
    for (double d = 3.141592653589793D + 5.851672317068639E-09D * paramDouble; d > 3.141592653589793D; d -= 6.283185307179586D);
    while (d <= -3.141592653589793D)
      d += 6.283185307179586D;
    return d;
  }

  public static double c(double paramDouble)
  {
    return 2.0D * Math.atan(Math.exp(3.141592653589793D - 5.851672317068639E-09D * paramDouble)) - 1.570796326794897D;
  }

  public static int d(double paramDouble)
  {
    return (int)Math.round(170891318.89410791D * (3.141592653589793D + paramDouble));
  }

  public static int e(double paramDouble)
  {
    double d = Math.min(0.995D, Math.max(-0.995D, Math.sin(paramDouble)));
    return (int)Math.round(170891318.89410791D * (3.141592653589793D - 0.5D * Math.log((1.0D + d) / (1.0D - d))));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b
 * JD-Core Version:    0.6.2
 */