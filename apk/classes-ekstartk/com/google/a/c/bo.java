package com.google.a.c;

import java.util.Iterator;

public abstract class bo<T> extends bs
  implements Iterator<T>
{
  protected abstract Iterator<T> a();

  public boolean hasNext()
  {
    return a().hasNext();
  }

  public T next()
  {
    return a().next();
  }

  public void remove()
  {
    a().remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bo
 * JD-Core Version:    0.6.2
 */