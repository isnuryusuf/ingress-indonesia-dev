package com.nianticproject.ingress.common.w;

import com.nianticproject.ingress.g.d;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class aa
{
  private static final Level a = Level.FINE;
  private static d b;
  private final Logger c;

  public aa(Class<?> paramClass)
  {
    this(Logger.getLogger(paramClass.getSimpleName()));
  }

  public aa(String paramString)
  {
    this(Logger.getLogger(paramString));
  }

  private aa(Logger paramLogger)
  {
    this.c = paramLogger;
  }

  public static d a(d paramd)
  {
    b = paramd;
    return paramd;
  }

  private void a(Level paramLevel, String paramString)
  {
    if (this.c.isLoggable(paramLevel))
      a(paramLevel, paramString, null);
  }

  private void a(Level paramLevel, String paramString, Throwable paramThrowable)
  {
    if (paramThrowable == null)
      this.c.log(paramLevel, paramString);
    while (true)
    {
      if ((b != null) && (b.a(paramLevel)))
        b.a(paramLevel, paramString, paramThrowable);
      return;
      this.c.log(paramLevel, paramString, paramThrowable);
    }
  }

  private void a(Level paramLevel, String paramString, Object[] paramArrayOfObject)
  {
    if (this.c.isLoggable(paramLevel))
      a(paramLevel, String.format(paramString, paramArrayOfObject), null);
  }

  private void a(Level paramLevel, Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    if (this.c.isLoggable(paramLevel))
      a(paramLevel, String.format(paramString, paramArrayOfObject), paramThrowable);
  }

  public final void a(String paramString)
  {
    a(Level.INFO, paramString);
  }

  public final void a(String paramString, Object[] paramArrayOfObject)
  {
    a(Level.INFO, paramString, paramArrayOfObject);
  }

  public final void a(Throwable paramThrowable, String paramString)
  {
    a(Level.WARNING, paramThrowable, paramString);
  }

  public final void a(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Level.INFO, paramThrowable, paramString, paramArrayOfObject);
  }

  public final void a(Level paramLevel, Throwable paramThrowable, String paramString)
  {
    if (this.c.isLoggable(paramLevel))
      a(paramLevel, paramString, paramThrowable);
  }

  public final void b(String paramString)
  {
    a(Level.WARNING, paramString);
  }

  public final void b(String paramString, Object[] paramArrayOfObject)
  {
    a(Level.WARNING, paramString, paramArrayOfObject);
  }

  public final void b(Throwable paramThrowable, String paramString)
  {
    a(Level.SEVERE, paramThrowable, paramString);
  }

  public final void b(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Level.WARNING, paramThrowable, paramString, paramArrayOfObject);
  }

  public final void c(String paramString)
  {
    a(Level.SEVERE, paramString);
  }

  public final void c(String paramString, Object[] paramArrayOfObject)
  {
    a(Level.SEVERE, paramString, paramArrayOfObject);
  }

  public final void c(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Level.SEVERE, paramThrowable, paramString, paramArrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.aa
 * JD-Core Version:    0.6.2
 */