package com.nianticproject.ingress.common.q.b;

import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.common.q.d;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Future;

final class m<V extends Future<d>>
{
  private final HashMap<c, Reference<V>> a = new HashMap();
  private final n<V> b;

  m(n<V> paramn)
  {
    this.b = paramn;
  }

  private void a()
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator1 = this.a.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        if (((Reference)localEntry.getValue()).get() == null)
          localArrayList.add(localEntry.getKey());
      }
    }
    finally
    {
    }
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      c localc = (c)localIterator2.next();
      this.a.remove(localc);
    }
  }

  final V a(c paramc)
  {
    try
    {
      Reference localReference = (Reference)this.a.get(paramc);
      if (localReference != null);
      for (Future localFuture = (Future)localReference.get(); ; localFuture = null)
      {
        if (localFuture == null)
        {
          localFuture = this.b.a(paramc);
          this.a.put(paramc, new WeakReference(localFuture));
        }
        a();
        return localFuture;
      }
    }
    finally
    {
    }
  }

  final void b(c paramc)
  {
    try
    {
      this.a.remove(paramc);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.m
 * JD-Core Version:    0.6.2
 */