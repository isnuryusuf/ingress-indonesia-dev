package a.a.a.a.b;

import java.util.NoSuchElementException;

final class w extends z
{
  int a = this.c;
  int b = -1;

  w(v paramv, int paramInt)
  {
  }

  public final long a()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    v localv = this.d;
    int i = this.a;
    this.a = (i + 1);
    this.b = i;
    return localv.g(i);
  }

  public final void a(long paramLong)
  {
    if (this.b == -1)
      throw new IllegalStateException();
    v localv = this.d;
    int i = this.a;
    this.a = (i + 1);
    localv.a(i, paramLong);
    this.b = -1;
  }

  public final long b()
  {
    if (!hasPrevious())
      throw new NoSuchElementException();
    v localv = this.d;
    int i = -1 + this.a;
    this.a = i;
    this.b = i;
    return localv.g(i);
  }

  public final void b(long paramLong)
  {
    if (this.b == -1)
      throw new IllegalStateException();
    this.d.b(this.b, paramLong);
  }

  public final boolean hasNext()
  {
    return this.a < this.d.size();
  }

  public final boolean hasPrevious()
  {
    return this.a > 0;
  }

  public final int nextIndex()
  {
    return this.a;
  }

  public final int previousIndex()
  {
    return -1 + this.a;
  }

  public final void remove()
  {
    if (this.b == -1)
      throw new IllegalStateException();
    this.d.c(this.b);
    if (this.b < this.a)
      this.a = (-1 + this.a);
    this.b = -1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.w
 * JD-Core Version:    0.6.2
 */