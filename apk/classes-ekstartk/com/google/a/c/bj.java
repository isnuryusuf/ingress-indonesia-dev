package com.google.a.c;

import com.google.a.a.an;
import java.util.Comparator;
import java.util.Map.Entry;

final class bj<K, V> extends dx<K, V>
{
  private final transient dz<K> a;

  bj(Comparator<? super K> paramComparator)
  {
    this.a = dz.a(paramComparator);
  }

  private bj(Comparator<? super K> paramComparator, dx<K, V> paramdx)
  {
    super(paramdx);
    this.a = dz.a(paramComparator);
  }

  public final dx<K, V> a(K paramK, boolean paramBoolean)
  {
    an.a(paramK);
    return this;
  }

  public final dz<K> a()
  {
    return this.a;
  }

  public final dx<K, V> b(K paramK, boolean paramBoolean)
  {
    an.a(paramK);
    return this;
  }

  final boolean b()
  {
    return false;
  }

  final du<Map.Entry<K, V>> d()
  {
    throw new AssertionError("should never be called");
  }

  public final ct<V> d_()
  {
    return dc.d();
  }

  public final du<Map.Entry<K, V>> f()
  {
    return du.g();
  }

  public final V get(Object paramObject)
  {
    return null;
  }

  final dx<K, V> h()
  {
    return new bj(ih.a(comparator()).a(), this);
  }

  public final boolean isEmpty()
  {
    return true;
  }

  public final int size()
  {
    return 0;
  }

  public final String toString()
  {
    return "{}";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.bj
 * JD-Core Version:    0.6.2
 */