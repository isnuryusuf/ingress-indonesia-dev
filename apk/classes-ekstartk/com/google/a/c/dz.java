package com.google.a.c;

import com.google.a.a.an;
import java.util.Arrays;
import java.util.Comparator;
import java.util.NavigableSet;

public abstract class dz<E> extends eb<E>
  implements jn<E>, NavigableSet<E>
{
  private static final Comparator<Comparable> c = ih.b();
  private static final dz<Comparable> d = new bk(c);
  final transient Comparator<? super E> a;
  transient dz<E> b;

  dz(Comparator<? super E> paramComparator)
  {
    this.a = paramComparator;
  }

  static <E> dz<E> a(Comparator<? super E> paramComparator)
  {
    if (c.equals(paramComparator))
      return d;
    return new bk(paramComparator);
  }

  static <E> dz<E> a(Comparator<? super E> paramComparator, int paramInt, E[] paramArrayOfE)
  {
    if (paramInt == 0)
      return a(paramComparator);
    ig.c(paramArrayOfE, paramInt);
    Arrays.sort(paramArrayOfE, 0, paramInt, paramComparator);
    int i = 1;
    int j = 1;
    int k;
    if (i < paramInt)
    {
      E ? = paramArrayOfE[i];
      if (paramComparator.compare(?, paramArrayOfE[(j - 1)]) == 0)
        break label102;
      k = j + 1;
      paramArrayOfE[j] = ?;
    }
    while (true)
    {
      i++;
      j = k;
      break;
      Arrays.fill(paramArrayOfE, j, paramInt, null);
      return new it(dc.b(paramArrayOfE, j), paramComparator);
      label102: k = j;
    }
  }

  public static <E extends Comparable<?>> ea<E> i()
  {
    return new ea(ih.b());
  }

  abstract int a(Object paramObject);

  abstract dz<E> a(E paramE, boolean paramBoolean);

  abstract dz<E> a(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2);

  final int b(Object paramObject1, Object paramObject2)
  {
    return this.a.compare(paramObject1, paramObject2);
  }

  abstract dz<E> b(E paramE, boolean paramBoolean);

  public final dz<E> b(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    an.a(paramE1);
    an.a(paramE2);
    if (this.a.compare(paramE1, paramE2) <= 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return a(paramE1, paramBoolean1, paramE2, paramBoolean2);
    }
  }

  public abstract lj<E> b();

  public dz<E> b_()
  {
    dz localdz = this.b;
    if (localdz == null)
    {
      localdz = d();
      this.b = localdz;
      localdz.b = this;
    }
    return localdz;
  }

  public final dz<E> c(E paramE, boolean paramBoolean)
  {
    return a(an.a(paramE), paramBoolean);
  }

  public abstract lj<E> c();

  public E ceiling(E paramE)
  {
    return ee.b(d(paramE, true));
  }

  public Comparator<? super E> comparator()
  {
    return this.a;
  }

  dz<E> d()
  {
    return new be(this);
  }

  public final dz<E> d(E paramE, boolean paramBoolean)
  {
    return b(an.a(paramE), paramBoolean);
  }

  public E first()
  {
    return b().next();
  }

  public E floor(E paramE)
  {
    return eg.e(c(paramE, true).c());
  }

  public E higher(E paramE)
  {
    return ee.b(d(paramE, false));
  }

  public E last()
  {
    return c().next();
  }

  public E lower(E paramE)
  {
    return eg.e(c(paramE, false).c());
  }

  @Deprecated
  public final E pollFirst()
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final E pollLast()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dz
 * JD-Core Version:    0.6.2
 */