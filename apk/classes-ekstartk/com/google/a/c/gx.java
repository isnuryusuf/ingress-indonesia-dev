package com.google.a.c;

import java.lang.ref.ReferenceQueue;

final class gx<K, V> extends gw<K, V>
  implements gh<K, V>
{
  gh<K, V> d = fi.g();
  gh<K, V> e = fi.g();

  gx(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, gh<K, V> paramgh)
  {
    super(paramReferenceQueue, paramK, paramInt, paramgh);
  }

  public final void c(gh<K, V> paramgh)
  {
    this.d = paramgh;
  }

  public final void d(gh<K, V> paramgh)
  {
    this.e = paramgh;
  }

  public final gh<K, V> h()
  {
    return this.d;
  }

  public final gh<K, V> i()
  {
    return this.e;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gx
 * JD-Core Version:    0.6.2
 */