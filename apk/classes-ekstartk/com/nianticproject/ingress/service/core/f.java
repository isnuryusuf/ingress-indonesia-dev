package com.nianticproject.ingress.service.core;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class f
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);

  public final Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable, "CoreServicePoolTask #" + this.a.getAndIncrement());
    localThread.setPriority(1);
    return localThread;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.core.f
 * JD-Core Version:    0.6.2
 */