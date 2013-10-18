package android.support.v4.a;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class h
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);

  public final Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "ModernAsyncTask #" + this.a.getAndIncrement());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.h
 * JD-Core Version:    0.6.2
 */