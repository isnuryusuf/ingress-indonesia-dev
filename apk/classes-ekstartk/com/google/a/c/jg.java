package com.google.a.c;

import com.google.a.a.ao;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

class jg<E> extends jf<E>
  implements SortedSet<E>
{
  jg(SortedSet<E> paramSortedSet, ao<? super E> paramao)
  {
    super(paramSortedSet, paramao);
  }

  public Comparator<? super E> comparator()
  {
    return ((SortedSet)this.a).comparator();
  }

  public E first()
  {
    return iterator().next();
  }

  public SortedSet<E> headSet(E paramE)
  {
    return new jg(((SortedSet)this.a).headSet(paramE), this.b);
  }

  public E last()
  {
    Object localObject;
    for (SortedSet localSortedSet = (SortedSet)this.a; ; localSortedSet = localSortedSet.headSet(localObject))
    {
      localObject = localSortedSet.last();
      if (this.b.a(localObject))
        return localObject;
    }
  }

  public SortedSet<E> subSet(E paramE1, E paramE2)
  {
    return new jg(((SortedSet)this.a).subSet(paramE1, paramE2), this.b);
  }

  public SortedSet<E> tailSet(E paramE)
  {
    return new jg(((SortedSet)this.a).tailSet(paramE), this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.jg
 * JD-Core Version:    0.6.2
 */