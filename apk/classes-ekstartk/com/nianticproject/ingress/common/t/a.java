package com.nianticproject.ingress.common.t;

import com.google.a.a.an;
import com.google.a.c.eq;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

final class a
{
  private final ArrayList<f> a = eq.b(4);
  private boolean b = c.a;
  private int c;
  private h d = new h();
  private g e = new g();

  a()
  {
    this.a.add(new f(c.b));
  }

  final void a()
  {
    if (!this.b)
    {
      this.c = (-1 + this.c);
      return;
    }
    if (this.c > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Zone stack underflow");
      ArrayList localArrayList = this.a;
      int i = this.c;
      this.c = (i - 1);
      f localf = (f)localArrayList.remove(i);
      ((f)this.a.get(this.c)).a(localf.a());
      this.d.a(localf);
      return;
    }
  }

  final void a(b paramb)
  {
    this.c = (1 + this.c);
    if (!this.b)
      return;
    f localf = new f(paramb);
    this.a.add(localf);
  }

  final void b()
  {
    if (!this.b)
    {
      this.b = c.a;
      return;
    }
    if (this.c == 0);
    long l;
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Updating counters while profiling active");
      l = System.nanoTime() - 60000000000L;
      while (true)
      {
        f localf1 = this.e.a(l);
        if (localf1 == null)
          break;
        localf1.d();
      }
    }
    while (true)
    {
      f localf2 = this.d.a(l);
      if (localf2 == null)
        break;
      localf2.c();
      this.e.a(localf2);
    }
    this.d.a();
    Iterator localIterator = c.c().iterator();
    while (localIterator.hasNext())
      ((b)localIterator.next()).g();
    this.b = c.a;
  }

  final void b(b paramb)
  {
    if (this.b)
      if (this.c <= 0)
        break label30;
    label30: for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      a();
      a(paramb);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.t.a
 * JD-Core Version:    0.6.2
 */