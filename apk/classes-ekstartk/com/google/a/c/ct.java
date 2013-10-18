package com.google.a.c;

import com.google.a.a.an;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public abstract class ct<E> extends AbstractCollection<E>
  implements Serializable
{
  private transient dc<E> a;

  int a(Object[] paramArrayOfObject, int paramInt)
  {
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      int i = paramInt + 1;
      paramArrayOfObject[paramInt] = localObject;
      paramInt = i;
    }
    return paramInt;
  }

  public dc<E> a()
  {
    dc localdc = this.a;
    if (localdc == null)
    {
      localdc = f();
      this.a = localdc;
    }
    return localdc;
  }

  @Deprecated
  public final boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public abstract lj<E> b();

  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }

  public boolean contains(Object paramObject)
  {
    return (paramObject != null) && (super.contains(paramObject));
  }

  abstract boolean e();

  dc<E> f()
  {
    switch (size())
    {
    default:
      return new ij(this, toArray());
    case 0:
      return dc.d();
    case 1:
    }
    return dc.a(b().next());
  }

  @Deprecated
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  @Deprecated
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final Object[] toArray()
  {
    if (size() == 0)
      return ig.a;
    Object[] arrayOfObject = new Object[size()];
    a(arrayOfObject, 0);
    return arrayOfObject;
  }

  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    an.a(paramArrayOfT);
    int i = size();
    if (paramArrayOfT.length < i)
      paramArrayOfT = ig.a(paramArrayOfT, i);
    while (true)
    {
      a(paramArrayOfT, 0);
      return paramArrayOfT;
      if (paramArrayOfT.length > i)
        paramArrayOfT[i] = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ct
 * JD-Core Version:    0.6.2
 */