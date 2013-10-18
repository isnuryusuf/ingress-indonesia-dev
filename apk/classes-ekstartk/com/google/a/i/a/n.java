package com.google.a.i.a;

import com.google.a.a.an;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

abstract class n<V>
  implements p<V>
{
  private static final Logger a = Logger.getLogger(n.class.getName());

  public final void a(Runnable paramRunnable, Executor paramExecutor)
  {
    an.a(paramRunnable, "Runnable was null.");
    an.a(paramExecutor, "Executor was null.");
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

  public boolean cancel(boolean paramBoolean)
  {
    return false;
  }

  public abstract V get();

  public V get(long paramLong, TimeUnit paramTimeUnit)
  {
    an.a(paramTimeUnit);
    return get();
  }

  public boolean isCancelled()
  {
    return false;
  }

  public boolean isDone()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.n
 * JD-Core Version:    0.6.2
 */