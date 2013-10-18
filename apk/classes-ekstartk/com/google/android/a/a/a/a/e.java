package com.google.android.a.a.a.a;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class e
{
  private static c a;

  public static void a(b paramb)
  {
    if (paramb == null)
      throw new IllegalArgumentException("configuration can't be null");
    b(paramb);
  }

  private static void b(b paramb)
  {
    try
    {
      c localc = new c(paramb.c(), paramb.b(), String.valueOf(paramb.a()), paramb.i(), paramb.d(), paramb.e(), paramb.f());
      a = localc;
      localc.a(paramb.g());
      Iterator localIterator = paramb.h().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        a.a((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.a.a.a.e
 * JD-Core Version:    0.6.2
 */