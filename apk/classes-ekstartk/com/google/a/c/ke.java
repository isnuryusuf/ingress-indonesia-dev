package com.google.a.c;

import java.util.Iterator;
import java.util.NavigableSet;

final class ke<E> extends kd<E>
  implements NavigableSet<E>
{
  ke(ka<E> paramka)
  {
    super(paramka);
  }

  public final E ceiling(E paramE)
  {
    return kc.b(b().b(paramE, an.b).g());
  }

  public final Iterator<E> descendingIterator()
  {
    return descendingSet().iterator();
  }

  public final NavigableSet<E> descendingSet()
  {
    return new ke(b().m());
  }

  public final E floor(E paramE)
  {
    return kc.b(b().a(paramE, an.b).h());
  }

  public final NavigableSet<E> headSet(E paramE, boolean paramBoolean)
  {
    return new ke(b().a(paramE, an.a(paramBoolean)));
  }

  public final E higher(E paramE)
  {
    return kc.b(b().b(paramE, an.a).g());
  }

  public final E lower(E paramE)
  {
    return kc.b(b().a(paramE, an.a).h());
  }

  public final E pollFirst()
  {
    return kc.b(b().i());
  }

  public final E pollLast()
  {
    return kc.b(b().j());
  }

  public final NavigableSet<E> subSet(E paramE1, boolean paramBoolean1, E paramE2, boolean paramBoolean2)
  {
    return new ke(b().a(paramE1, an.a(paramBoolean1), paramE2, an.a(paramBoolean2)));
  }

  public final NavigableSet<E> tailSet(E paramE, boolean paramBoolean)
  {
    return new ke(b().b(paramE, an.a(paramBoolean)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ke
 * JD-Core Version:    0.6.2
 */