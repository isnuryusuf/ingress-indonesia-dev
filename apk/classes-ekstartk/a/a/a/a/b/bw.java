package a.a.a.a.b;

import java.io.Serializable;
import java.util.RandomAccess;

public final class bw extends v
  implements Serializable, Cloneable, RandomAccess
{
  protected transient long[] a;
  protected int b;

  public bw()
  {
    this(16);
  }

  private bw(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Initial capacity (" + paramInt + ") is negative");
    this.a = new long[paramInt];
  }

  private void h(int paramInt)
  {
    this.a = by.a(this.a, paramInt, this.b);
  }

  public final void a(int paramInt, long paramLong)
  {
    a(paramInt);
    h(1 + this.b);
    if (paramInt != this.b)
      System.arraycopy(this.a, paramInt, this.a, paramInt + 1, this.b - paramInt);
    this.a[paramInt] = paramLong;
    this.b = (1 + this.b);
  }

  public final int b(long paramLong)
  {
    for (int i = 0; i < this.b; i++)
      if (paramLong == this.a[i])
        return i;
    return -1;
  }

  public final long b(int paramInt, long paramLong)
  {
    if (paramInt >= this.b)
      throw new IndexOutOfBoundsException("Index (" + paramInt + ") is greater than or equal to list size (" + this.b + ")");
    long l = this.a[paramInt];
    this.a[paramInt] = paramLong;
    return l;
  }

  public final void b(int paramInt1, int paramInt2)
  {
    int i = this.b;
    if (paramInt1 < 0)
      throw new ArrayIndexOutOfBoundsException("Start index (" + paramInt1 + ") is negative");
    if (paramInt1 > paramInt2)
      throw new IllegalArgumentException("Start index (" + paramInt1 + ") is greater than end index (" + paramInt2 + ")");
    if (paramInt2 > i)
      throw new ArrayIndexOutOfBoundsException("End index (" + paramInt2 + ") is greater than array length (" + i + ")");
    System.arraycopy(this.a, paramInt2, this.a, paramInt1, this.b - paramInt2);
    this.b -= paramInt2 - paramInt1;
  }

  public final int c(long paramLong)
  {
    int j;
    for (int i = this.b; ; i = j)
    {
      j = i - 1;
      if (i != 0)
      {
        if (paramLong == this.a[j])
          return j;
      }
      else
        return -1;
    }
  }

  public final long c(int paramInt)
  {
    if (paramInt >= this.b)
      throw new IndexOutOfBoundsException("Index (" + paramInt + ") is greater than or equal to list size (" + this.b + ")");
    long l = this.a[paramInt];
    this.b = (-1 + this.b);
    if (paramInt != this.b)
      System.arraycopy(this.a, paramInt + 1, this.a, paramInt, this.b - paramInt);
    return l;
  }

  public final void clear()
  {
    this.b = 0;
  }

  public final ci d(int paramInt)
  {
    a(paramInt);
    return new bx(this, paramInt);
  }

  public final boolean d(long paramLong)
  {
    h(1 + this.b);
    long[] arrayOfLong = this.a;
    int i = this.b;
    this.b = (i + 1);
    arrayOfLong[i] = paramLong;
    return true;
  }

  public final boolean e(long paramLong)
  {
    int i = b(paramLong);
    if (i == -1)
      return false;
    c(i);
    return true;
  }

  public final long[] f()
  {
    long[] arrayOfLong = new long[this.b];
    System.arraycopy(this.a, 0, arrayOfLong, 0, this.b);
    return arrayOfLong;
  }

  public final long g(int paramInt)
  {
    if (paramInt >= this.b)
      throw new IndexOutOfBoundsException("Index (" + paramInt + ") is greater than or equal to list size (" + this.b + ")");
    return this.a[paramInt];
  }

  public final boolean isEmpty()
  {
    return this.b == 0;
  }

  public final int size()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.bw
 * JD-Core Version:    0.6.2
 */