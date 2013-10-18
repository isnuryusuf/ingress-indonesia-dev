package com.nianticproject.ingress.common.q.b;

import java.util.ArrayList;

final class u
  implements Runnable
{
  private final c b;
  private final ArrayList<e> c;
  private Throwable d;

  u(c paramc, ArrayList<e> paramArrayList)
  {
    this.b = paramArrayList;
    Object localObject;
    this.c = localObject;
  }

  public final void run()
  {
    try
    {
      this.b.a(this.c);
      r.a(this.a, this.b, this.c, this.d);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        this.d = localThrowable;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.u
 * JD-Core Version:    0.6.2
 */