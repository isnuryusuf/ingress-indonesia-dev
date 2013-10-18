package com.google.c.a.b;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.NoSuchElementException;

public final class d
{
  private int b = 0;
  private int c = -2147483648;
  private Enumeration d = null;

  public d(c paramc)
  {
  }

  public final boolean a()
  {
    if (this.c != -2147483648)
      return true;
    if (this.b <= c.a(this.a))
      while (this.b <= c.a(this.a))
      {
        if (c.b(this.a)[this.b] != null)
        {
          int i = this.b;
          this.b = (i + 1);
          this.c = i;
          return true;
        }
        this.b = (1 + this.b);
      }
    if (c.c(this.a) != null)
    {
      if (this.d == null)
        this.d = c.c(this.a).keys();
      if (this.d.hasMoreElements())
      {
        this.c = ((Integer)this.d.nextElement()).intValue();
        return true;
      }
    }
    return false;
  }

  public final int b()
  {
    if (!a())
      throw new NoSuchElementException();
    int i = this.c;
    this.c = -2147483648;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.b.d
 * JD-Core Version:    0.6.2
 */