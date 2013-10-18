package com.google.a.c;

import java.util.NoSuchElementException;

final class eh extends lk<Object>
{
  public final boolean hasNext()
  {
    return false;
  }

  public final boolean hasPrevious()
  {
    return false;
  }

  public final Object next()
  {
    throw new NoSuchElementException();
  }

  public final int nextIndex()
  {
    return 0;
  }

  public final Object previous()
  {
    throw new NoSuchElementException();
  }

  public final int previousIndex()
  {
    return -1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.eh
 * JD-Core Version:    0.6.2
 */