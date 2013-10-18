package com.nianticproject.ingress.common.ui.b;

import com.google.a.a.an;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class c
  implements j
{
  private final f a = new f(this);
  private final HashMap<Integer, b> b = new HashMap();
  private e c = e.a;

  public final void a()
  {
    this.c = e.c;
  }

  final void a(l paraml)
  {
    while (true)
    {
      m localm;
      b localb2;
      b localb3;
      synchronized (this.b)
      {
        Iterator localIterator = paraml.b().iterator();
        if (!localIterator.hasNext())
          break label315;
        localm = (m)localIterator.next();
        switch (d.b[localm.b.ordinal()])
        {
        case 1:
          int j = localm.a;
          localb2 = localm.c;
          localb3 = (b)this.b.put(Integer.valueOf(j), an.a(localb2));
          if (localb3 != null);
          switch (d.a[this.c.ordinal()])
          {
          default:
            switch (d.a[this.c.ordinal()])
            {
            case 1:
              localb2.a(a.b);
              localb2.a(a.c);
            case 2:
            }
            break;
          case 1:
          case 2:
          }
          break;
        case 2:
        }
      }
      localb3.a(a.d);
      localb3.a(a.e);
      continue;
      localb2.a(a.b);
      continue;
      int i = localm.a;
      b localb1 = (b)this.b.remove(Integer.valueOf(i));
      if (localb1 != null)
        switch (d.a[this.c.ordinal()])
        {
        case 1:
          localb1.a(a.d);
        case 2:
          localb1.a(a.e);
          continue;
          label315: return;
          continue;
        }
    }
  }

  final void a(com.nianticproject.ingress.common.w.f paramf)
  {
    an.a(paramf);
    this.a.a(paramf);
    synchronized (this.b)
    {
      Iterator localIterator = this.b.values().iterator();
      if (localIterator.hasNext())
        ((b)localIterator.next()).a(paramf);
    }
  }

  public final void b()
  {
    this.c = e.b;
  }

  public final void c()
  {
    this.c = e.b;
  }

  public final void f()
  {
    this.c = e.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.b.c
 * JD-Core Version:    0.6.2
 */