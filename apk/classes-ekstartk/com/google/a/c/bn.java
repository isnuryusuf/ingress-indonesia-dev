package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;

public abstract class bn<E> extends bs
  implements Collection<E>
{
  protected boolean a(Collection<?> paramCollection)
  {
    return eg.a(iterator(), paramCollection);
  }

  public boolean add(E paramE)
  {
    return k().add(paramE);
  }

  public boolean addAll(Collection<? extends E> paramCollection)
  {
    return k().addAll(paramCollection);
  }

  protected boolean b(Collection<?> paramCollection)
  {
    return eg.b(iterator(), paramCollection);
  }

  public void clear()
  {
    k().clear();
  }

  public boolean contains(Object paramObject)
  {
    return k().contains(paramObject);
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return k().containsAll(paramCollection);
  }

  public boolean isEmpty()
  {
    return k().isEmpty();
  }

  public Iterator<E> iterator()
  {
    return k().iterator();
  }

  protected abstract Collection<E> k();

  protected final Object[] n()
  {
    return toArray(new Object[size()]);
  }

  public boolean remove(Object paramObject)
  {
    return k().remove(paramObject);
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    return k().removeAll(paramCollection);
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    return k().retainAll(paramCollection);
  }

  public int size()
  {
    return k().size();
  }

  public Object[] toArray()
  {
    return k().toArray();
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return k().toArray(paramArrayOfT);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bn
 * JD-Core Version:    0.6.2
 */