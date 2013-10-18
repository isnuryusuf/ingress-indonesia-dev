package com.google.a.i.a;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class u extends c
{
  private final Lock a = new ReentrantLock();
  private final Condition b = this.a.newCondition();
  private int c = 0;
  private boolean d = false;

  private void a()
  {
    this.a.lock();
    try
    {
      this.c = (-1 + this.c);
      if (isTerminated())
        this.b.signalAll();
      return;
    }
    finally
    {
      this.a.unlock();
    }
  }

  public final boolean awaitTermination(long paramLong, TimeUnit paramTimeUnit)
  {
    long l1 = paramTimeUnit.toNanos(paramLong);
    this.a.lock();
    try
    {
      while (true)
      {
        boolean bool = isTerminated();
        if (bool)
          return true;
        if (l1 <= 0L)
          return false;
        long l2 = this.b.awaitNanos(l1);
        l1 = l2;
      }
    }
    finally
    {
      this.a.unlock();
    }
  }

  public final void execute(Runnable paramRunnable)
  {
    this.a.lock();
    try
    {
      if (isShutdown())
        throw new RejectedExecutionException("Executor already shutdown");
    }
    finally
    {
      this.a.unlock();
    }
    this.c = (1 + this.c);
    this.a.unlock();
    try
    {
      paramRunnable.run();
      return;
    }
    finally
    {
      a();
    }
  }

  public final boolean isShutdown()
  {
    this.a.lock();
    try
    {
      boolean bool = this.d;
      return bool;
    }
    finally
    {
      this.a.unlock();
    }
  }

  public final boolean isTerminated()
  {
    this.a.lock();
    try
    {
      if (this.d)
      {
        int i = this.c;
        if (i == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
    finally
    {
      this.a.unlock();
    }
  }

  public final void shutdown()
  {
    this.a.lock();
    try
    {
      this.d = true;
      return;
    }
    finally
    {
      this.a.unlock();
    }
  }

  public final List<Runnable> shutdownNow()
  {
    shutdown();
    return Collections.emptyList();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.u
 * JD-Core Version:    0.6.2
 */