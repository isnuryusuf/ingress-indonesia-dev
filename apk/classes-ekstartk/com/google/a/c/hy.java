package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

abstract class hy<E> extends jh<E>
{
  abstract ht<E> a();

  public void clear()
  {
    a().clear();
  }

  public boolean contains(Object paramObject)
  {
    return a().contains(paramObject);
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return a().containsAll(paramCollection);
  }

  public boolean isEmpty()
  {
    return a().isEmpty();
  }

  public Iterator<E> iterator()
  {
    return new hz(this, a().e_().iterator());
  }

  public boolean remove(Object paramObject)
  {
    int i = a().a(paramObject);
    if (i > 0)
    {
      a().b(paramObject, i);
      return true;
    }
    return false;
  }

  public int size()
  {
    return a().e_().size();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.hy
 * JD-Core Version:    0.6.2
 */