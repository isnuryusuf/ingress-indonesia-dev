package com.google.a.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;

class eu<K, V> extends bn<Map.Entry<K, V>>
{
  final er<? super K, ? super V> a;
  final Collection<Map.Entry<K, V>> b;

  eu(Collection<Map.Entry<K, V>> paramCollection, er<? super K, ? super V> paramer)
  {
    this.b = paramCollection;
    this.a = paramer;
  }

  public boolean contains(Object paramObject)
  {
    return hc.a(this.b, paramObject);
  }

  public boolean containsAll(Collection<?> paramCollection)
  {
    return as.a(this, paramCollection);
  }

  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new ev(this, this.b.iterator());
  }

  protected final Collection<Map.Entry<K, V>> k()
  {
    return this.b;
  }

  public boolean remove(Object paramObject)
  {
    return hc.b(this.b, paramObject);
  }

  public boolean removeAll(Collection<?> paramCollection)
  {
    return a(paramCollection);
  }

  public boolean retainAll(Collection<?> paramCollection)
  {
    return b(paramCollection);
  }

  public Object[] toArray()
  {
    return n();
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return ig.a(this, paramArrayOfT);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.eu
 * JD-Core Version:    0.6.2
 */