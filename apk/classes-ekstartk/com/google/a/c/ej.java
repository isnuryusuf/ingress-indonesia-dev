package com.google.a.c;

import java.util.NoSuchElementException;

final class ej extends lj<T>
{
  boolean a;

  ej(Object paramObject)
  {
  }

  public final boolean hasNext()
  {
    return !this.a;
  }

  public final T next()
  {
    if (this.a)
      throw new NoSuchElementException();
    this.a = true;
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ej
 * JD-Core Version:    0.6.2
 */