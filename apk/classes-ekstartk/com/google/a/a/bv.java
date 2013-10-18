package com.google.a.a;

import java.io.PrintWriter;
import java.io.StringWriter;

public final class bv
{
  public static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }

  public static <X extends Throwable> void a(Throwable paramThrowable, Class<X> paramClass)
  {
    b(paramThrowable, paramClass);
    b(paramThrowable, Error.class);
    b(paramThrowable, RuntimeException.class);
  }

  private static <X extends Throwable> void b(Throwable paramThrowable, Class<X> paramClass)
  {
    if ((paramThrowable != null) && (paramClass.isInstance(paramThrowable)))
      throw ((Throwable)paramClass.cast(paramThrowable));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bv
 * JD-Core Version:    0.6.2
 */