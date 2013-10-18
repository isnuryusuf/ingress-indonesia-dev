package com.google.a.i.a;

import com.google.a.a.an;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class f
{
  static final Logger a = Logger.getLogger(f.class.getName());
  private g b;
  private boolean c;

  private static void b(Runnable paramRunnable, Executor paramExecutor)
  {
    try
    {
      paramExecutor.execute(paramRunnable);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      a.log(Level.SEVERE, "RuntimeException while executing runnable " + paramRunnable + " with executor " + paramExecutor, localRuntimeException);
    }
  }

  public final void a()
  {
    Object localObject1 = null;
    try
    {
      if (this.c)
        return;
      this.c = true;
      Object localObject3 = this.b;
      this.b = null;
      while (localObject3 != null)
      {
        g localg = ((g)localObject3).c;
        ((g)localObject3).c = ((g)localObject1);
        localObject1 = localObject3;
        localObject3 = localg;
      }
    }
    finally
    {
    }
    while (localObject1 != null)
    {
      b(((g)localObject1).a, ((g)localObject1).b);
      localObject1 = ((g)localObject1).c;
    }
  }

  public final void a(Runnable paramRunnable, Executor paramExecutor)
  {
    an.a(paramRunnable, "Runnable was null.");
    an.a(paramExecutor, "Executor was null.");
    try
    {
      if (!this.c)
      {
        this.b = new g(paramRunnable, paramExecutor, this.b);
        return;
      }
      b(paramRunnable, paramExecutor);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.f
 * JD-Core Version:    0.6.2
 */