package com.google.a.d;

public final class e
  implements Cloneable
{
  private final double a;
  private final double b;

  public strictfp e(double paramDouble1, double paramDouble2)
  {
    this(paramDouble1, paramDouble2, false);
  }

  private strictfp e(double paramDouble1, double paramDouble2, boolean paramBoolean)
  {
    if (!paramBoolean)
      if ((paramDouble1 != -3.141592653589793D) || (paramDouble2 == 3.141592653589793D))
        break label70;
    label70: for (double d = 3.141592653589793D; ; d = paramDouble1)
    {
      if ((paramDouble2 == -3.141592653589793D) && (paramDouble1 != 3.141592653589793D))
        paramDouble2 = 3.141592653589793D;
      for (paramDouble1 = d; ; paramDouble1 = d)
      {
        this.a = paramDouble1;
        this.b = paramDouble2;
        return;
      }
    }
  }

  private strictfp e(e parame)
  {
    this.a = parame.a;
    this.b = parame.b;
  }

  public static strictfp e a()
  {
    return new e(3.141592653589793D, -3.141592653589793D, true);
  }

  public static strictfp e a(double paramDouble1, double paramDouble2)
  {
    if (paramDouble1 == -3.141592653589793D);
    for (double d1 = 3.141592653589793D; ; d1 = paramDouble1)
    {
      if (paramDouble2 == -3.141592653589793D);
      for (double d2 = 3.141592653589793D; ; d2 = paramDouble2)
      {
        if (b(d1, d2) <= 3.141592653589793D)
          return new e(d1, d2, true);
        return new e(d2, d1, true);
      }
    }
  }

  private static strictfp double b(double paramDouble1, double paramDouble2)
  {
    double d = paramDouble2 - paramDouble1;
    if (d >= 0.0D)
      return d;
    return paramDouble2 + 3.141592653589793D - (paramDouble1 - 3.141592653589793D);
  }

  public static strictfp e b()
  {
    return new e(-3.141592653589793D, 3.141592653589793D, true);
  }

  private strictfp boolean c(double paramDouble)
  {
    if (j())
      if (((paramDouble < this.a) && (paramDouble > this.b)) || (i()));
    while ((paramDouble >= this.a) && (paramDouble <= this.b))
    {
      return true;
      return false;
    }
    return false;
  }

  private strictfp boolean i()
  {
    return this.a - this.b == 6.283185307179586D;
  }

  private strictfp boolean j()
  {
    return this.a > this.b;
  }

  public final strictfp boolean a(double paramDouble)
  {
    if (paramDouble == -3.141592653589793D)
      paramDouble = 3.141592653589793D;
    return c(paramDouble);
  }

  public final strictfp boolean a(e parame)
  {
    if (j())
      if (parame.j())
        if ((parame.a < this.a) || (parame.b > this.b));
    do
    {
      do
      {
        do
        {
          return true;
          return false;
        }
        while (((parame.a >= this.a) || (parame.b <= this.b)) && (!i()));
        return false;
        if (!parame.j())
          break;
      }
      while ((e()) || (parame.i()));
      return false;
    }
    while ((parame.a >= this.a) && (parame.b <= this.b));
    return false;
  }

  public final strictfp e b(double paramDouble)
  {
    if (paramDouble == -3.141592653589793D)
      paramDouble = 3.141592653589793D;
    if (c(paramDouble))
      return new e(this);
    if (i())
      if (paramDouble != -3.141592653589793D)
        break label105;
    label105: for (double d = 3.141592653589793D; ; d = paramDouble)
    {
      return new e(d, d, true);
      if (b(paramDouble, this.a) < b(this.b, paramDouble))
        return new e(paramDouble, this.b);
      return new e(this.a, paramDouble);
    }
  }

  public final strictfp boolean b(e parame)
  {
    if ((i()) || (parame.i()));
    do
    {
      do
      {
        do
        {
          return false;
          if (!j())
            break;
        }
        while ((!parame.j()) && (parame.a > this.b) && (parame.b < this.a));
        return true;
        if (!parame.j())
          break;
      }
      while ((parame.a > this.b) && (parame.b < this.a));
      return true;
    }
    while ((parame.a > this.b) || (parame.b < this.a));
    return true;
  }

  public final strictfp double c()
  {
    return this.a;
  }

  public final strictfp e c(e parame)
  {
    if (parame.i())
      return this;
    if (c(parame.a))
    {
      if (c(parame.b))
      {
        if (a(parame))
          return this;
        return b();
      }
      return new e(this.a, parame.b, true);
    }
    if (c(parame.b))
      return new e(parame.a, this.b, true);
    if ((i()) || (parame.c(this.a)))
      return parame;
    if (b(parame.b, this.a) < b(this.b, parame.a))
      return new e(parame.a, this.b, true);
    return new e(this.a, parame.b, true);
  }

  public final strictfp double d()
  {
    return this.b;
  }

  public final strictfp boolean e()
  {
    return this.b - this.a == 6.283185307179586D;
  }

  public final strictfp boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof e;
    boolean bool2 = false;
    if (bool1)
    {
      e locale = (e)paramObject;
      boolean bool3 = this.a < locale.a;
      bool2 = false;
      if (!bool3)
      {
        boolean bool4 = this.b < locale.b;
        bool2 = false;
        if (!bool4)
          bool2 = true;
      }
    }
    return bool2;
  }

  public final strictfp double f()
  {
    double d = 0.5D * (this.a + this.b);
    if (!j())
      return d;
    if (d <= 0.0D)
      return d + 3.141592653589793D;
    return d - 3.141592653589793D;
  }

  public final strictfp double g()
  {
    double d = this.b - this.a;
    if (d >= 0.0D);
    do
    {
      return d;
      d += 6.283185307179586D;
    }
    while (d > 0.0D);
    return -1.0D;
  }

  public final strictfp e h()
  {
    if (i())
      return this;
    if (8.881784197001252E-16D + g() >= 6.283185307179585D)
      return b();
    double d1 = Math.IEEEremainder(this.a - 4.440892098500626E-16D, 6.283185307179586D);
    double d2 = Math.IEEEremainder(4.440892098500626E-16D + this.b, 6.283185307179586D);
    if (d1 == -3.141592653589793D)
      d1 = 3.141592653589793D;
    return new e(d1, d2);
  }

  public final strictfp int hashCode()
  {
    long l = 37L * (629L + Double.doubleToLongBits(this.a)) + Double.doubleToLongBits(this.b);
    return (int)(l ^ l >>> 32);
  }

  public final strictfp String toString()
  {
    return "[" + this.a + ", " + this.b + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.e
 * JD-Core Version:    0.6.2
 */