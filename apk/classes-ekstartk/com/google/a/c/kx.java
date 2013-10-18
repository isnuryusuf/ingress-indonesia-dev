package com.google.a.c;

import com.google.a.a.an;
import java.util.Iterator;

abstract class kx<F, T>
  implements Iterator<T>
{
  final Iterator<? extends F> b;

  kx(Iterator<? extends F> paramIterator)
  {
    this.b = ((Iterator)an.a(paramIterator));
  }

  abstract T a(F paramF);

  public final boolean hasNext()
  {
    return this.b.hasNext();
  }

  public final T next()
  {
    return a(this.b.next());
  }

  public final void remove()
  {
    this.b.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.kx
 * JD-Core Version:    0.6.2
 */