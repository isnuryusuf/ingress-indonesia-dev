package a.a.a.a.b;

import java.io.Serializable;
import java.util.Collection;

public final class x extends v
  implements Serializable
{
  protected final ch a;
  protected final int b;
  protected int c;

  public x(ch paramch, int paramInt1, int paramInt2)
  {
    this.a = paramch;
    this.b = paramInt1;
    this.c = paramInt2;
  }

  public final ch a(int paramInt1, int paramInt2)
  {
    a(paramInt1);
    a(paramInt2);
    if (paramInt1 > paramInt2)
      throw new IllegalArgumentException("Start index (" + paramInt1 + ") is greater than end index (" + paramInt2 + ")");
    return new x(this, paramInt1, paramInt2);
  }

  public final void a(int paramInt, long paramLong)
  {
    a(paramInt);
    this.a.a(paramInt + this.b, paramLong);
    this.c = (1 + this.c);
  }

  public final boolean addAll(int paramInt, Collection<? extends Long> paramCollection)
  {
    a(paramInt);
    this.c += paramCollection.size();
    return this.a.addAll(paramInt + this.b, paramCollection);
  }

  public final long b(int paramInt, long paramLong)
  {
    b(paramInt);
    return this.a.b(paramInt + this.b, paramLong);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    a(paramInt1);
    a(paramInt2);
    this.a.b(paramInt1 + this.b, paramInt2 + this.b);
    this.c -= paramInt2 - paramInt1;
  }

  public final long c(int paramInt)
  {
    b(paramInt);
    this.c = (-1 + this.c);
    return this.a.c(paramInt + this.b);
  }

  public final void clear()
  {
    b(0, size());
  }

  public final ci d(int paramInt)
  {
    a(paramInt);
    return new y(this, paramInt);
  }

  public final boolean d(long paramLong)
  {
    this.a.a(this.c, paramLong);
    this.c = (1 + this.c);
    return true;
  }

  public final boolean e(long paramLong)
  {
    int i = b(paramLong);
    if (i == -1)
      return false;
    this.c = (-1 + this.c);
    this.a.c(i + this.b);
    return true;
  }

  public final long g(int paramInt)
  {
    b(paramInt);
    return this.a.g(paramInt + this.b);
  }

  public final boolean remove(Object paramObject)
  {
    return e(((Long)paramObject).longValue());
  }

  public final int size()
  {
    return this.c - this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.x
 * JD-Core Version:    0.6.2
 */