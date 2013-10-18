package com.google.a.c;

import java.util.ConcurrentModificationException;

final class lh<T>
{
  private T a;

  public final T a()
  {
    return this.a;
  }

  public final void a(T paramT1, T paramT2)
  {
    if (this.a != paramT1)
      throw new ConcurrentModificationException();
    this.a = paramT2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.lh
 * JD-Core Version:    0.6.2
 */