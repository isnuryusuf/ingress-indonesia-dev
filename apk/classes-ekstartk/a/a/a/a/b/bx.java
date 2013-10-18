package a.a.a.a.b;

import java.util.NoSuchElementException;

final class bx extends z
{
  int a = this.c;
  int b = -1;

  bx(bw parambw, int paramInt)
  {
  }

  public final long a()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    long[] arrayOfLong = this.d.a;
    int i = this.a;
    this.a = (i + 1);
    this.b = i;
    return arrayOfLong[i];
  }

  public final void a(long paramLong)
  {
    if (this.b == -1)
      throw new IllegalStateException();
    bw localbw = this.d;
    int i = this.a;
    this.a = (i + 1);
    localbw.a(i, paramLong);
    this.b = -1;
  }

  public final long b()
  {
    if (!hasPrevious())
      throw new NoSuchElementException();
    long[] arrayOfLong = this.d.a;
    int i = -1 + this.a;
    this.a = i;
    this.b = i;
    return arrayOfLong[i];
  }

  public final void b(long paramLong)
  {
    if (this.b == -1)
      throw new IllegalStateException();
    this.d.b(this.b, paramLong);
  }

  public final boolean hasNext()
  {
    return this.a < this.d.b;
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
 * Qualified Name:     a.a.a.a.b.bx
 * JD-Core Version:    0.6.2
 */