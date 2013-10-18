package com.nianticproject.ingress.common.q.b;

import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.common.q.d;
import com.nianticproject.ingress.common.q.e;
import com.nianticproject.ingress.common.q.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Future;

public abstract class a
  implements e
{
  private final ArrayList<WeakReference<f>> a = new ArrayList();

  private void a()
  {
    ArrayList localArrayList1 = this.a;
    int j;
    for (int i = 0; ; i = j + 1)
    {
      try
      {
        if (i < this.a.size())
        {
          if (((WeakReference)this.a.get(i)).get() == null)
          {
            ArrayList localArrayList2 = this.a;
            j = i - 1;
            localArrayList2.remove(i);
            continue;
          }
        }
        else
          return;
      }
      finally
      {
      }
      j = i;
    }
  }

  protected final void a(c paramc, Future<d> paramFuture)
  {
    ArrayList localArrayList1 = new ArrayList();
    while (true)
    {
      int i;
      synchronized (this.a)
      {
        a();
        i = 0;
        if (i < this.a.size())
        {
          f localf = (f)((WeakReference)this.a.get(i)).get();
          if (localf == null)
            break label119;
          localArrayList1.add(localf);
          break label119;
        }
        Iterator localIterator = localArrayList1.iterator();
        if (localIterator.hasNext())
          ((f)localIterator.next()).a(paramc, paramFuture);
      }
      return;
      label119: i++;
    }
  }

  public final void a(f paramf)
  {
    while (true)
    {
      int i;
      synchronized (this.a)
      {
        a();
        i = 0;
        if (i < this.a.size())
        {
          if ((f)((WeakReference)this.a.get(i)).get() != paramf);
        }
        else
        {
          this.a.add(new WeakReference(paramf));
          return;
        }
      }
      i++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.a
 * JD-Core Version:    0.6.2
 */