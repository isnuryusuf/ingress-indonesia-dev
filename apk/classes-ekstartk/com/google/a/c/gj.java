package com.google.a.c;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

final class gj<K, V> extends SoftReference<V>
  implements gu<K, V>
{
  final gh<K, V> a;

  gj(ReferenceQueue<V> paramReferenceQueue, V paramV, gh<K, V> paramgh)
  {
    super(paramV, paramReferenceQueue);
    this.a = paramgh;
  }

  public final gh<K, V> a()
  {
    return this.a;
  }

  public final gu<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, gh<K, V> paramgh)
  {
    return new gj(paramReferenceQueue, paramV, paramgh);
  }

  public final void b()
  {
    clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.gj
 * JD-Core Version:    0.6.2
 */