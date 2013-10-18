package a.a.a.a.b;

import java.util.NoSuchElementException;

class bt
{
  int c = this.f.f;
  int d = -1;
  int e = this.f.i;

  private bt(bl parambl)
  {
    boolean[] arrayOfBoolean = this.f.d;
    if (this.e != 0)
    {
      int i;
      do
      {
        i = -1 + this.c;
        this.c = i;
      }
      while (arrayOfBoolean[i] == 0);
    }
  }

  public final int b()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    this.d = this.c;
    int i = -1 + this.e;
    this.e = i;
    if (i != 0)
    {
      boolean[] arrayOfBoolean = this.f.d;
      int j;
      do
      {
        j = -1 + this.c & this.f.h;
        this.c = j;
      }
      while (arrayOfBoolean[j] == 0);
    }
    return this.d;
  }

  public boolean hasNext()
  {
    return this.e != 0;
  }

  public void remove()
  {
    if (this.d == -1)
      throw new IllegalStateException();
    bl localbl = this.f;
    localbl.i = (-1 + localbl.i);
    if ((this.f.a(this.d) == this.c) && (this.e > 0))
    {
      this.e = (1 + this.e);
      b();
    }
    this.d = -1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.bt
 * JD-Core Version:    0.6.2
 */