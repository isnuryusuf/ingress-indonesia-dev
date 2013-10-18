package com.nianticproject.ingress.g;

import com.nianticproject.ingress.common.w.aa;
import java.util.logging.Level;

public class b
{
  private static final aa a = new aa(b.class);

  public static void a(String paramString)
  {
    a(null, paramString);
  }

  public static void a(Throwable paramThrowable, String paramString)
  {
    a.a(Level.WARNING, paramThrowable, paramString);
  }

  public static void b(String paramString)
  {
    a.a(Level.INFO, null, paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.g.b
 * JD-Core Version:    0.6.2
 */