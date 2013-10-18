package com.google.a.c;

import java.lang.ref.ReferenceQueue;

final class gz<K, V> extends gw<K, V>
  implements gh<K, V>
{
  volatile long d = 9223372036854775807L;
  gh<K, V> e = fi.g();
  gh<K, V> f = fi.g();
  gh<K, V> g = fi.g();
  gh<K, V> h = fi.g();

  gz(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, gh<K, V> paramgh)
  {
    super(paramReferenceQueue, paramK, paramInt, paramgh);
  }

  public final void a(long paramLong)
  {
    this.d = paramLong;
  }

  public final void a(gh<K, V> paramgh)
  {
    this.e = paramgh;
  }

  public final void b(gh<K, V> paramgh)
  {
    this.f = paramgh;
  }

  public final void c(gh<K, V> paramgh)
  {
    this.g = paramgh;
  }

  public final void d(gh<K, V> paramgh)
  {
    this.h = paramgh;
  }

  public final long e()
  {
    return this.d;
  }

  public final gh<K, V> f()
  {
    return this.e;
  }

  public final gh<K, V> g()
  {
    return this.f;
  }

  public final gh<K, V> h()
  {
    return this.g;
  }

  public final gh<K, V> i()
  {
    return this.h;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gz
 * JD-Core Version:    0.6.2
 */