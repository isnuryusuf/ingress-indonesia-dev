package com.nianticproject.ingress.common.p;

import com.google.a.a.an;
import com.nianticproject.ingress.knobs.b;

public final class a
{
  private static b a;

  public static b a()
  {
    if (a == null)
      throw new IllegalStateException("VersionProvider not yet initialized.");
    return a;
  }

  public static void a(b paramb)
  {
    if (a == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Attempting to initialize VersionProvider twice.");
      a = (b)an.a(paramb);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.p.a
 * JD-Core Version:    0.6.2
 */