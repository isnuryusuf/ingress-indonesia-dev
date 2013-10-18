package com.nianticproject.ingress.common.a;

import com.google.a.a.an;

public final class c
{
  private static d a;
  private static long b = 0L;

  static d a()
  {
    return (d)an.a(a, "AnalyticsProvider has not been initialized yet.");
  }

  public static void a(d paramd)
  {
    if (a == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Attempt to initialize AnalyticsProvider twice, which is not supported.");
      a = (d)an.a(paramd);
      return;
    }
  }

  public static void b()
  {
    a().b();
    b = System.currentTimeMillis();
  }

  public static void c()
  {
    if (System.currentTimeMillis() - b > 60000L)
      b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.a.c
 * JD-Core Version:    0.6.2
 */