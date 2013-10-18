package com.nianticproject.ingress.shared;

import com.google.a.a.an;
import java.util.logging.Logger;

public final class t
{
  public static long[] a = { 0L, 2000L, 4000L, 6000L, 8000L, 10000L, 14000L, 18000L, 22000L, 26000L, 30000L, 38000L, 46000L, 54000L, 62000L, 70000L, 86000L, 102000L, 118000L, 134000L, 150000L, 180000L, 210000L, 240000L, 270000L, 300000L, 360000L, 420000L, 480000L, 540000L, 600000L, 720000L, 840000L, 960000L, 1080000L, 1200000L, 9223372036854775807L };
  public static int b = 1;
  private static final Logger c = Logger.getLogger(t.class.getName());

  public static int a()
  {
    return -1 + a.length;
  }

  public static int a(int paramInt)
  {
    return 2000 + 1000 * c(paramInt);
  }

  public static int a(long paramLong)
  {
    int i = 1;
    if (paramLong >= 0L)
    {
      int j = i;
      an.a(j);
    }
    while (true)
    {
      if (i >= a.length)
        break label45;
      if (paramLong < a[i])
      {
        return i;
        int k = 0;
        break;
      }
      i++;
    }
    label45: throw new IllegalStateException("Should not be able to iterate beyond the end of the AP table. end value (" + a[(-1 + a.length)] + ") should be Long.MAX_VALUE");
  }

  public static int b()
  {
    return c(-1 + a.length);
  }

  public static int b(long paramLong)
  {
    if (paramLong >= 0L);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return c(a(paramLong));
    }
  }

  public static long b(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt > 0)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramInt <= 0)
        break label54;
    }
    while (true)
    {
      an.a(bool1);
      int i = 1 + 5 * (paramInt - 1);
      if (i > a.length)
        i = a.length;
      return a[(i - 1)];
      bool2 = false;
      break;
      label54: bool1 = false;
    }
  }

  public static int c(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramInt > 0)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramInt > -1 + a.length)
        break label39;
    }
    while (true)
    {
      an.a(bool1);
      return 1 + (paramInt - 1) / 5;
      bool2 = false;
      break;
      label39: bool1 = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.t
 * JD-Core Version:    0.6.2
 */