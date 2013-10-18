package com.google.a.c;

import java.lang.ref.ReferenceQueue;

final class gy<K, V> extends gw<K, V>
  implements gh<K, V>
{
  volatile long d = 9223372036854775807L;
  gh<K, V> e = fi.g();
  gh<K, V> f = fi.g();

  gy(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, gh<K, V> paramgh)
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
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gy
 * JD-Core Version:    0.6.2
 */