package com.google.a.c;

final class gq<K, V> extends go<K, V>
  implements gh<K, V>
{
  volatile long e = 9223372036854775807L;
  gh<K, V> f = fi.g();
  gh<K, V> g = fi.g();

  gq(K paramK, int paramInt, gh<K, V> paramgh)
  {
    super(paramK, paramInt, paramgh);
  }

  public final void a(long paramLong)
  {
    this.e = paramLong;
  }

  public final void a(gh<K, V> paramgh)
  {
    this.f = paramgh;
  }

  public final void b(gh<K, V> paramgh)
  {
    this.g = paramgh;
  }

  public final long e()
  {
    return this.e;
  }

  public final gh<K, V> f()
  {
    return this.f;
  }

  public final gh<K, V> g()
  {
    return this.g;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gq
 * JD-Core Version:    0.6.2
 */