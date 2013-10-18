package com.google.a.b;

import java.lang.ref.ReferenceQueue;

final class bg<K, V> extends bh<K, V>
  implements ap<K, V>
{
  volatile long a = 9223372036854775807L;
  ap<K, V> b = o.k();
  ap<K, V> c = o.k();
  volatile long d = 9223372036854775807L;
  ap<K, V> e = o.k();
  ap<K, V> f = o.k();

  bg(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, ap<K, V> paramap)
  {
    super(paramReferenceQueue, paramK, paramInt, paramap);
  }

  public final void a(long paramLong)
  {
    this.a = paramLong;
  }

  public final void a(ap<K, V> paramap)
  {
    this.b = paramap;
  }

  public final void b(long paramLong)
  {
    this.d = paramLong;
  }

  public final void b(ap<K, V> paramap)
  {
    this.c = paramap;
  }

  public final void c(ap<K, V> paramap)
  {
    this.e = paramap;
  }

  public final void d(ap<K, V> paramap)
  {
    this.f = paramap;
  }

  public final long e()
  {
    return this.a;
  }

  public final ap<K, V> f()
  {
    return this.b;
  }

  public final ap<K, V> g()
  {
    return this.c;
  }

  public final long h()
  {
    return this.d;
  }

  public final ap<K, V> i()
  {
    return this.e;
  }

  public final ap<K, V> j()
  {
    return this.f;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bg
 * JD-Core Version:    0.6.2
 */