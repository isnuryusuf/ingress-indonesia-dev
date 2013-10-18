package com.google.a.c;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ic<E>
  implements Iterator<E>
{
  private final ht<E> a;
  private final Iterator<hu<E>> b;
  private hu<E> c;
  private int d;
  private int e;
  private boolean f;

  ic(ht<E> paramht, Iterator<hu<E>> paramIterator)
  {
    this.a = paramht;
    this.b = paramIterator;
  }

  public final boolean hasNext()
  {
    return (this.d > 0) || (this.b.hasNext());
  }

  public final E next()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    if (this.d == 0)
    {
      this.c = ((hu)this.b.next());
      int i = this.c.b();
      this.d = i;
      this.e = i;
    }
    this.d = (-1 + this.d);
    this.f = true;
    return this.c.a();
  }

  public final void remove()
  {
    eg.a(this.f);
    if (this.e == 1)
      this.b.remove();
    while (true)
    {
      this.e = (-1 + this.e);
      this.f = false;
      return;
      this.a.remove(this.c.a());
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ic
 * JD-Core Version:    0.6.2
 */