package com.google.a.c;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class gw<K, V> extends WeakReference<K>
  implements gh<K, V>
{
  final int a;
  final gh<K, V> b;
  volatile gu<K, V> c = fi.f();

  gw(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, gh<K, V> paramgh)
  {
    super(paramK, paramReferenceQueue);
    this.a = paramInt;
    this.b = paramgh;
  }

  public final gu<K, V> a()
  {
    return this.c;
  }

  public void a(long paramLong)
  {
    throw new UnsupportedOperationException();
  }

  public void a(gh<K, V> paramgh)
  {
    throw new UnsupportedOperationException();
  }

  public final void a(gu<K, V> paramgu)
  {
    gu localgu = this.c;
    this.c = paramgu;
    localgu.b();
  }

  public final gh<K, V> b()
  {
    return this.b;
  }

  public void b(gh<K, V> paramgh)
  {
    throw new UnsupportedOperationException();
  }

  public final int c()
  {
    return this.a;
  }

  public void c(gh<K, V> paramgh)
  {
    throw new UnsupportedOperationException();
  }

  public final K d()
  {
    return get();
  }

  public void d(gh<K, V> paramgh)
  {
    throw new UnsupportedOperationException();
  }

  public long e()
  {
    throw new UnsupportedOperationException();
  }

  public gh<K, V> f()
  {
    throw new UnsupportedOperationException();
  }

  public gh<K, V> g()
  {
    throw new UnsupportedOperationException();
  }

  public gh<K, V> h()
  {
    throw new UnsupportedOperationException();
  }

  public gh<K, V> i()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gw
 * JD-Core Version:    0.6.2
 */