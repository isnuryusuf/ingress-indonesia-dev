package com.google.a.c;

import com.google.a.a.an;
import com.google.a.a.ao;
import com.google.a.a.ap;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

class at<E> extends AbstractCollection<E>
{
  final Collection<E> a;
  final ao<? super E> b;

  at(Collection<E> paramCollection, ao<? super E> paramao)
  {
    this.a = paramCollection;
    this.b = paramao;
  }

  public boolean add(E paramE)
  {
    an.a(this.b.a(paramE));
    return this.a.add(paramE);
  }

  public boolean addAll(Collection<? extends E> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      an.a(this.b.a(localObject));
    }
    return this.a.addAll(paramCollection);
  }

  public void clear()
  {
    ee.a(this.a, this.b);
  }

  public boolean contains(Object paramObject)
  {
    if (as.a(this.a, paramObject))
      return this.b.a(paramObject);
    return false;
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return as.a(this, paramCollection);
  }

  public boolean isEmpty()
  {
    Collection localCollection = this.a;
    ao localao = this.b;
    return !eg.c(localCollection.iterator(), localao);
  }

  public Iterator<E> iterator()
  {
    return eg.b(this.a.iterator(), this.b);
  }

  public boolean remove(Object paramObject)
  {
    return (contains(paramObject)) && (this.a.remove(paramObject));
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    return ee.a(this.a, ap.a(this.b, ap.a(paramCollection)));
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    return ee.a(this.a, ap.a(this.b, ap.a(ap.a(paramCollection))));
  }

  public int size()
  {
    return eg.b(iterator());
  }

  public Object[] toArray()
  {
    return eq.a(iterator()).toArray();
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return eq.a(iterator()).toArray(paramArrayOfT);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.at
 * JD-Core Version:    0.6.2
 */