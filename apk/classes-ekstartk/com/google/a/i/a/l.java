package com.google.a.i.a;

import com.google.a.a.an;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class l<I, O> extends a<O>
  implements Runnable
{
  private d<? super I, ? extends O> a;
  private p<? extends I> b;
  private volatile p<? extends O> c;
  private final CountDownLatch d = new CountDownLatch(1);

  private l(d<? super I, ? extends O> paramd, p<? extends I> paramp)
  {
    this.a = ((d)an.a(paramd));
    this.b = ((p)an.a(paramp));
  }

  private static void a(Future<?> paramFuture, boolean paramBoolean)
  {
    if (paramFuture != null)
      paramFuture.cancel(paramBoolean);
  }

  public final boolean cancel(boolean paramBoolean)
  {
    if (super.cancel(paramBoolean))
    {
      a(this.b, paramBoolean);
      a(this.c, paramBoolean);
      return true;
    }
    return false;
  }

  public final O get()
  {
    if (!isDone())
    {
      p localp1 = this.b;
      if (localp1 != null)
        localp1.get();
      this.d.await();
      p localp2 = this.c;
      if (localp2 != null)
        localp2.get();
    }
    return super.get();
  }

  public final O get(long paramLong, TimeUnit paramTimeUnit)
  {
    if (!isDone())
    {
      if (paramTimeUnit != TimeUnit.NANOSECONDS)
      {
        paramLong = TimeUnit.NANOSECONDS.convert(paramLong, paramTimeUnit);
        paramTimeUnit = TimeUnit.NANOSECONDS;
      }
      p localp1 = this.b;
      if (localp1 != null)
      {
        long l2 = System.nanoTime();
        localp1.get(paramLong, paramTimeUnit);
        paramLong -= Math.max(0L, System.nanoTime() - l2);
      }
      long l1 = System.nanoTime();
      if (!this.d.await(paramLong, paramTimeUnit))
        throw new TimeoutException();
      paramLong -= Math.max(0L, System.nanoTime() - l1);
      p localp2 = this.c;
      if (localp2 != null)
        localp2.get(paramLong, paramTimeUnit);
    }
    return super.get(paramLong, paramTimeUnit);
  }

  public final void run()
  {
    try
    {
      Object localObject2 = x.a(this.b);
      localp = this.a.a(localObject2);
      this.c = localp;
      if (isCancelled())
      {
        localp.cancel(a());
        this.c = null;
        return;
      }
    }
    catch (CancellationException localCancellationException)
    {
      cancel(false);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      p localp;
      a(localExecutionException.getCause());
      return;
      localp.a(new m(this, localp), s.a());
      return;
    }
    catch (UndeclaredThrowableException localUndeclaredThrowableException)
    {
      a(localUndeclaredThrowableException.getCause());
      return;
    }
    catch (Exception localException)
    {
      a(localException);
      return;
    }
    catch (Error localError)
    {
      a(localError);
      return;
    }
    finally
    {
      this.a = null;
      this.b = null;
      this.d.countDown();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.l
 * JD-Core Version:    0.6.2
 */