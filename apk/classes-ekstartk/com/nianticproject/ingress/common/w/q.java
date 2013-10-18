package com.nianticproject.ingress.common.w;

import java.util.concurrent.PriorityBlockingQueue;

public final class q<T extends r<T>> extends PriorityBlockingQueue<T>
{
  private final s a;

  public q(s params)
  {
    this.a = params;
  }

  public final T a()
  {
    long l = this.a.a();
    while (true)
    {
      r localr = (r)super.peek();
      if ((localr == null) || (!localr.a(l)))
        return localr;
      super.remove(localr);
    }
  }

  public final T b()
  {
    long l = this.a.a();
    r localr;
    do
      localr = (r)super.poll();
    while ((localr != null) && (localr.a(l)));
    return localr;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.q
 * JD-Core Version:    0.6.2
 */