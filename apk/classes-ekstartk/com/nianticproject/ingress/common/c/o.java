package com.nianticproject.ingress.common.c;

import com.google.a.a.an;

public final class o
{
  private static e a;

  public static e a()
  {
    return (e)an.a(a, "AudioProvider has not been initialized yet.");
  }

  public static void a(ai paramai)
  {
    if (a == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Attempt to initialize AudioProvider twice, which is not supported.");
      a = new aj(paramai);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.o
 * JD-Core Version:    0.6.2
 */