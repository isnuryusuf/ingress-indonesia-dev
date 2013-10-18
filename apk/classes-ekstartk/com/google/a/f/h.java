package com.google.a.f;

import java.io.Closeable;
import java.lang.reflect.Method;

final class h
  implements i
{
  static final h a = new h();
  static final Method b = b();

  static boolean a()
  {
    return b != null;
  }

  private static Method b()
  {
    try
    {
      Method localMethod = Throwable.class.getMethod("addSuppressed", new Class[] { Throwable.class });
      return localMethod;
    }
    catch (Throwable localThrowable)
    {
    }
    return null;
  }

  public final void a(Closeable paramCloseable, Throwable paramThrowable1, Throwable paramThrowable2)
  {
    if (paramThrowable1 == paramThrowable2)
      return;
    try
    {
      b.invoke(paramThrowable1, new Object[] { paramThrowable2 });
      return;
    }
    catch (Throwable localThrowable)
    {
      g.a.a(paramCloseable, paramThrowable1, paramThrowable2);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.f.h
 * JD-Core Version:    0.6.2
 */