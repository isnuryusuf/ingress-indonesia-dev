package a.a.a.a.b;

import java.util.NoSuchElementException;

final class y extends z
{
  int a = this.c;
  int b = -1;

  y(x paramx, int paramInt)
  {
  }

  public final long a()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    ch localch = this.d.a;
    int i = this.d.b;
    int j = this.a;
    this.a = (j + 1);
    this.b = j;
    return localch.g(i + j);
  }

  public final void a(long paramLong)
  {
    if (this.b == -1)
      throw new IllegalStateException();
    x localx = this.d;
    int i = this.a;
    this.a = (i + 1);
    localx.a(i, paramLong);
    this.b = -1;
  }

  public final long b()
  {
    if (!hasPrevious())
      throw new NoSuchElementException();
    ch localch = this.d.a;
    int i = this.d.b;
    int j = -1 + this.a;
    this.a = j;
    this.b = j;
    return localch.g(i + j);
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
 * Qualified Name:     a.a.a.a.b.y
 * JD-Core Version:    0.6.2
 */