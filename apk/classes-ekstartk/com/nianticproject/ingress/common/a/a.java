package com.nianticproject.ingress.common.a;

import com.nianticproject.ingress.common.missions.ch;
import com.nianticproject.ingress.common.w.aa;

public final class a
{
  private static final aa a = new aa(a.class);

  public static void a(int paramInt, String paramString)
  {
    c.a().a(paramInt, paramString);
  }

  public static void a(long paramLong, String paramString)
  {
    c.a().a("Stats", paramLong, paramString);
  }

  public static void a(b paramb, String paramString)
  {
    a("Defect", paramb.name(), paramString);
  }

  public static void a(ch paramch, String paramString)
  {
    a("MissionAction", paramch.q(), paramString);
  }

  public static void a(String paramString)
  {
    c.a().a(paramString);
  }

  public static void a(String paramString, long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    if ((Math.random() <= 0.1D) && (c.a().c() < 250) && (c.a().d() > 6.0D))
    {
      a("RequestDuration", paramLong1, paramString);
      if (paramLong4 > 0L)
        a("RequestPayloadSize", paramLong4, paramString);
      if (paramLong2 != 200L)
      {
        b localb = b.i;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Long.valueOf(paramLong2);
        a(localb, String.format("%d", arrayOfObject));
      }
    }
    else
    {
      return;
    }
    a("RequestContentSize", paramLong3, paramString);
  }

  private static void a(String paramString1, long paramLong, String paramString2)
  {
    c.a().a(paramString1, paramLong, paramString2);
  }

  public static void a(String paramString1, String paramString2)
  {
    a("UI", paramString1, paramString2);
  }

  private static void a(String paramString1, String paramString2, String paramString3)
  {
    c.a().a(paramString1, paramString2, paramString3);
  }

  public static void b(String paramString1, String paramString2)
  {
    a("GameAction", paramString1, paramString2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.a.a
 * JD-Core Version:    0.6.2
 */