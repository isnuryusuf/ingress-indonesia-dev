package com.google.a.a;

import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class b<T>
  implements Iterator<T>
{
  private d a = d.b;
  private T b;

  protected abstract T a();

  protected final T b()
  {
    this.a = d.c;
    return null;
  }

  public final boolean hasNext()
  {
    if (this.a != d.d);
    for (boolean bool1 = true; ; bool1 = false)
    {
      an.b(bool1);
      int i = c.a[this.a.ordinal()];
      boolean bool2 = false;
      switch (i)
      {
      default:
        this.a = d.d;
        this.b = a();
        d locald1 = this.a;
        d locald2 = d.c;
        bool2 = false;
        if (locald1 != locald2)
        {
          this.a = d.a;
          bool2 = true;
        }
      case 1:
        return bool2;
      case 2:
      }
    }
    return true;
  }

  public final T next()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    this.a = d.b;
    return this.b;
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.b
 * JD-Core Version:    0.6.2
 */