package com.nianticproject.ingress.common.c;

import com.google.a.c.hc;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class ad
  implements ai
{
  private static final aa a = new aa(ad.class);
  private static final h b = h.d;
  private final Map<String, bb> c = hc.d();
  private final Map<String, bb> d = hc.d();
  private final Map<bn, bb> e = hc.d();
  private final AtomicInteger f = new AtomicInteger(1);
  private final m g;
  private final i h;
  private final h[] i;
  private final PriorityBlockingQueue<ah> j = new PriorityBlockingQueue();
  private final AtomicBoolean k = new AtomicBoolean();
  private boolean l = false;
  private int m = 0;
  private final BlockingQueue<ag> n = new LinkedBlockingQueue();

  public ad(m paramm)
  {
    this.g = paramm;
    this.h = new i(paramm);
    for (bh localbh : bh.values())
      this.c.put(localbh.toString(), new bb(paramm, this, this.h, localbh));
    this.i = new h[h.values().length];
    g[] arrayOfg = g.values();
    int i4 = arrayOfg.length;
    while (i1 < i4)
    {
      g localg = arrayOfg[i1];
      this.i[localg.ordinal()] = b;
      i1++;
    }
  }

  private bb f(bn parambn)
  {
    return (bb)this.e.get(parambn);
  }

  public final h a(g paramg)
  {
    return this.i[paramg.ordinal()];
  }

  public final void a()
  {
    try
    {
      aj.a("AudioSystemManager:pause");
      if (this.l)
        break label108;
      this.l = true;
      Iterator localIterator1 = this.c.values().iterator();
      while (localIterator1.hasNext())
        ((bb)localIterator1.next()).c();
    }
    finally
    {
      aj.b();
    }
    Iterator localIterator2 = this.d.values().iterator();
    while (localIterator2.hasNext())
      ((bb)localIterator2.next()).c();
    this.h.a();
    label108: aj.b();
  }

  public final void a(ah paramah)
  {
    try
    {
      aj.a("Audio:addTask(", paramah.a(), ")");
      paramah.f();
      if (paramah.d())
      {
        this.j.add(paramah);
        if (this.k.compareAndSet(false, true))
          new af(this).e();
      }
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(ba paramba)
  {
    this.h.a(paramba);
  }

  public final void a(bb parambb)
  {
    parambb.d();
  }

  public final void a(bn parambn)
  {
    this.e.remove(parambn);
  }

  public final void a(bn parambn, bb parambb)
  {
    this.e.put(parambn, parambb);
    if (com.nianticproject.ingress.shared.ag.a == com.nianticproject.ingress.shared.ah.a)
    {
      int i1 = this.e.size();
      if (i1 > 32)
        new Object[1][0] = Integer.valueOf(i1);
    }
  }

  public final void a(bn parambn, boolean paramBoolean)
  {
    if (this.l)
      this.n.offer(new ag(this, parambn, paramBoolean));
    g localg;
    do
    {
      return;
      localg = parambn.s();
    }
    while (a(localg).a() * parambn.b() < 0.05F);
    if (paramBoolean)
      parambn.q();
    Iterator localIterator = parambn.a().iterator();
    ba localba;
    do
    {
      if (!localIterator.hasNext())
        break;
      localba = ((bi)localIterator.next()).a();
    }
    while ((!localba.c()) || (!this.h.e(localba)));
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      b(parambn, true);
      return;
    }
    if (parambn.g())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = parambn.i();
      arrayOfObject[1] = Integer.valueOf(this.f.getAndIncrement());
      String str = String.format("%s-%d", arrayOfObject);
      bb localbb = new bb(this.g, this, this.h, str, localg);
      localbb.a(new ae(this, str));
      this.d.put(str, localbb);
      localbb.a(parambn);
      return;
    }
    if (parambn.e())
    {
      ((bb)this.c.get(parambn.i())).b(parambn);
      return;
    }
    ((bb)this.c.get(parambn.i())).a(parambn);
  }

  public final void a(g paramg, h paramh)
  {
    if (this.i[paramg.ordinal()] != paramh)
    {
      this.i[paramg.ordinal()] = paramh;
      Iterator localIterator1 = this.c.values().iterator();
      while (localIterator1.hasNext())
        ((bb)localIterator1.next()).a(paramg);
      Iterator localIterator2 = this.d.values().iterator();
      while (localIterator2.hasNext())
        ((bb)localIterator2.next()).a(paramg);
    }
  }

  public final void b()
  {
    try
    {
      aj.a("AudioSystemManager:resume");
      if (!this.l)
        break label198;
      this.l = false;
      Iterator localIterator1 = this.c.values().iterator();
      while (localIterator1.hasNext())
        ((bb)localIterator1.next()).f_();
    }
    finally
    {
      aj.b();
    }
    Iterator localIterator2 = this.d.values().iterator();
    while (localIterator2.hasNext())
      ((bb)localIterator2.next()).f_();
    new StringBuilder().append(this.n.size()).append(" tracks in queue").toString();
    Iterator localIterator3 = this.n.iterator();
    while (localIterator3.hasNext())
    {
      ag localag = (ag)localIterator3.next();
      a(localag.a, localag.b);
    }
    this.n.clear();
    label198: aj.b();
  }

  public final void b(ba paramba)
  {
    this.h.c(paramba);
  }

  public final void b(bn parambn)
  {
    bb localbb = f(parambn);
    if (localbb == null)
    {
      if (parambn.f())
        a(parambn, false);
      return;
    }
    localbb.a(parambn.b(), parambn.c());
  }

  public final void b(bn parambn, boolean paramBoolean)
  {
    boolean bool = parambn.f();
    Iterator localIterator = parambn.a().iterator();
    int i1 = 0;
    if (localIterator.hasNext())
    {
      ba localba = ((bi)localIterator.next()).a();
      if (((!bool) && (!localba.c())) || (!this.h.c(localba)))
        break label127;
    }
    label115: label127: for (int i3 = 1; ; i3 = i1)
    {
      i1 = i3;
      break;
      long l1;
      if (paramBoolean)
        if (i1 != 0)
        {
          int i2 = 10;
          if (this.j.peek() == null)
            i2 = 50;
          l1 = i2;
        }
      try
      {
        Thread.sleep(l1);
        p.a(this, parambn, false);
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label115;
      }
    }
  }

  public final void c()
  {
    Iterator localIterator1 = this.c.values().iterator();
    while (localIterator1.hasNext())
      ((bb)localIterator1.next()).b();
    Iterator localIterator2 = this.d.values().iterator();
    while (localIterator2.hasNext())
      ((bb)localIterator2.next()).b();
  }

  public final void c(bn parambn)
  {
    bb localbb = f(parambn);
    if (localbb != null)
      localbb.c(parambn);
  }

  public final void d(bn parambn)
  {
    bb localbb = f(parambn);
    if (localbb != null)
      localbb.d(parambn);
  }

  public final void e(bn parambn)
  {
    bb localbb = f(parambn);
    if (localbb != null)
      localbb.e(parambn);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.ad
 * JD-Core Version:    0.6.2
 */