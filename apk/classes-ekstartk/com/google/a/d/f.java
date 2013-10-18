package com.google.a.d;

import com.google.a.a.an;

public final class f
{
  public static final double a = Math.sqrt(2.0D);
  private static final int[] b = { 1, 0, 0, 3 };
  private static final int[][] c = { { 0, 1, 3, 2 }, { 0, 2, 3, 1 }, { 3, 2, 0, 1 }, { 3, 1, 0, 2 } };
  private static final int[][] d = { { 0, 1, 3, 2 }, { 0, 3, 1, 2 }, { 2, 3, 1, 0 }, { 2, 1, 3, 0 } };

  static strictfp int a(double paramDouble)
  {
    if (paramDouble == 0.0D)
      return 0;
    return -1022 + (int)((0x0 & Double.doubleToLongBits(paramDouble)) >> 52);
  }

  public static strictfp int a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 4));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return b[paramInt];
    }
  }

  public static strictfp int a(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2;
    if ((paramInt1 >= 0) && (paramInt1 < 4))
    {
      bool2 = bool1;
      an.a(bool2);
      if ((paramInt2 < 0) || (paramInt2 >= 4))
        break label43;
    }
    while (true)
    {
      an.a(bool1);
      return c[paramInt1][paramInt2];
      bool2 = false;
      break;
      label43: bool1 = false;
    }
  }

  private static strictfp int a(c paramc1, c paramc2)
  {
    double d1;
    c localc;
    if (paramc1.a(paramc2) > 0.0D)
    {
      d1 = -1.0D;
      localc = c.a(paramc1, c.a(paramc2, d1));
      double d2 = paramc1.c();
      double d3 = paramc2.c();
      if ((d2 >= d3) && ((d2 != d3) || (!paramc1.c(paramc2))))
        break label85;
    }
    label85: for (double d4 = d1 * paramc1.b(localc); ; d4 = localc.b(paramc2))
    {
      if (d4 <= 0.0D)
        break label96;
      return 1;
      d1 = 1.0D;
      break;
    }
    label96: if (d4 < 0.0D)
      return -1;
    return 0;
  }

  private static strictfp int a(c paramc1, c paramc2, c paramc3)
  {
    int i = 0 + a(paramc1, paramc2) + a(paramc2, paramc3) + a(paramc3, paramc1);
    if (i > 0)
      return 1;
    if (i < 0)
      return -1;
    return 0;
  }

  public static strictfp int a(y paramy1, y paramy2, y paramy3)
  {
    return a(paramy1, paramy2, paramy3, y.b(paramy1, paramy2));
  }

  public static strictfp int a(y paramy1, y paramy2, y paramy3, y paramy4)
  {
    double d1 = paramy4.b(paramy3);
    int i;
    if (d1 > 1.6E-15D)
      i = 1;
    label89: label104: label237: label243: label249: 
    do
    {
      do
      {
        return i;
        if (d1 < -1.6E-15D)
          return -1;
        if ((paramy1.f(paramy2)) || (paramy2.f(paramy3)) || (paramy3.f(paramy1)))
          return 0;
        double d2;
        double d3;
        double d4;
        y localy1;
        y localy2;
        y localy3;
        double d5;
        double d7;
        double d8;
        if (paramy1.b(paramy2) > 0.0D)
        {
          d2 = -1.0D;
          if (paramy2.b(paramy3) <= 0.0D)
            break label237;
          d3 = -1.0D;
          if (paramy3.b(paramy1) <= 0.0D)
            break label243;
          d4 = -1.0D;
          localy1 = y.c(paramy1, y.a(paramy2, d2));
          localy2 = y.c(paramy2, y.a(paramy3, d3));
          localy3 = y.c(paramy3, y.a(paramy1, d4));
          d5 = localy1.a();
          double d6 = localy2.a();
          d7 = localy3.a();
          if ((d7 >= d6) && ((d7 != d6) || (!paramy1.g(paramy2))))
            break label265;
          if ((d5 >= d6) && ((d5 != d6) || (!paramy1.g(paramy3))))
            break label249;
          d8 = d2 * y.a(paramy1, localy1, localy3);
        }
        while (true)
        {
          if (d8 <= 0.0D)
            break label321;
          return 1;
          d2 = 1.0D;
          break;
          d3 = 1.0D;
          break label89;
          d4 = 1.0D;
          break label104;
          d8 = d4 * y.a(paramy3, localy3, localy2);
          continue;
          if ((d5 < d7) || ((d5 == d7) && (paramy2.g(paramy3))))
            d8 = d3 * y.a(paramy2, localy2, localy1);
          else
            d8 = d4 * y.a(paramy3, localy3, localy2);
        }
        if (d8 < 0.0D)
          return -1;
        i = a(new c(paramy1.i, paramy1.j), new c(paramy2.i, paramy2.j), new c(paramy3.i, paramy3.j));
      }
      while (i != 0);
      i = a(new c(paramy1.j, paramy1.h), new c(paramy2.j, paramy2.h), new c(paramy3.j, paramy3.h));
    }
    while (i != 0);
    label265: label321: return a(new c(paramy1.h, paramy1.i), new c(paramy2.h, paramy2.i), new c(paramy3.h, paramy3.i));
  }

  public static strictfp y a()
  {
    return y.d;
  }

  public static strictfp y a(y paramy)
  {
    return paramy.c();
  }

  public static strictfp y a(y paramy1, y paramy2)
  {
    y localy = y.b(y.c(paramy2, paramy1), y.d(paramy2, paramy1));
    if (!localy.f(y.a))
      return localy;
    return paramy1.c();
  }

  public static strictfp boolean b(y paramy1, y paramy2, y paramy3, y paramy4)
  {
    if (a(paramy2, paramy4, paramy1) >= 0);
    for (int i = 1; ; i = 0)
    {
      if (a(paramy3, paramy4, paramy2) >= 0)
        i++;
      if (a(paramy1, paramy4, paramy3) > 0)
        i++;
      return i >= 2;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.f
 * JD-Core Version:    0.6.2
 */