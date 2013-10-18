package com.nianticproject.ingress.shared;

import java.io.IOException;
import java.io.OutputStream;

public final class aj
{
  private static OutputStream a;

  public static OutputStream a()
  {
    return a;
  }

  public static void a(OutputStream paramOutputStream)
  {
    a = paramOutputStream;
  }

  public static void a(String paramString)
  {
    if (a != null)
      b("B|0|" + paramString);
  }

  public static void a(String paramString1, String paramString2)
  {
    if (a != null)
      b("B|0|" + paramString1 + paramString2);
  }

  public static void a(String paramString1, String paramString2, int paramInt)
  {
    if (a != null)
      b("B|0|" + paramString1 + "(" + paramString2 + "=" + paramInt + ")");
  }

  public static void a(String paramString1, String paramString2, String paramString3)
  {
    if (a != null)
      b("B|0|" + paramString1 + paramString2 + paramString3);
  }

  public static void b()
  {
    if (a != null);
    try
    {
      a.write(69);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private static void b(String paramString)
  {
    try
    {
      a.write(paramString.getBytes());
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.aj
 * JD-Core Version:    0.6.2
 */