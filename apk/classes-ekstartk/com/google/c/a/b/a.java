package com.google.c.a.b;

import java.io.PrintStream;

public final class a
{
  private static final Object a = new Object();

  public static void a(String paramString, Object paramObject)
  {
    if (paramObject == null)
      a(paramString, "object is null");
  }

  private static void a(String paramString1, String paramString2)
  {
    if (paramString1 != null)
      paramString2 = paramString1 + " :: " + paramString2;
    try
    {
      throw new Throwable();
    }
    catch (Throwable localThrowable)
    {
      System.out.println("Assert common");
      localThrowable.printStackTrace();
    }
    throw new b(paramString2);
  }

  public static void a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
      a(paramString, "condition was true");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.b.a
 * JD-Core Version:    0.6.2
 */