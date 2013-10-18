package com.nianticproject.ingress.common.w;

import com.google.a.a.an;
import com.google.a.c.ec;
import com.google.a.c.ii;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;

public final class b
{
  private final Queue<d> a = ii.b();
  private final AtomicBoolean b = new AtomicBoolean();
  private final boolean c;
  private final ec<h, d, h> d;
  private final h e;
  private final h f;
  private h g;

  private b(boolean paramBoolean, h paramh1, h paramh2, ec<h, d, h> paramec)
  {
    this.c = paramBoolean;
    this.e = paramh1;
    this.f = paramh2;
    this.d = paramec;
  }

  public static c a()
  {
    return new c((byte)0);
  }

  public final void a(d paramd)
  {
    this.a.add(paramd);
    if (this.b.compareAndSet(false, true))
    {
      d locald = (d)this.a.poll();
      if (locald != null)
      {
        if (this.g != null);
        for (boolean bool = true; ; bool = false)
        {
          an.b(bool, "state machine has not been started");
          h localh = (h)this.d.b(this.g, locald);
          if (localh == null)
          {
            if (!this.c)
              break;
            localh = this.f;
          }
          this.g.u_();
          localh.a();
          this.g = localh;
          break;
        }
      }
      this.b.set(false);
    }
  }

  public final void b()
  {
    try
    {
      if (this.g == null);
      for (boolean bool = true; ; bool = false)
      {
        an.b(bool, "state machine already started");
        this.g = this.e;
        this.g.a();
        return;
      }
    }
    finally
    {
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.b
 * JD-Core Version:    0.6.2
 */