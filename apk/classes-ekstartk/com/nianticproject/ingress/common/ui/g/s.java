package com.nianticproject.ingress.common.ui.g;

import com.google.a.c.am;
import com.google.a.c.by;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.c.ii;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.shared.n;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class s
{
  private final ConcurrentLinkedQueue<q> a;
  private final am<q, Integer> b;
  private final Map<q, n> c;
  private final int d;
  private final List<WeakReference<t>> e = eq.b();

  public s(Collection<q> paramCollection)
  {
    this.a = ii.a(paramCollection);
    this.d = paramCollection.size();
    this.b = by.a(this.d);
    this.c = hc.b();
  }

  public final q a()
  {
    return (q)this.a.poll();
  }

  public final q a(int paramInt)
  {
    return (q)this.b.a().get(Integer.valueOf(paramInt));
  }

  public final void a(q paramq)
  {
    this.b.put(paramq, Integer.valueOf(this.b.size()));
  }

  public final void a(q paramq, n paramn)
  {
    this.c.put(paramq, paramn);
  }

  public final void a(t paramt)
  {
    this.e.add(new WeakReference(paramt));
  }

  public final int b()
  {
    return this.b.size();
  }

  public final void b(q paramq)
  {
    this.a.add(paramq);
  }

  public final boolean c()
  {
    return this.a.size() + this.b.size() + this.c.size() < this.d;
  }

  public final boolean c(q paramq)
  {
    return this.b.containsKey(paramq);
  }

  public final n d(q paramq)
  {
    return (n)this.c.get(paramq);
  }

  public final void d()
  {
    Iterator localIterator = this.e.iterator();
    while (localIterator.hasNext())
    {
      t localt = (t)((WeakReference)localIterator.next()).get();
      if (localt == null)
        localIterator.remove();
      else
        localt.a();
    }
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(this.a.size());
    arrayOfObject[1] = Integer.valueOf(this.b.size());
    arrayOfObject[2] = Integer.valueOf(this.c.size());
    arrayOfObject[3] = Integer.valueOf(this.d);
    return String.format("PortalKeysModel: {rawPortalKeysQueue=%d usableToIndexBiMap=%d failedKeysMap=%d totalKeys=%d}", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.s
 * JD-Core Version:    0.6.2
 */