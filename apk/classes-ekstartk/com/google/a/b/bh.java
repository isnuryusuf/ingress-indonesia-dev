package com.google.a.b;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class bh<K, V> extends WeakReference<K>
  implements ap<K, V>
{
  final int g;
  final ap<K, V> h;
  volatile bd<K, V> i = o.j();

  bh(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, ap<K, V> paramap)
  {
    super(paramK, paramReferenceQueue);
    this.g = paramInt;
    this.h = paramap;
  }

  public final bd<K, V> a()
  {
    return this.i;
  }

  public void a(long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public void a(ap<K, V> paramap)
  {
    throw new UnsupportedOperationException();
  }

  public final void a(bd<K, V> parambd)
  {
    this.i = parambd;
  }

  public final ap<K, V> b()
  {
    return this.h;
  }

  public void b(long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public void b(ap<K, V> paramap)
  {
    throw new UnsupportedOperationException();
  }

  public final int c()
  {
    return this.g;
  }

  public void c(ap<K, V> paramap)
  {
    throw new UnsupportedOperationException();
  }

  public final K d()
  {
    return get();
  }

  public void d(ap<K, V> paramap)
  {
    throw new UnsupportedOperationException();
  }

  public long e()
  {
    throw new UnsupportedOperationException();
  }

  public ap<K, V> f()
  {
    throw new UnsupportedOperationException();
  }

  public ap<K, V> g()
  {
    throw new UnsupportedOperationException();
  }

  public long h()
  {
    throw new UnsupportedOperationException();
  }

  public ap<K, V> i()
  {
    throw new UnsupportedOperationException();
  }

  public ap<K, V> j()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bh
 * JD-Core Version:    0.6.2
 */