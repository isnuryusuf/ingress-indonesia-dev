package com.google.a.c;

import com.google.a.a.ao;
import java.util.Iterator;
import java.util.NavigableSet;

final class je<E> extends jg<E>
  implements NavigableSet<E>
{
  je(NavigableSet<E> paramNavigableSet, ao<? super E> paramao)
  {
    super(paramNavigableSet, paramao);
  }

  public final E ceiling(E paramE)
  {
    return ee.b(tailSet(paramE, true));
  }

  public final Iterator<E> descendingIterator()
  {
    return eg.b(((NavigableSet)this.a).descendingIterator(), this.b);
  }

  public final NavigableSet<E> descendingSet()
  {
    return jc.a(((NavigableSet)this.a).descendingSet(), this.b);
  }

  public final E floor(E paramE)
  {
    return eg.e(headSet(paramE, true).descendingIterator());
  }

  public final NavigableSet<E> headSet(E paramE, boolean paramBoolean)
  {
    return jc.a(((NavigableSet)this.a).headSet(paramE, paramBoolean), this.b);
  }

  public final E higher(E paramE)
  {
    return ee.b(tailSet(paramE, false));
  }

  public final E last()
  {
    return descendingIterator().next();
  }

  public final E lower(E paramE)
  {
    return eg.e(headSet(paramE, false).descendingIterator());
  }

  public final E pollFirst()
  {
    return ee.b((NavigableSet)this.a, this.b);
  }

  public final E pollLast()
  {
    return ee.b(((NavigableSet)this.a).descendingSet(), this.b);
  }

  public final NavigableSet<E> subSet(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return jc.a(((NavigableSet)this.a).subSet(paramE1, paramBoolean1, paramE2, paramBoolean2), this.b);
  }

  public final NavigableSet<E> tailSet(E paramE, boolean paramBoolean)
  {
    return jc.a(((NavigableSet)this.a).tailSet(paramE, paramBoolean), this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.je
 * JD-Core Version:    0.6.2
 */