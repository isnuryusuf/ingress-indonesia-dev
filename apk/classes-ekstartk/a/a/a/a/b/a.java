package a.a.a.a.b;

import java.io.Serializable;

public abstract class a
  implements ac, Serializable
{
  protected long a_;

  public long a(long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public long a(long paramLong1, long paramLong2)
  {
    throw new UnsupportedOperationException();
  }

  public Long a(Long paramLong1, Long paramLong2)
  {
    long l1 = paramLong1.longValue();
    boolean bool = c(l1);
    long l2 = a(l1, paramLong2.longValue());
    if (bool)
      return Long.valueOf(l2);
    return null;
  }

  public Long a(Object paramObject)
  {
    long l1 = ((Long)paramObject).longValue();
    boolean bool = c(l1);
    long l2 = a(l1);
    if (bool)
      return Long.valueOf(l2);
    return null;
  }

  public final void a()
  {
    this.a_ = 0L;
  }

  public void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean containsKey(Object paramObject)
  {
    return c(((Long)paramObject).longValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.a
 * JD-Core Version:    0.6.2
 */