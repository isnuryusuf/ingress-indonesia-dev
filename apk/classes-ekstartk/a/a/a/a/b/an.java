package a.a.a.a.b;

import java.util.NoSuchElementException;

class an
{
  int b = this.e.f;
  int c = -1;
  int d = this.e.i;

  private an(ag paramag)
  {
    boolean[] arrayOfBoolean = this.e.d;
    if (this.d != 0)
    {
      int i;
      do
      {
        i = -1 + this.b;
        this.b = i;
      }
      while (arrayOfBoolean[i] == 0);
    }
  }

  public final int b()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    this.c = this.b;
    int i = -1 + this.d;
    this.d = i;
    if (i != 0)
    {
      boolean[] arrayOfBoolean = this.e.d;
      int j;
      do
      {
        j = -1 + this.b & this.e.h;
        this.b = j;
      }
      while (arrayOfBoolean[j] == 0);
    }
    return this.c;
  }

  public boolean hasNext()
  {
    return this.d != 0;
  }

  public void remove()
  {
    if (this.c == -1)
      throw new IllegalStateException();
    ag localag = this.e;
    localag.i = (-1 + localag.i);
    if ((this.e.a(this.c) == this.b) && (this.d > 0))
    {
      this.d = (1 + this.d);
      b();
    }
    this.c = -1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.an
 * JD-Core Version:    0.6.2
 */