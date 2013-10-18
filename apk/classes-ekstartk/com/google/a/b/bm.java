package com.google.a.b;

import java.lang.ref.ReferenceQueue;

final class bm<K, V> extends bi<K, V>
{
  final int b;

  bm(ReferenceQueue<V> paramReferenceQueue, V paramV, ap<K, V> paramap, int paramInt)
  {
    super(paramReferenceQueue, paramV, paramap);
    this.b = paramInt;
  }

  public final int a()
  {
    return this.b;
  }

  public final bd<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, ap<K, V> paramap)
  {
    return new bm(paramReferenceQueue, paramV, paramap, this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bm
 * JD-Core Version:    0.6.2
 */