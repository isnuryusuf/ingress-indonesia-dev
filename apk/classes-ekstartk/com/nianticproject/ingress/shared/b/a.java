package com.nianticproject.ingress.shared.b;

import com.google.a.d.ad;
import com.google.a.d.h;
import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.ImmutableLocationE6;
import com.nianticproject.ingress.gameentity.components.LocationE6;

public final class a
{
  public static double a(double paramDouble)
  {
    return 111133.0D * Math.cos(Math.toRadians(paramDouble));
  }

  public static double a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    double d1 = Math.toRadians(paramDouble3 - paramDouble1);
    double d2 = Math.toRadians(paramDouble4 - paramDouble2);
    double d3 = Math.sin(d1 / 2.0D) * Math.sin(d1 / 2.0D) + Math.cos(Math.toRadians(paramDouble1)) * Math.cos(Math.toRadians(paramDouble3)) * Math.sin(d2 / 2.0D) * Math.sin(d2 / 2.0D);
    return 6371010.0D * (2.0D * Math.atan2(Math.sqrt(d3), Math.sqrt(1.0D - d3)));
  }

  public static double a(ad paramad)
  {
    return 6371010.0D * (6371010.0D * paramad.f().d());
  }

  public static double a(u paramu1, u paramu2)
  {
    return a(paramu1.c(), paramu1.f(), paramu2.c(), paramu2.f());
  }

  public static double a(LocationE6 paramLocationE61, LocationE6 paramLocationE62)
  {
    return a(paramLocationE61.getLatE6() / 1000000.0D, paramLocationE61.getLngE6() / 1000000.0D, paramLocationE62.getLatE6() / 1000000.0D, paramLocationE62.getLngE6() / 1000000.0D);
  }

  public static u a(u paramu)
  {
    int i = (int)(1000000.0D * paramu.c());
    int j = (int)(1000000.0D * paramu.f());
    double d1 = 0.0174532925199433D * (1.0E-06D * i);
    double d2 = 0.0174532925199433D * (1.0E-06D * j);
    int k = (int)(1000000.0D * (57.295779513082323D * d1));
    int m = (int)(1000000.0D * (57.295779513082323D * d2));
    while (i != k)
    {
      double d4 = 0.0174532925199433D * (1.0E-06D * k);
      int i1 = (int)(1000000.0D * (57.295779513082323D * d4));
      d1 = d4;
      i = k;
      k = i1;
    }
    while (j != m)
    {
      double d3 = 0.0174532925199433D * (1.0E-06D * m);
      int n = (int)(1000000.0D * (57.295779513082323D * d3));
      d2 = d3;
      j = m;
      m = n;
    }
    return u.a(d1, d2);
  }

  public static u a(u paramu, double paramDouble1, double paramDouble2)
  {
    if (paramDouble2 < 1000.0D)
      return paramu.b(u.b(paramDouble2 * Math.cos(paramDouble1) / 111133.0D, paramDouble2 * Math.sin(paramDouble1) / a(paramu.c())));
    double d1 = paramu.b();
    double d2 = Math.sin(d1);
    double d3 = Math.cos(d1);
    double d4 = paramu.e();
    double d5 = paramDouble2 / 6371010.0D;
    double d6 = Math.sin(d5);
    double d7 = Math.cos(d5);
    double d8 = Math.asin(d2 * d7 + d3 * d6 * Math.cos(paramDouble1));
    return u.a(d8, d4 + Math.atan2(d3 * (d6 * Math.sin(paramDouble1)), d7 - d2 * Math.sin(d8)));
  }

  public static u a(u paramu1, u paramu2, double paramDouble)
  {
    return b(paramu1, b(paramu1, paramu2), paramDouble);
  }

  public static double b(u paramu1, u paramu2)
  {
    double d1 = paramu1.c();
    double d2 = paramu1.f();
    double d3 = paramu2.c();
    double d4 = Math.toRadians(paramu2.f() - d2);
    double d5 = Math.toRadians(d1);
    double d6 = Math.toRadians(d3);
    double d7 = Math.toDegrees(Math.atan2(Math.sin(d4) * Math.cos(d6), Math.cos(d5) * Math.sin(d6) - Math.sin(d5) * Math.cos(d6) * Math.cos(d4)));
    if (d7 < 0.0D)
      d7 += 360.0D;
    return d7;
  }

  public static u b(u paramu, double paramDouble1, double paramDouble2)
  {
    return a(paramu, Math.toRadians(paramDouble1), paramDouble2);
  }

  public static ImmutableLocationE6 b(u paramu)
  {
    return new ImmutableLocationE6(paramu);
  }

  public static int c(u paramu)
  {
    return 31 * (int)(1000000.0D * paramu.c()) + (int)(1000000.0D * paramu.f());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.b.a
 * JD-Core Version:    0.6.2
 */