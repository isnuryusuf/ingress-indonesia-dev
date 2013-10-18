package com.google.a.c;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public abstract class dq<E> extends ct<E>
  implements ht<E>
{
  private static final dq<Object> a = new io(dh.i());
  private transient du<hu<E>> b;

  private du<hu<E>> c()
  {
    Object localObject = this.b;
    if (localObject == null)
      if (!isEmpty())
        break label27;
    label27: for (localObject = du.g(); ; localObject = new ds(this, (byte)0))
    {
      this.b = ((du)localObject);
      return localObject;
    }
  }

  @Deprecated
  public final int a(E paramE, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      hu localhu = (hu)localIterator.next();
      Arrays.fill(paramArrayOfObject, paramInt, paramInt + localhu.b(), localhu.a());
      paramInt += localhu.b();
    }
    return paramInt;
  }

  abstract hu<E> a(int paramInt);

  @Deprecated
  public final boolean a(E paramE, int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final int b(Object paramObject, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public final lj<E> b()
  {
    return new dr(this, c().b());
  }

  @Deprecated
  public final int c(E paramE, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean contains(Object paramObject)
  {
    return a(paramObject) > 0;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return d().containsAll(paramCollection);
  }

  public boolean equals(Object paramObject)
  {
    return hv.a(this, paramObject);
  }

  public int hashCode()
  {
    return jc.a(c());
  }

  public String toString()
  {
    return c().toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.dq
 * JD-Core Version:    0.6.2
 */