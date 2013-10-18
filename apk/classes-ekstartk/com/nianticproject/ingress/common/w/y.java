package com.nianticproject.ingress.common.w;

public final class y
{
  public static float a(float paramFloat)
  {
    return (float)Math.sin(3.141592653589793D * Math.max(Math.min(1.0F, paramFloat), 0.0F) / 2.0D);
  }

  public static float a(float paramFloat1, float paramFloat2)
  {
    return paramFloat1 + (paramFloat2 - paramFloat1) * (float)Math.random();
  }

  public static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return b((paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1));
  }

  public static double[] a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6)
  {
    double[] arrayOfDouble = new double[22];
    for (int i = 0; i < 11; i++)
    {
      double d = 0.1D * i;
      arrayOfDouble[(i * 2)] = (paramDouble1 * ((1.0D - d) * (1.0D - d)) + paramDouble3 * (d * (2.0D * (1.0D - d))) + paramDouble5 * (d * d));
      arrayOfDouble[(1 + i * 2)] = (paramDouble2 * ((1.0D - d) * (1.0D - d)) + paramDouble4 * (d * (2.0D * (1.0D - d))) + paramDouble6 * (d * d));
    }
    return arrayOfDouble;
  }

  public static float b(float paramFloat)
  {
    return Math.max(0.0F, Math.min(1.0F, paramFloat));
  }

  public static float c(float paramFloat)
  {
    for (float f = paramFloat; f > 3.141593F; f -= 6.283186F);
    while (f <= -3.141593F)
      f += 6.283186F;
    return f;
  }

  public static float d(float paramFloat)
  {
    for (float f = paramFloat; f >= 6.283186F; f -= 6.283186F);
    while (f < 0.0F)
      f += 6.283186F;
    return f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.y
 * JD-Core Version:    0.6.2
 */