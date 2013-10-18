package a.a.a.a.b;

import java.io.Serializable;

public abstract class g<V>
  implements bh<V>, Serializable
{
  protected V b_;

  public V a(long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public V a(long paramLong, V paramV)
  {
    throw new UnsupportedOperationException();
  }

  public V a(Long paramLong, V paramV)
  {
    long l = paramLong.longValue();
    boolean bool = b(l);
    Object localObject = a(l, paramV);
    if (bool)
      return localObject;
    return null;
  }

  public void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean containsKey(Object paramObject)
  {
    return b(((Long)paramObject).longValue());
  }

  public V get(Object paramObject)
  {
    long l = ((Long)paramObject).longValue();
    if (b(l))
      return e(l);
    return null;
  }

  public V remove(Object paramObject)
  {
    long l = ((Long)paramObject).longValue();
    boolean bool = b(l);
    Object localObject = a(l);
    if (bool)
      return localObject;
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.g
 * JD-Core Version:    0.6.2
 */