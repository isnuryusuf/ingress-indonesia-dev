package com.google.a.c;

import com.google.a.a.an;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;

class o extends AbstractCollection<V>
{
  final K b;
  Collection<V> c;
  final f<K, V>.o d;
  final Collection<V> e;

  o(K paramK, Collection<V> paramCollection, f<K, V>.o paramf)
  {
    this.b = paramCollection;
    this.c = paramf;
    Object localObject;
    this.d = localObject;
    if (localObject == null);
    for (Collection localCollection = null; ; localCollection = localObject.c)
    {
      this.e = localCollection;
      return;
    }
  }

  final void a()
  {
    if (this.d != null)
    {
      this.d.a();
      if (this.d.c != this.e)
        throw new ConcurrentModificationException();
    }
    else if (this.c.isEmpty())
    {
      Collection localCollection = (Collection)f.a(this.f).get(this.b);
      if (localCollection != null)
        this.c = localCollection;
    }
  }

  public boolean add(V paramV)
  {
    a();
    boolean bool1 = this.c.isEmpty();
    boolean bool2 = this.c.add(paramV);
    if (bool2)
    {
      f.c(this.f);
      if (bool1)
        c();
    }
    return bool2;
  }

  public boolean addAll(Collection<? extends V> paramCollection)
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
        bool = this.c.addAll(paramCollection);
      }
      while (!bool);
      int j = this.c.size();
      f.a(this.f, j - i);
    }
    while (i != 0);
    c();
    return bool;
  }

  final void b()
  {
    while (this.d != null)
      this = this.d;
    if (this.c.isEmpty())
      f.a(this.f).remove(this.b);
  }

  final void c()
  {
    while (this.d != null)
      this = this.d;
    f.a(this.f).put(this.b, this.c);
  }

  public void clear()
  {
    int i = size();
    if (i == 0)
      return;
    this.c.clear();
    f.b(this.f, i);
    b();
  }

  public boolean contains(Object paramObject)
  {
    a();
    return this.c.contains(paramObject);
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    a();
    return this.c.containsAll(paramCollection);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    a();
    return this.c.equals(paramObject);
  }

  public int hashCode()
  {
    a();
    return this.c.hashCode();
  }

  public Iterator<V> iterator()
  {
    a();
    return new p(this);
  }

  public boolean remove(Object paramObject)
  {
    a();
    boolean bool = this.c.remove(paramObject);
    if (bool)
    {
      f.b(this.f);
      b();
    }
    return bool;
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool;
    if (paramCollection.isEmpty())
      bool = false;
    int i;
    do
    {
      return bool;
      i = size();
      bool = this.c.removeAll(paramCollection);
    }
    while (!bool);
    int j = this.c.size();
    f.a(this.f, j - i);
    b();
    return bool;
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    an.a(paramCollection);
    int i = size();
    boolean bool = this.c.retainAll(paramCollection);
    if (bool)
    {
      int j = this.c.size();
      f.a(this.f, j - i);
      b();
    }
    return bool;
  }

  public int size()
  {
    a();
    return this.c.size();
  }

  public String toString()
  {
    a();
    return this.c.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.o
 * JD-Core Version:    0.6.2
 */