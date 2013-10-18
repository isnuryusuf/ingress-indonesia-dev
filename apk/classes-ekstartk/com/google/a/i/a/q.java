package com.google.a.i.a;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

public final class q<V> extends FutureTask<V>
  implements p<V>
{
  private final f a = new f();

  private q(Runnable paramRunnable, V paramV)
  {
    super(paramRunnable, paramV);
  }

  private q(Callable<V> paramCallable)
  {
    super(paramCallable);
  }

  public static <V> q<V> a(Runnable paramRunnable, V paramV)
  {
    return new q(paramRunnable, paramV);
  }

  public static <V> q<V> a(Callable<V> paramCallable)
  {
    return new q(paramCallable);
  }

  public final void a(Runnable paramRunnable, Executor paramExecutor)
  {
    this.a.a(paramRunnable, paramExecutor);
  }

  protected final void done()
  {
    this.a.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.i.a.q
 * JD-Core Version:    0.6.2
 */