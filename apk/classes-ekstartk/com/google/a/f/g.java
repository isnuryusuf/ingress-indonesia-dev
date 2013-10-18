package com.google.a.f;

import java.io.Closeable;
import java.util.logging.Level;
import java.util.logging.Logger;

final class g
  implements i
{
  static final g a = new g();

  public final void a(Closeable paramCloseable, Throwable paramThrowable1, Throwable paramThrowable2)
  {
    e.a.log(Level.WARNING, "Suppressing exception thrown when closing " + paramCloseable, paramThrowable2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.f.g
 * JD-Core Version:    0.6.2
 */