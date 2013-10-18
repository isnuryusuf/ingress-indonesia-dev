package com.google.a.i.a;

import com.google.a.a.an;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public abstract class a<V>
  implements p<V>
{
  private final b<V> a = new b();
  private final f b = new f();

  static final CancellationException a(String paramString, Throwable paramThrowable)
  {
    CancellationException localCancellationException = new CancellationException(paramString);
    localCancellationException.initCause(paramThrowable);
    return localCancellationException;
  }

  public final void a(Runnable paramRunnable, Executor paramExecutor)
  {
    this.b.a(paramRunnable, paramExecutor);
  }

  protected final boolean a()
  {
    return this.a.d();
  }

  protected boolean a(V paramV)
  {
    boolean bool = this.a.a(paramV);
    if (bool)
      this.b.a();
    return bool;
  }

  protected boolean a(Throwable paramThrowable)
  {
    boolean bool = this.a.a((Throwable)an.a(paramThrowable));
    if (bool)
      this.b.a();
    if ((paramThrowable instanceof Error))
      throw ((Error)paramThrowable);
    return bool;
  }

  public boolean cancel(boolean paramBoolean)
  {
    if (!this.a.a(paramBoolean))
      return false;
    this.b.a();
    return true;
  }

  public V get()
  {
    return this.a.a();
  }

  public V get(long paramLong, TimeUnit paramTimeUnit)
  {
    return this.a.a(paramTimeUnit.toNanos(paramLong));
  }

  public boolean isCancelled()
  {
    return this.a.c();
  }

  public boolean isDone()
  {
    return this.a.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.a
 * JD-Core Version:    0.6.2
 */