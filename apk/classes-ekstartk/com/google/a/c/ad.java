package com.google.a.c;

import java.util.NoSuchElementException;

public abstract class ad<T> extends lj<T>
{
  private T a;

  protected ad(T paramT)
  {
    this.a = paramT;
  }

  protected abstract T a(T paramT);

  public final boolean hasNext()
  {
    return this.a != null;
  }

  public final T next()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    try
    {
      Object localObject2 = this.a;
      return localObject2;
    }
    finally
    {
      this.a = a(this.a);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ad
 * JD-Core Version:    0.6.2
 */