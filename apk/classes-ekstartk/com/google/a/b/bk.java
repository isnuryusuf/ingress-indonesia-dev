package com.google.a.b;

import java.lang.ref.ReferenceQueue;

final class bk<K, V> extends as<K, V>
{
  final int b;

  bk(ReferenceQueue<V> paramReferenceQueue, V paramV, ap<K, V> paramap, int paramInt)
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
    return new bk(paramReferenceQueue, paramV, paramap, this.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bk
 * JD-Core Version:    0.6.2
 */