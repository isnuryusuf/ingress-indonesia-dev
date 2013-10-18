package com.google.a.d;

public final class d
  implements Comparable<d>
{
  private final double a;

  public strictfp d()
  {
    this.a = 0.0D;
  }

  private strictfp d(double paramDouble)
  {
    this.a = paramDouble;
  }

  public static strictfp d a(double paramDouble)
  {
    return new d(paramDouble);
  }

  public static strictfp d a(long paramLong)
  {
    return b(1.0E-06D * paramLong);
  }

  public static strictfp d b(double paramDouble)
  {
    return new d(0.0174532925199433D * paramDouble);
  }

  private strictfp double c()
  {
    return 57.295779513082323D * this.a;
  }

  public final strictfp double a()
  {
    return this.a;
  }

  public final strictfp long b()
  {
    return Math.round(1000000.0D * c());
  }

  public final strictfp boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof d;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = this.a < ((d)paramObject).a;
      bool2 = false;
      if (!bool3)
        bool2 = true;
    }
    return bool2;
  }

  public final strictfp int hashCode()
  {
    long l = Double.doubleToLongBits(this.a);
    return (int)(l ^ l >>> 32);
  }

  public final strictfp String toString()
  {
    return c() + "d";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.d
 * JD-Core Version:    0.6.2
 */