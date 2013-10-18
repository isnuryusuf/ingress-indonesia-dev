package com.nianticproject.ingress.common.f;

import com.google.a.a.an;
import com.google.a.a.ba;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class a<Progress, Result>
{
  private static final aa a = new aa(a.class);
  private static final ThreadFactory b = new b();
  private static final BlockingQueue<Runnable> c = new LinkedBlockingQueue(74);
  private static final ThreadPoolExecutor d = new ThreadPoolExecutor(5, 64, 1L, TimeUnit.SECONDS, c, b);
  private static boolean e = false;
  private static final Set<a<?, ?>> f = jc.b();
  private static final Set<a<?, ?>> g = jc.b();
  private static long h;
  private final Callable<Result> i;
  private final FutureTask<Result> j;
  private volatile g k = g.a;
  private final Executor l;
  private final AtomicBoolean m = new AtomicBoolean();
  private final AtomicBoolean n = new AtomicBoolean();
  private String o;
  private ba<Result> p = null;

  public a(Executor paramExecutor)
  {
    an.a(d, "AbstractBackgroundTask not initialized");
    this.l = paramExecutor;
    if (aj.a() != null)
      this.o = getClass().getName();
    if (e)
      g.add(this);
    this.i = new c(this);
    this.j = new d(this, this.i);
  }

  public static void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }

  public static String b()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(d.getActiveCount());
    arrayOfObject[1] = Integer.valueOf(d.getPoolSize());
    arrayOfObject[2] = Integer.valueOf(c.size());
    return String.format("T: %d/%d in Q: %d", arrayOfObject);
  }

  private Result c(Result paramResult)
  {
    this.l.execute(new e(this, paramResult));
    return paramResult;
  }

  public static void c()
  {
    if ((e) && (System.currentTimeMillis() > h))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(f.size());
      arrayOfObject[1] = Integer.valueOf(g.size());
      Iterator localIterator1 = f.iterator();
      while (localIterator1.hasNext())
        new Object[1][0] = ((a)localIterator1.next()).getClass().getName();
      Iterator localIterator2 = g.iterator();
      while (localIterator2.hasNext())
        new Object[1][0] = ((a)localIterator2.next()).getClass().getName();
      h = 1000L + System.currentTimeMillis();
    }
  }

  public a<Progress, Result> a(ba<Result> paramba)
  {
    this.p = paramba;
    return e();
  }

  protected abstract Result a();

  protected void a(Result paramResult)
  {
  }

  protected void b(Result paramResult)
  {
    a.c("onCancelled not overridden: You must override onCancelled! Do not forget to dispose of any held resources to prevent leaks!");
  }

  public final boolean b(boolean paramBoolean)
  {
    this.m.set(true);
    return this.j.cancel(paramBoolean);
  }

  public final boolean d()
  {
    return this.m.get();
  }

  public final a<Progress, Result> e()
  {
    if (this.k != g.a);
    switch (f.a[this.k.ordinal()])
    {
    default:
      this.k = g.b;
      d.execute(this.j);
      return this;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.a
 * JD-Core Version:    0.6.2
 */