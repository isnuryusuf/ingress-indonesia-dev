package android.support.v4.a;

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class g<Params, Progress, Result>
{
  private static final ThreadFactory a = new h();
  private static final BlockingQueue<Runnable> b = new LinkedBlockingQueue(10);
  private static final m c = new m((byte)0);
  public static final Executor d = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, b, a);
  private static volatile Executor e = d;
  private final o<Params, Result> f = new i(this);
  private final FutureTask<Result> g = new j(this, this.f);
  private volatile n h = n.a;
  private final AtomicBoolean i = new AtomicBoolean();

  private Result b(Result paramResult)
  {
    c.obtainMessage(1, new l(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }

  protected static void c()
  {
  }

  public final g<Params, Progress, Result> a(Executor paramExecutor)
  {
    if (this.h != n.a);
    switch (k.a[this.h.ordinal()])
    {
    default:
      this.h = n.b;
      this.f.b = null;
      paramExecutor.execute(this.g);
      return this;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }

  protected void a()
  {
  }

  protected void a(Result paramResult)
  {
  }

  protected abstract Result b();

  public final boolean d()
  {
    return this.g.cancel(false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.g
 * JD-Core Version:    0.6.2
 */