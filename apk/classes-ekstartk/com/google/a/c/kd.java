package com.google.a.c;

import java.util.Comparator;
import java.util.SortedSet;

class kd<E> extends hy<E>
  implements SortedSet<E>
{
  private final ka<E> a;

  kd(ka<E> paramka)
  {
    this.a = paramka;
  }

  final ka<E> b()
  {
    return this.a;
  }

  public Comparator<? super E> comparator()
  {
    return this.a.comparator();
  }

  public E first()
  {
    return kc.a(this.a.g());
  }

  public SortedSet<E> headSet(E paramE)
  {
    return this.a.a(paramE, an.a).f();
  }

  public E last()
  {
    return kc.a(this.a.h());
  }

  public SortedSet<E> subSet(E paramE1, E paramE2)
  {
    return this.a.a(paramE1, an.b, paramE2, an.a).f();
  }

  public SortedSet<E> tailSet(E paramE)
  {
    return this.a.b(paramE, an.b).f();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kd
 * JD-Core Version:    0.6.2
 */