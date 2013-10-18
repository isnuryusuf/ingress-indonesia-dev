package com.google.a.i.a;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;

final class b<V> extends AbstractQueuedSynchronizer
{
  private V a;
  private Throwable b;

  private boolean a(V paramV, Throwable paramThrowable, int paramInt)
  {
    boolean bool = compareAndSetState(0, 1);
    if (bool)
    {
      this.a = paramV;
      if ((paramInt & 0xC) != 0)
        paramThrowable = new CancellationException("Future.cancel() was called.");
      this.b = paramThrowable;
      releaseShared(paramInt);
    }
    while (getState() != 1)
      return bool;
    acquireShared(-1);
    return bool;
  }

  private V e()
  {
    int i = getState();
    switch (i)
    {
    default:
      throw new IllegalStateException("Error, synchronizer in invalid state: " + i);
    case 2:
      if (this.b != null)
        throw new ExecutionException(this.b);
      return this.a;
    case 4:
    case 8:
    }
    throw a.a("Task was cancelled.", this.b);
  }

  final V a()
  {
    acquireSharedInterruptibly(-1);
    return e();
  }

  final V a(long paramLong)
  {
    if (!tryAcquireSharedNanos(-1, paramLong))
      throw new TimeoutException("Timeout waiting for task.");
    return e();
  }

  final boolean a(V paramV)
  {
    return a(paramV, null, 2);
  }

  final boolean a(Throwable paramThrowable)
  {
    return a(null, paramThrowable, 2);
  }

  final boolean a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 8; ; i = 4)
      return a(null, null, i);
  }

  final boolean b()
  {
    return (0xE & getState()) != 0;
  }

  final boolean c()
  {
    return (0xC & getState()) != 0;
  }

  final boolean d()
  {
    return getState() == 8;
  }

  protected final int tryAcquireShared(int paramInt)
  {
    if (b())
      return 1;
    return -1;
  }

  protected final boolean tryReleaseShared(int paramInt)
  {
    setState(paramInt);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.b
 * JD-Core Version:    0.6.2
 */