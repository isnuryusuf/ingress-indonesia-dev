package com.google.a.i.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public abstract class c
  implements r
{
  public final <T> p<T> a(Callable<T> paramCallable)
  {
    q localq = q.a(paramCallable);
    execute(localq);
    return localq;
  }

  public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> paramCollection)
  {
    if (paramCollection == null)
      throw new NullPointerException();
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    try
    {
      Iterator localIterator2 = paramCollection.iterator();
      while (localIterator2.hasNext())
      {
        q localq = q.a((Callable)localIterator2.next());
        localArrayList.add(localq);
        execute(localq);
      }
    }
    finally
    {
      Iterator localIterator1 = localArrayList.iterator();
      Iterator localIterator3;
      while (localIterator1.hasNext())
      {
        ((Future)localIterator1.next()).cancel(true);
        continue;
        localIterator3 = localArrayList.iterator();
      }
      while (localIterator3.hasNext())
      {
        Future localFuture = (Future)localIterator3.next();
        boolean bool = localFuture.isDone();
        if (!bool)
          try
          {
            localFuture.get();
          }
          catch (CancellationException localCancellationException)
          {
            continue;
            throw localObject;
          }
          catch (ExecutionException localExecutionException)
          {
          }
      }
    }
    return localArrayList;
  }

  public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
  {
    if ((paramCollection == null) || (paramTimeUnit == null))
      throw new NullPointerException();
    long l1 = paramTimeUnit.toNanos(paramLong);
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    while (true)
    {
      Iterator localIterator1;
      try
      {
        Iterator localIterator2 = paramCollection.iterator();
        if (!localIterator2.hasNext())
          break;
        localArrayList.add(q.a((Callable)localIterator2.next()));
        continue;
      }
      finally
      {
        localIterator1 = localArrayList.iterator();
        if (!localIterator1.hasNext())
          break label416;
      }
      ((Future)localIterator1.next()).cancel(true);
    }
    long l2 = System.nanoTime();
    Iterator localIterator3 = localArrayList.iterator();
    while (localIterator3.hasNext())
    {
      execute((Runnable)localIterator3.next());
      long l6 = System.nanoTime();
      l1 -= l6 - l2;
      if (l1 <= 0L)
      {
        Iterator localIterator7 = localArrayList.iterator();
        while (localIterator7.hasNext())
          ((Future)localIterator7.next()).cancel(true);
        return localArrayList;
      }
      l2 = l6;
    }
    Iterator localIterator4 = localArrayList.iterator();
    Future localFuture;
    if (localIterator4.hasNext())
    {
      localFuture = (Future)localIterator4.next();
      boolean bool = localFuture.isDone();
      if (bool)
        break label429;
      if (l1 <= 0L)
      {
        Iterator localIterator6 = localArrayList.iterator();
        while (localIterator6.hasNext())
          ((Future)localIterator6.next()).cancel(true);
        return localArrayList;
      }
    }
    while (true)
    {
      try
      {
        localFuture.get(l1, TimeUnit.NANOSECONDS);
        long l5 = System.nanoTime();
        l3 = l5;
        l4 = l1 - (l3 - l2);
        l1 = l4;
        l2 = l3;
      }
      catch (TimeoutException localTimeoutException)
      {
        Iterator localIterator5 = localArrayList.iterator();
        if (localIterator5.hasNext())
        {
          ((Future)localIterator5.next()).cancel(true);
          continue;
        }
        return localArrayList;
        return localArrayList;
        throw localObject;
      }
      catch (ExecutionException localExecutionException)
      {
        continue;
      }
      catch (CancellationException localCancellationException)
      {
        label416: continue;
      }
      label429: long l3 = l2;
      long l4 = l1;
    }
  }

  public <T> T invokeAny(Collection<? extends Callable<T>> paramCollection)
  {
    try
    {
      Object localObject = s.a(this, paramCollection, false, 0L);
      return localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
    }
    throw new AssertionError();
  }

  public <T> T invokeAny(Collection<? extends Callable<T>> paramCollection, long paramLong, TimeUnit paramTimeUnit)
  {
    return s.a(this, paramCollection, true, paramTimeUnit.toNanos(paramLong));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.c
 * JD-Core Version:    0.6.2
 */