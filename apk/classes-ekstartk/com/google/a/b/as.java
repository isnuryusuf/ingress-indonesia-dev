package com.google.a.b;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

class as<K, V> extends SoftReference<V>
  implements bd<K, V>
{
  final ap<K, V> a;

  as(ReferenceQueue<V> paramReferenceQueue, V paramV, ap<K, V> paramap)
  {
    super(paramV, paramReferenceQueue);
    this.a = paramap;
  }

  public int a()
  {
    return 1;
  }

  public bd<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, ap<K, V> paramap)
  {
    return new as(paramReferenceQueue, paramV, paramap);
  }

  public final void a(V paramV)
  {
  }

  public final ap<K, V> b()
  {
    return this.a;
  }

  public final boolean c()
  {
    return false;
  }

  public final boolean d()
  {
    return true;
  }

  public final V e()
  {
    return get();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.as
 * JD-Core Version:    0.6.2
 */