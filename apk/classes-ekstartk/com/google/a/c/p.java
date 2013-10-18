package com.google.a.c;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

class p
  implements Iterator<V>
{
  final Iterator<V> a;
  final Collection<V> b = this.c.c;

  p(o paramo)
  {
    this.a = f.a(paramo.c);
  }

  p(Iterator<V> paramIterator)
  {
    Object localObject;
    this.a = localObject;
  }

  final void a()
  {
    this.c.a();
    if (this.c.c != this.b)
      throw new ConcurrentModificationException();
  }

  public boolean hasNext()
  {
    a();
    return this.a.hasNext();
  }

  public V next()
  {
    a();
    return this.a.next();
  }

  public void remove()
  {
    this.a.remove();
    f.b(this.c.f);
    this.c.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.p
 * JD-Core Version:    0.6.2
 */