package com.google.a.c;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

class q extends f<K, V>.o
  implements List<V>
{
  q(K paramK, List<V> paramList, f<K, V>.o paramf)
  {
    super(paramK, paramList, paramf, localo);
  }

  public void add(int paramInt, V paramV)
  {
    a();
    boolean bool = this.c.isEmpty();
    ((List)this.c).add(paramInt, paramV);
    f.c(this.g);
    if (bool)
      c();
  }

  public boolean addAll(int paramInt, Collection<? extends V> paramCollection)
  {
    boolean bool;
    if (paramCollection.isEmpty())
      bool = false;
    int i;
    do
    {
      do
      {
        return bool;
        i = size();
        bool = ((List)this.c).addAll(paramInt, paramCollection);
      }
      while (!bool);
      int j = this.c.size();
      f.a(this.g, j - i);
    }
    while (i != 0);
    c();
    return bool;
  }

  final List<V> d()
  {
    return (List)this.c;
  }

  public V get(int paramInt)
  {
    a();
    return ((List)this.c).get(paramInt);
  }

  public int indexOf(Object paramObject)
  {
    a();
    return ((List)this.c).indexOf(paramObject);
  }

  public int lastIndexOf(Object paramObject)
  {
    a();
    return ((List)this.c).lastIndexOf(paramObject);
  }

  public ListIterator<V> listIterator()
  {
    a();
    return new r(this);
  }

  public ListIterator<V> listIterator(int paramInt)
  {
    a();
    return new r(this, paramInt);
  }

  public V remove(int paramInt)
  {
    a();
    Object localObject = ((List)this.c).remove(paramInt);
    f.b(this.g);
    b();
    return localObject;
  }

  public V set(int paramInt, V paramV)
  {
    a();
    return ((List)this.c).set(paramInt, paramV);
  }

  public List<V> subList(int paramInt1, int paramInt2)
  {
    a();
    f localf = this.g;
    Object localObject = this.b;
    List localList = ((List)this.c).subList(paramInt1, paramInt2);
    if (this.d == null);
    while (true)
    {
      return f.a(localf, localObject, localList, this);
      this = this.d;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.q
 * JD-Core Version:    0.6.2
 */