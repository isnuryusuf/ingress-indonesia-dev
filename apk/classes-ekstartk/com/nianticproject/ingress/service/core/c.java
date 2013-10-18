package com.nianticproject.ingress.service.core;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.nianticproject.ingress.common.w.aa;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class c extends Thread
  implements ThreadFactory
{
  private static int a = 0;
  private static final ThreadFactory j = new f();
  private final LinkedBlockingQueue<Intent> b = new LinkedBlockingQueue();
  private final h c;
  private final aa d;
  private final Handler e;
  private Handler f;
  private final Object g = new Object();
  private ExecutorService h;
  private final Runnable i = new d(this);

  public c(h paramh, Handler paramHandler, aa paramaa)
  {
    this.c = paramh;
    this.e = paramHandler;
    this.d = paramaa;
  }

  final void a()
  {
    synchronized (this.g)
    {
      this.h = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(256), j);
      start();
      return;
    }
  }

  public final void a(Intent paramIntent)
  {
    this.b.add(paramIntent);
    if (this.f != null)
      this.f.post(this.i);
  }

  final void b()
  {
    synchronized (this.g)
    {
      if (this.h != null)
      {
        List localList = this.h.shutdownNow();
        if ((localList != null) && (localList.size() > 0))
          new StringBuilder("Threadpool stopped, ").append(localList.size()).append(" incomplete requests").toString();
        this.h = null;
      }
      if (this.f != null)
        this.f.getLooper().quit();
      return;
    }
  }

  final void b(Intent paramIntent)
  {
    synchronized (this.g)
    {
      if (this.h == null)
      {
        this.d.b("Attempting to use the threadpool after it was stopped, dropping task!");
        return;
      }
      this.h.submit(new g(this, paramIntent));
      return;
    }
  }

  public final Thread newThread(Runnable paramRunnable)
  {
    StringBuilder localStringBuilder = new StringBuilder("CoreServiceThread-");
    int k = a;
    a = k + 1;
    return new Thread(paramRunnable, k);
  }

  public final void run()
  {
    Looper.prepare();
    this.f = new Handler(Looper.myLooper());
    this.e.post(new e(this));
    Looper.loop();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.core.c
 * JD-Core Version:    0.6.2
 */