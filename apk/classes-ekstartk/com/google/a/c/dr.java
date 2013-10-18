package com.google.a.c;

import java.util.Iterator;

final class dr extends lj<E>
{
  int a;
  E b;

  dr(dq paramdq, Iterator paramIterator)
  {
  }

  public final boolean hasNext()
  {
    return (this.a > 0) || (this.c.hasNext());
  }

  public final E next()
  {
    if (this.a <= 0)
    {
      hu localhu = (hu)this.c.next();
      this.b = localhu.a();
      this.a = localhu.b();
    }
    this.a = (-1 + this.a);
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dr
 * JD-Core Version:    0.6.2
 */