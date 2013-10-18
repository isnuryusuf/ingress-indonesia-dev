package com.google.a.c;

import java.util.Iterator;

public abstract class lj<E>
  implements Iterator<E>
{
  @Deprecated
  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.lj
 * JD-Core Version:    0.6.2
 */