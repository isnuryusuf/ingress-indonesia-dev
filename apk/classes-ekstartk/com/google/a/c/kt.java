package com.google.a.c;

import com.google.a.a.aa;
import java.util.Map;

public final class kt
{
  private static final aa<? extends Map<?, ?>, ? extends Map<?, ?>> a = new ku();

  public static <R, C, V> ks<R, C, V> a(R paramR, C paramC, V paramV)
  {
    return new kw(paramR, paramC, paramV);
  }

  static boolean a(kr<?, ?, ?> paramkr, Object paramObject)
  {
    if (paramObject == paramkr)
      return true;
    if ((paramObject instanceof kr))
    {
      kr localkr = (kr)paramObject;
      return paramkr.d().equals(localkr.d());
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kt
 * JD-Core Version:    0.6.2
 */