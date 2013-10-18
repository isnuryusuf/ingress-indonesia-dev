package com.google.a.c;

import com.google.a.a.ag;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

abstract class aa<E> extends AbstractCollection<E>
  implements ht<E>
{
  private transient Set<E> a;
  private transient Set<hu<E>> b;

  public int a(Object paramObject)
  {
    Iterator localIterator = e_().iterator();
    while (localIterator.hasNext())
    {
      hu localhu = (hu)localIterator.next();
      if (ag.a(localhu.a(), paramObject))
        return localhu.b();
    }
    return 0;
  }

  public int a(E paramE, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public boolean a(E paramE, int paramInt1, int paramInt2)
  {
    return hv.a(this, paramE, paramInt1, paramInt2);
  }

  public boolean add(E paramE)
  {
    a(paramE, 1);
    return true;
  }

  public boolean addAll(Collection<? extends E> paramCollection)
  {
    return hv.a(this, paramCollection);
  }

  public int b(Object paramObject, int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  abstract Iterator<hu<E>> b();

  abstract int c();

  public int c(E paramE, int paramInt)
  {
    return hv.a(this, paramE, paramInt);
  }

  public void clear()
  {
    eg.f(b());
  }

  public boolean contains(Object paramObject)
  {
    return a(paramObject) > 0;
  }

  public Set<E> d()
  {
    Set localSet = this.a;
    if (localSet == null)
    {
      localSet = e();
      this.a = localSet;
    }
    return localSet;
  }

  Set<E> e()
  {
    return new ab(this);
  }

  public Set<hu<E>> e_()
  {
    Object localObject = this.b;
    if (localObject == null)
    {
      localObject = new ac(this);
      this.b = ((Set)localObject);
    }
    return localObject;
  }

  public boolean equals(Object paramObject)
  {
    return hv.a(this, paramObject);
  }

  public int hashCode()
  {
    return e_().hashCode();
  }

  public boolean isEmpty()
  {
    return e_().isEmpty();
  }

  public Iterator<E> iterator()
  {
    return hv.a(this);
  }

  public boolean remove(Object paramObject)
  {
    return b(paramObject, 1) > 0;
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    return hv.b(this, paramCollection);
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    return hv.c(this, paramCollection);
  }

  public int size()
  {
    return hv.b(this);
  }

  public String toString()
  {
    return e_().toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.aa
 * JD-Core Version:    0.6.2
 */