package a.a.a.a.b;

import java.util.NoSuchElementException;

final class ck extends u
{
  int a = this.d.e;
  int b = -1;
  int c = this.d.h;

  private ck(cj paramcj)
  {
    boolean[] arrayOfBoolean = this.d.c;
    if (this.c != 0)
    {
      int i;
      do
      {
        i = -1 + this.a;
        this.a = i;
      }
      while (arrayOfBoolean[i] == 0);
    }
  }

  public final long a()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    long[] arrayOfLong = this.d.b;
    int i = this.a;
    this.b = i;
    long l = arrayOfLong[i];
    int j = -1 + this.c;
    this.c = j;
    if (j != 0)
    {
      boolean[] arrayOfBoolean = this.d.c;
      int k;
      do
      {
        k = -1 + this.a & this.d.g;
        this.a = k;
      }
      while (arrayOfBoolean[k] == 0);
    }
    return l;
  }

  public final boolean hasNext()
  {
    return this.c != 0;
  }

  public final void remove()
  {
    if (this.b == -1)
      throw new IllegalStateException();
    cj localcj = this.d;
    localcj.h = (-1 + localcj.h);
    if ((this.d.a(this.b) == this.a) && (this.c > 0))
    {
      this.c = (1 + this.c);
      a();
    }
    this.b = -1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.ck
 * JD-Core Version:    0.6.2
 */