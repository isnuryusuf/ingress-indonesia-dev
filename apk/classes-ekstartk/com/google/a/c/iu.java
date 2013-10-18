package com.google.a.c;

import com.google.a.a.an;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

abstract class iu<R, C, V> extends ec<R, C, V>
{
  static final <R, C, V> iu<R, C, V> a(Iterable<ks<R, C, V>> paramIterable)
  {
    return a(paramIterable, null, null);
  }

  private static final <R, C, V> iu<R, C, V> a(Iterable<ks<R, C, V>> paramIterable, Comparator<? super R> paramComparator, Comparator<? super C> paramComparator1)
  {
    dv localdv1 = du.h();
    dv localdv2 = du.h();
    dc localdc = dc.a(paramIterable);
    Iterator localIterator = localdc.iterator();
    while (localIterator.hasNext())
    {
      ks localks = (ks)localIterator.next();
      localdv1.c(localks.a());
      localdv2.c(localks.b());
    }
    du localdu1 = localdv1.a();
    if (paramComparator != null)
    {
      ArrayList localArrayList2 = eq.a(localdu1);
      Collections.sort(localArrayList2, paramComparator);
      localdu1 = du.a(localArrayList2);
    }
    du localdu2 = localdv2.a();
    if (paramComparator1 != null)
    {
      ArrayList localArrayList1 = eq.a(localdu2);
      Collections.sort(localArrayList1, paramComparator1);
      localdu2 = du.a(localArrayList1);
    }
    if (localdc.size() > localdu1.size() * localdu2.size() / 2)
      return new aw(localdc, localdu1, localdu2);
    return new kg(localdc, localdu1, localdu2);
  }

  static final <R, C, V> iu<R, C, V> a(List<ks<R, C, V>> paramList, Comparator<? super R> paramComparator, Comparator<? super C> paramComparator1)
  {
    an.a(paramList);
    if ((paramComparator != null) || (paramComparator1 != null))
      Collections.sort(paramList, new iv(paramComparator, paramComparator1));
    return a(paramList, paramComparator, paramComparator1);
  }

  abstract ks<R, C, V> a(int paramInt);

  abstract V b(int paramInt);

  final du<ks<R, C, V>> p()
  {
    if (b())
      return du.g();
    return new iw(this, (byte)0);
  }

  final ct<V> q()
  {
    if (b())
      return dc.d();
    return new iy(this, (byte)0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.iu
 * JD-Core Version:    0.6.2
 */