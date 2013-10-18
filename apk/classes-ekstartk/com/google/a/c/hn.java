package com.google.a.c;

import com.google.a.a.an;
import com.google.a.g.a;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

public final class hn<E> extends AbstractQueue<E>
{
  final int a;
  private final hn<E>.hp b;
  private final hn<E>.hp c;
  private Object[] d;
  private int e;
  private int f;

  private hn(ho<? super E> paramho, int paramInt)
  {
    ih localih = ho.a(paramho);
    this.b = new hp(this, localih);
    this.c = new hp(this, localih.a());
    this.b.b = this.c;
    this.c.b = this.b;
    this.a = ho.b(paramho);
    this.d = new Object[paramInt];
  }

  private static int a(int paramInt1, int paramInt2)
  {
    return 1 + Math.min(paramInt1 - 1, paramInt2);
  }

  static int a(int paramInt1, int paramInt2, Iterable<?> paramIterable)
  {
    if (paramInt1 == -1)
      paramInt1 = 11;
    if ((paramIterable instanceof Collection))
      paramInt1 = Math.max(paramInt1, ((Collection)paramIterable).size());
    return a(paramInt1, paramInt2);
  }

  public static <B> ho<B> a(Comparator<B> paramComparator)
  {
    return new ho(paramComparator, (byte)0);
  }

  private E c(int paramInt)
  {
    Object localObject = this.d[paramInt];
    b(paramInt);
    return localObject;
  }

  private hn<E>.hp d(int paramInt)
  {
    boolean bool1 = true;
    int i = paramInt + 1;
    boolean bool2;
    if (i > 0)
    {
      bool2 = bool1;
      an.b(bool2, "negative index");
      if ((0x55555555 & i) <= (i & 0xAAAAAAAA))
        break label46;
    }
    while (true)
    {
      if (!bool1)
        break label51;
      return this.b;
      bool2 = false;
      break;
      label46: bool1 = false;
    }
    label51: return this.c;
  }

  final E a(int paramInt)
  {
    return this.d[paramInt];
  }

  public final boolean add(E paramE)
  {
    offer(paramE);
    return true;
  }

  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    boolean bool = false;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      offer(localIterator.next());
      bool = true;
    }
    return bool;
  }

  final hq<E> b(int paramInt)
  {
    an.b(paramInt, this.e);
    this.f = (1 + this.f);
    this.e = (-1 + this.e);
    if (this.e == paramInt)
    {
      this.d[this.e] = null;
      return null;
    }
    int i = this.e;
    Object localObject1 = this.d[i];
    hp localhp1 = d(this.e);
    int j = (-1 + localhp1.c.e) / 2;
    int k;
    if (j != 0)
    {
      k = 2 + 2 * ((j - 1) / 2);
      if ((k != j) && (1 + k * 2 >= localhp1.c.e))
      {
        Object localObject3 = localhp1.c.d[k];
        if (localhp1.a.compare(localObject3, localObject1) < 0)
        {
          localhp1.c.d[k] = localObject1;
          localhp1.c.d[localhp1.c.e] = localObject3;
        }
      }
    }
    Object localObject2;
    hp localhp2;
    int n;
    while (true)
    {
      int m = this.e;
      localObject2 = this.d[m];
      this.d[this.e] = null;
      localhp2 = d(paramInt);
      int i1;
      for (n = paramInt; ; n = i1)
      {
        i1 = localhp2.a(n);
        if (i1 <= 0)
          break;
        localhp2.c.d[n] = localhp2.c.d[i1];
      }
      k = localhp1.c.e;
    }
    int i2 = localhp2.a(n, localObject2);
    hq localhq;
    if (i2 == n)
      localhq = localhp2.a(paramInt, n, localObject2);
    while (k < paramInt)
      if (localhq == null)
      {
        return new hq(localObject1, localObject2);
        if (i2 < paramInt)
          localhq = new hq(localObject2, this.d[paramInt]);
        else
          localhq = null;
      }
      else
      {
        return new hq(localObject1, localhq.b);
      }
    return localhq;
  }

  public final void clear()
  {
    for (int i = 0; i < this.e; i++)
      this.d[i] = null;
    this.e = 0;
  }

  public final Iterator<E> iterator()
  {
    return new hr(this, (byte)0);
  }

  public final boolean offer(E paramE)
  {
    an.a(paramE);
    this.f = (1 + this.f);
    int i = this.e;
    this.e = (i + 1);
    int m;
    int n;
    hp localhp;
    int j;
    if (this.e > this.d.length)
    {
      m = this.d.length;
      if (m < 64)
      {
        n = 2 * (m + 1);
        Object[] arrayOfObject = new Object[a(n, this.a)];
        System.arraycopy(this.d, 0, arrayOfObject, 0, this.d.length);
        this.d = arrayOfObject;
      }
    }
    else
    {
      localhp = d(i);
      j = localhp.b(i, paramE);
      if (j != i)
        break label175;
    }
    Object localObject;
    while (true)
    {
      localhp.a(i, paramE);
      boolean bool;
      if (this.e > this.a)
      {
        if (!isEmpty())
          break label188;
        localObject = null;
        bool = false;
        if (localObject == paramE);
      }
      else
      {
        bool = true;
      }
      return bool;
      n = a.a(m / 2);
      break;
      label175: localhp = localhp.b;
      i = j;
    }
    label188: int k;
    switch (this.e)
    {
    default:
      if (this.c.a(1, 2) <= 0)
        k = 1;
      break;
    case 1:
    case 2:
    }
    while (true)
    {
      localObject = c(k);
      break;
      k = 0;
      continue;
      k = 1;
      continue;
      k = 2;
    }
  }

  public final E peek()
  {
    if (isEmpty())
      return null;
    return this.d[0];
  }

  public final E poll()
  {
    if (isEmpty())
      return null;
    return c(0);
  }

  public final int size()
  {
    return this.e;
  }

  public final Object[] toArray()
  {
    Object[] arrayOfObject = new Object[this.e];
    System.arraycopy(this.d, 0, arrayOfObject, 0, this.e);
    return arrayOfObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hn
 * JD-Core Version:    0.6.2
 */