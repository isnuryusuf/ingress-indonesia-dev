package com.google.a.c;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class ek
  implements Iterator<Object>
{
  public final boolean hasNext()
  {
    return false;
  }

  public final Object next()
  {
    throw new NoSuchElementException();
  }

  public final void remove()
  {
    throw new IllegalStateException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ek
 * JD-Core Version:    0.6.2
 */