package com.google.a.f;

import com.google.a.a.an;
import com.google.a.a.bv;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;

public final class f
  implements Closeable
{
  private static final i b;
  final i a;
  private final Deque<Closeable> c = new ArrayDeque(4);
  private Throwable d;

  static
  {
    if (h.a());
    for (Object localObject = h.a; ; localObject = g.a)
    {
      b = (i)localObject;
      return;
    }
  }

  private f(i parami)
  {
    this.a = ((i)an.a(parami));
  }

  public static f a()
  {
    return new f(b);
  }

  public final <C extends Closeable> C a(C paramC)
  {
    if (paramC != null)
      this.c.push(paramC);
    return paramC;
  }

  public final RuntimeException a(Throwable paramThrowable)
  {
    an.a(paramThrowable);
    this.d = paramThrowable;
    bv.a(paramThrowable, IOException.class);
    throw new RuntimeException(paramThrowable);
  }

  public final void close()
  {
    Object localObject = this.d;
    while (!this.c.isEmpty())
    {
      Closeable localCloseable = (Closeable)this.c.pop();
      try
      {
        localCloseable.close();
      }
      catch (Throwable localThrowable)
      {
        if (localObject == null)
          localObject = localThrowable;
        else
          this.a.a(localCloseable, (Throwable)localObject, localThrowable);
      }
    }
    if ((this.d == null) && (localObject != null))
    {
      bv.a((Throwable)localObject, IOException.class);
      throw new AssertionError(localObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.f.f
 * JD-Core Version:    0.6.2
 */