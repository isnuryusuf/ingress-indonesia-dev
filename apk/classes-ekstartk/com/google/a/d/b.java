package com.google.a.d;

public final class b
{
  private final double a;
  private final double b;

  public strictfp b(double paramDouble1, double paramDouble2)
  {
    this.a = paramDouble1;
    this.b = paramDouble2;
  }

  public static strictfp b a(double paramDouble1, double paramDouble2)
  {
    if (paramDouble1 <= paramDouble2)
      return new b(paramDouble1, paramDouble2);
    return new b(paramDouble2, paramDouble1);
  }

  public final strictfp double a()
  {
    return this.a;
  }

  public final strictfp boolean a(double paramDouble)
  {
    return (paramDouble >= this.a) && (paramDouble <= this.b);
  }

  public final strictfp boolean a(b paramb)
  {
    if (paramb.c());
    while ((paramb.a >= this.a) && (paramb.b <= this.b))
      return true;
    return false;
  }

  public final strictfp double b()
  {
    return this.b;
  }

  public final strictfp b b(double paramDouble)
  {
    if (c())
      return new b(paramDouble, paramDouble);
    if (paramDouble < this.a)
      return new b(paramDouble, this.b);
    if (paramDouble > this.b)
      return new b(this.a, paramDouble);
    return new b(this.a, this.b);
  }

  public final strictfp boolean b(b paramb)
  {
    if (this.a <= paramb.a)
      if ((paramb.a > this.b) || (paramb.a > paramb.b));
    while ((this.a <= paramb.b) && (this.a <= this.b))
    {
      return true;
      return false;
    }
    return false;
  }

  public final strictfp b c(b paramb)
  {
    if (c())
      return paramb;
    if (paramb.c())
      return this;
    return new b(Math.min(this.a, paramb.a), Math.max(this.b, paramb.b));
  }

  public final strictfp boolean c()
  {
    return this.a > this.b;
  }

  public final strictfp double d()
  {
    return 0.5D * (this.a + this.b);
  }

  public final strictfp b d(b paramb)
  {
    return new b(Math.max(this.a, paramb.a), Math.min(this.b, paramb.b));
  }

  public final strictfp b e()
  {
    if (c())
      return this;
    return new b(this.a - 4.440892098500626E-16D, 4.440892098500626E-16D + this.b);
  }

  public final strictfp boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof b;
    boolean bool2 = false;
    if (bool1)
    {
      b localb = (b)paramObject;
      if ((this.a != localb.a) || (this.b != localb.b))
      {
        boolean bool3 = c();
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = localb.c();
          bool2 = false;
          if (!bool4);
        }
      }
      else
      {
        bool2 = true;
      }
    }
    return bool2;
  }

  public final strictfp int hashCode()
  {
    if (c())
      return 17;
    long l = 37L * (629L + Double.doubleToLongBits(this.a)) + Double.doubleToLongBits(this.b);
    return (int)(l ^ l >>> 32);
  }

  public final strictfp String toString()
  {
    return "[" + this.a + ", " + this.b + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.b
 * JD-Core Version:    0.6.2
 */