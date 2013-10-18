package com.nianticproject.ingress.common.x;

import com.badlogic.gdx.utils.Array;
import com.google.a.a.an;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

public class i
{
  private static final aa f = new aa(i.class);
  private static final i g = new i(new n());
  private static boolean h = false;
  private static long i;
  j a = null;
  final ConcurrentLinkedQueue<m> b = new ConcurrentLinkedQueue();
  final ConcurrentLinkedQueue<j> c = new ConcurrentLinkedQueue();
  final Array<m> d = new Array(true, 16);
  final n e;

  private i(n paramn)
  {
    this.e = ((n)an.a(paramn));
  }

  private long a(p paramp, long paramLong)
  {
    try
    {
      aj.a(this.a.a.n_());
      f localf = this.a.a.a(paramp);
      long l = paramp.a();
      this.a.c = (paramLong - l);
      this.e.a(this.a);
      if (localf != null)
        this.a.a = localf;
      while (true)
      {
        return l;
        this.a = null;
      }
    }
    finally
    {
      aj.b();
    }
  }

  public static i a()
  {
    return g;
  }

  public static void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }

  public final long a(long paramLong)
  {
    if (paramLong == 60000000000L);
    p localp;
    for (String str = "-flush"; ; str = "")
      try
      {
        aj.a("GameWorkqueue.run", str);
        localp = new p(paramLong);
        this.e.a(localp);
        if (this.b.isEmpty())
          break label96;
        while (true)
        {
          m localm1 = (m)this.b.poll();
          if (localm1 == null)
            break;
          this.d.add(localm1);
        }
      }
      finally
      {
        aj.b();
      }
    this.d.sort();
    label96: long l1 = localp.a();
    m localm2;
    if (l1 > 0L)
      if (this.a == null)
      {
        if (this.d.size <= 0)
          break label270;
        localm2 = (m)this.d.peek();
        if ((localm2 == null) || (System.nanoTime() - localm2.d < 0L))
          break label270;
        this.d.pop();
      }
    while (true)
    {
      this.a = localm2;
      if (this.a == null)
      {
        this.a = ((j)this.c.poll());
        if (this.a == null);
      }
      else
      {
        l1 = a(localp, l1);
        break;
      }
      this.e.b(localp);
      j localj = (j)this.c.peek();
      if (localj == null);
      long l2;
      long l3;
      for (long l4 = 0L; ; l4 = l2 - l3)
      {
        aj.b();
        return l4;
        l2 = System.nanoTime();
        l3 = localj.b;
      }
      label270: localm2 = null;
    }
  }

  public final void a(f paramf)
  {
    j localj = new j(System.nanoTime());
    localj.a = paramf;
    this.c.offer(localj);
  }

  public final void a(f paramf, long paramLong)
  {
    m localm = new m(System.nanoTime(), 1000000L * paramLong);
    localm.a = paramf;
    this.b.offer(localm);
  }

  public final void a(f paramf, long paramLong1, long paramLong2)
  {
    a(new k(this, paramf, System.nanoTime(), paramLong1 * 1000000L, paramLong2 * 1000000L));
  }

  final void a(k paramk)
  {
    this.b.offer(paramk);
  }

  public final void b()
  {
    a(60000000000L);
  }

  public final n c()
  {
    return this.e;
  }

  public final void d()
  {
    if ((h) && (System.currentTimeMillis() > i))
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(this.c.size());
      arrayOfObject[1] = Integer.valueOf(this.d.size);
      arrayOfObject[2] = Integer.valueOf(this.b.size());
      Iterator localIterator1 = this.c.iterator();
      while (localIterator1.hasNext())
      {
        j localj = (j)localIterator1.next();
        new Object[1][0] = localj.a.n_();
      }
      Iterator localIterator2 = this.d.iterator();
      while (localIterator2.hasNext())
      {
        m localm2 = (m)localIterator2.next();
        new Object[1][0] = localm2.a.n_();
      }
      Iterator localIterator3 = this.b.iterator();
      while (localIterator3.hasNext())
      {
        m localm1 = (m)localIterator3.next();
        new Object[1][0] = localm1.a.n_();
      }
      i = 1000L + System.currentTimeMillis();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.i
 * JD-Core Version:    0.6.2
 */