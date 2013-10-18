package com.google.analytics.tracking.android;

import android.content.Context;
import com.google.android.gms.analytics.internal.Command;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

final class t
  implements bc, f, g
{
  private volatile long a;
  private volatile x b;
  private volatile c c;
  private h d;
  private h e = null;
  private final j f;
  private final Context g;
  private final Queue<aa> h = new ConcurrentLinkedQueue();
  private volatile int i;
  private volatile Timer j;
  private volatile Timer k;
  private volatile Timer l;
  private boolean m;
  private boolean n;
  private l o;
  private long p = 300000L;

  private t(Context paramContext, j paramj)
  {
    this.g = paramContext;
    this.f = paramj;
    this.o = new u(this);
    this.i = 0;
    this.b = x.g;
  }

  t(Context paramContext, j paramj, byte paramByte)
  {
    this(paramContext, paramj);
  }

  private static Timer a(Timer paramTimer)
  {
    if (paramTimer != null)
      paramTimer.cancel();
    return null;
  }

  private void e()
  {
    this.j = a(this.j);
    this.k = a(this.k);
    this.l = a(this.l);
  }

  private void f()
  {
    while (true)
    {
      try
      {
        if (!Thread.currentThread().equals(this.f.c()))
        {
          this.f.b().add(new v(this));
          return;
        }
        if (this.n)
        {
          aq.d("clearHits called");
          this.h.clear();
        }
        switch (w.a[this.b.ordinal()])
        {
        default:
          this.n = true;
          switch (w.a[this.b.ordinal()])
          {
          case 1:
            if (this.h.isEmpty())
              break label247;
            aa localaa2 = (aa)this.h.poll();
            aq.d("Sending hit to store");
            this.d.a(localaa2.a(), localaa2.b(), localaa2.c(), localaa2.d());
            continue;
          case 2:
          case 3:
          }
          break;
        case 1:
        case 2:
        }
      }
      finally
      {
      }
      this.d.a();
      this.n = false;
      continue;
      this.c.a();
      this.n = false;
      continue;
      label247: if (this.m)
      {
        g();
        continue;
        while (!this.h.isEmpty())
        {
          aa localaa1 = (aa)this.h.peek();
          aq.d("Sending hit to service");
          this.c.a(localaa1.a(), localaa1.b(), localaa1.c(), localaa1.d());
          this.h.poll();
        }
        this.a = this.o.a();
        continue;
        aq.d("Need to reconnect");
        if (!this.h.isEmpty())
          i();
      }
    }
  }

  private void g()
  {
    this.d.b();
    this.m = false;
  }

  private void h()
  {
    while (true)
    {
      try
      {
        x localx1 = this.b;
        x localx2 = x.c;
        if (localx1 == localx2)
          return;
        e();
        aq.d("falling back to local store");
        if (this.e != null)
        {
          this.d = this.e;
          this.b = x.c;
          f();
          continue;
        }
      }
      finally
      {
      }
      q localq = q.a();
      localq.a(this.g, this.f);
      this.d = localq.b();
    }
  }

  private void i()
  {
    while (true)
    {
      try
      {
        if (this.c != null)
        {
          x localx1 = this.b;
          x localx2 = x.c;
          if (localx1 != localx2)
            try
            {
              this.i = (1 + this.i);
              a(this.k);
              this.b = x.a;
              this.k = new Timer("Failed Connect");
              this.k.schedule(new z(this, (byte)0), 3000L);
              aq.d("connecting to Analytics service");
              this.c.b();
              return;
            }
            catch (SecurityException localSecurityException)
            {
              aq.f("security exception on connectToService");
              h();
              continue;
            }
        }
      }
      finally
      {
      }
      aq.f("client not initialized.");
      h();
    }
  }

  private void j()
  {
    try
    {
      if ((this.c != null) && (this.b == x.b))
      {
        this.b = x.f;
        this.c.c();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void k()
  {
    this.j = a(this.j);
    this.j = new Timer("Service Reconnect");
    this.j.schedule(new ab(this, (byte)0), 5000L);
  }

  public final void a()
  {
    try
    {
      this.k = a(this.k);
      this.i = 0;
      aq.d("Connected to service");
      this.b = x.b;
      f();
      this.l = a(this.l);
      this.l = new Timer("disconnect check");
      this.l.schedule(new y(this, (byte)0), this.p);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(int paramInt)
  {
    try
    {
      this.b = x.e;
      if (this.i < 2)
      {
        aq.f("Service unavailable (code=" + paramInt + "), will retry.");
        k();
      }
      while (true)
      {
        return;
        aq.f("Service unavailable (code=" + paramInt + "), using local store.");
        h();
      }
    }
    finally
    {
    }
  }

  public final void a(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList)
  {
    aq.d("putHit called");
    this.h.add(new aa(paramMap, paramLong, paramString, paramList));
    f();
  }

  public final void b()
  {
    while (true)
    {
      try
      {
        if (this.b == x.f)
        {
          aq.d("Disconnected from service");
          e();
          this.b = x.g;
          return;
        }
        aq.d("Unexpected disconnect.");
        this.b = x.e;
        if (this.i < 2)
        {
          k();
          continue;
        }
      }
      finally
      {
      }
      h();
    }
  }

  public final void c()
  {
    switch (w.a[this.b.ordinal()])
    {
    default:
      this.m = true;
    case 2:
      return;
    case 1:
    }
    g();
  }

  public final void d()
  {
    if (this.c != null)
      return;
    this.c = new d(this.g, this, this);
    i();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.t
 * JD-Core Version:    0.6.2
 */