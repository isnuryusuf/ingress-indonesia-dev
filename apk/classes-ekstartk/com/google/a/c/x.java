package com.google.a.c;

import com.google.a.a.an;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class x
  implements Iterator<E>
{
  final Iterator<Map.Entry<E, av>> a;
  Map.Entry<E, av> b;
  int c;
  boolean d;

  x(u paramu)
  {
    this.a = u.a(paramu).entrySet().iterator();
  }

  public final boolean hasNext()
  {
    return (this.c > 0) || (this.a.hasNext());
  }

  public final E next()
  {
    if (this.c == 0)
    {
      this.b = ((Map.Entry)this.a.next());
      this.c = ((av)this.b.getValue()).a();
    }
    this.c = (-1 + this.c);
    this.d = true;
    return this.b.getKey();
  }

  public final void remove()
  {
    an.b(this.d, "no calls to next() since the last call to remove()");
    if (((av)this.b.getValue()).a() <= 0)
      throw new ConcurrentModificationException();
    if (((av)this.b.getValue()).b(-1) == 0)
      this.a.remove();
    u.b(this.e);
    this.d = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.x
 * JD-Core Version:    0.6.2
 */