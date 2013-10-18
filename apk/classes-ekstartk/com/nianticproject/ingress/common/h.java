package com.nianticproject.ingress.common;

import com.google.a.d.u;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.model.d;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.shared.aj;
import java.util.concurrent.atomic.AtomicBoolean;

public final class h extends n
{
  private final com.nianticproject.ingress.common.model.k a;
  private final com.nianticproject.ingress.common.scanner.k b;
  private final e c;
  private final d d;
  private ad e;
  private ad f;
  private long g;
  private long h;
  private final AtomicBoolean i;
  private boolean j = true;

  public h(com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, e parame, d paramd)
  {
    this.a = paramk;
    this.b = paramk1;
    this.c = parame;
    this.d = paramd;
    this.i = new AtomicBoolean(false);
    com.nianticproject.ingress.common.x.i.a().a(new i(this, "EnergyCollectorPlayerListener.periodicMaybeCollectEnergy"), 1000L, 15000L);
  }

  private void b()
  {
    if ((!this.j) || (this.e == null));
    long l1;
    long l2;
    u localu;
    do
    {
      do
      {
        do
        {
          return;
          l1 = this.a.c() - this.a.d();
        }
        while (l1 == 0L);
        l2 = System.currentTimeMillis();
      }
      while (this.g > l2);
      localu = this.e.a();
    }
    while (((this.f != null) && (this.f.a().a(localu) < 4.0D) && (this.h > l2)) || (!this.i.compareAndSet(false, true)));
    this.f = this.e;
    this.g = (3000L + l2);
    this.h = (l2 + 15000L);
    new j(this, this.e, l1).e();
  }

  public final String a()
  {
    return "EnergyCollectorPlayerListener";
  }

  public final void a(ad paramad)
  {
    try
    {
      aj.a("EnergyCollectorPlayerListener.onLocationChanged");
      this.e = paramad;
      b();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h
 * JD-Core Version:    0.6.2
 */