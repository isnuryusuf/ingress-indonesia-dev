package com.google.a.c;

import com.google.a.a.an;
import java.util.NoSuchElementException;

public abstract class b<T> extends lj<T>
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
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.b
 * JD-Core Version:    0.6.2
 */