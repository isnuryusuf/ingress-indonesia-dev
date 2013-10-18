package com.google.a.c;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

abstract class af<E> extends aa<E>
  implements ka<E>
{
  final Comparator<? super E> a;
  private transient ka<E> b;

  af(Comparator<? super E> paramComparator)
  {
    this.a = ((Comparator)com.google.a.a.an.a(paramComparator));
  }

  public ka<E> a(E paramE1, an paraman1, E paramE2, an paraman2)
  {
    com.google.a.a.an.a(paraman1);
    com.google.a.a.an.a(paraman2);
    return b(paramE1, paraman1).a(paramE2, paraman2);
  }

  public Comparator<? super E> comparator()
  {
    return this.a;
  }

  public NavigableSet<E> f()
  {
    return (NavigableSet)super.d();
  }

  public hu<E> g()
  {
    Iterator localIterator = b();
    if (localIterator.hasNext())
      return (hu)localIterator.next();
    return null;
  }

  public hu<E> h()
  {
    Iterator localIterator = k();
    if (localIterator.hasNext())
      return (hu)localIterator.next();
    return null;
  }

  public hu<E> i()
  {
    Iterator localIterator = b();
    if (localIterator.hasNext())
    {
      hu localhu1 = (hu)localIterator.next();
      hu localhu2 = hv.a(localhu1.a(), localhu1.b());
      localIterator.remove();
      return localhu2;
    }
    return null;
  }

  public hu<E> j()
  {
    Iterator localIterator = k();
    if (localIterator.hasNext())
    {
      hu localhu1 = (hu)localIterator.next();
      hu localhu2 = hv.a(localhu1.a(), localhu1.b());
      localIterator.remove();
      return localhu2;
    }
    return null;
  }

  abstract Iterator<hu<E>> k();

  final Iterator<E> l()
  {
    return hv.a(m());
  }

  public ka<E> m()
  {
    Object localObject = this.b;
    if (localObject == null)
    {
      localObject = new ag(this);
      this.b = ((ka)localObject);
    }
    return localObject;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.af
 * JD-Core Version:    0.6.2
 */