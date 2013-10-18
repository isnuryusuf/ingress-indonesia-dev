package com.nianticproject.ingress.common.q.b;

import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.common.q.d;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class w
  implements Future<d>
{
  private final c b;
  private d c;
  private volatile int d;
  private Throwable e;

  w(r paramr, c paramc)
  {
    this.b = paramc;
    this.d = 0;
  }

  private d a(long paramLong, TimeUnit paramTimeUnit)
  {
    try
    {
      if (this.d == 4)
        throw new CancellationException();
    }
    finally
    {
    }
    while (true)
    {
      int i = this.d;
      if (i == 3)
        break label81;
      if (paramLong > 0L)
      {
        try
        {
          paramTimeUnit.timedWait(this, paramLong);
        }
        catch (InterruptedException localInterruptedException)
        {
          if (Thread.currentThread().isInterrupted())
            break;
        }
        throw new TimeoutException();
      }
      else
      {
        wait();
      }
    }
    throw localInterruptedException;
    label81: if (this.e != null)
      throw new ExecutionException(this.e);
    d locald = this.c;
    return locald;
  }

  private d e()
  {
    try
    {
      d locald = a(0L, TimeUnit.MILLISECONDS);
      return locald;
    }
    catch (TimeoutException localTimeoutException)
    {
      throw new InterruptedException();
    }
    finally
    {
    }
  }

  final c a()
  {
    return this.b;
  }

  final void a(d paramd)
  {
    try
    {
      int i = this.d;
      if (i == 3);
      while (true)
      {
        return;
        this.d = 3;
        this.c = paramd;
        notifyAll();
      }
    }
    finally
    {
    }
  }

  final void a(Throwable paramThrowable)
  {
    try
    {
      int i = this.d;
      if (i == 3);
      while (true)
      {
        return;
        this.d = 3;
        this.e = paramThrowable;
        notifyAll();
      }
    }
    finally
    {
    }
  }

  final boolean b()
  {
    try
    {
      int i = this.d;
      if (i == 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  final void c()
  {
    try
    {
      if (this.d != 0)
        throw new IllegalStateException("Attempted queueing of non-ready TileFuture");
    }
    finally
    {
    }
    this.d = 1;
  }

  public final boolean cancel(boolean paramBoolean)
  {
    try
    {
      if ((this.d != 0) && (this.d != 1))
        return false;
      this.d = 4;
      r.a(this.a, this);
      return true;
    }
    finally
    {
    }
  }

  final void d()
  {
    try
    {
      if (this.d != 1)
        throw new IllegalStateException("Attempted activation of active TileFuture");
    }
    finally
    {
    }
    this.d = 2;
  }

  public final boolean isCancelled()
  {
    try
    {
      int i = this.d;
      if (i == 4)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final boolean isDone()
  {
    try
    {
      int i = this.d;
      if (i == 3)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final String toString()
  {
    return "TileFuture: coord (" + this.b + ") state(" + this.d + ") exception(" + this.e + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.w
 * JD-Core Version:    0.6.2
 */