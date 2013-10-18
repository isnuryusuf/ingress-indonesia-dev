package com.google.a.b;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

class bi<K, V> extends WeakReference<V>
  implements bd<K, V>
{
  final ap<K, V> a;

  bi(ReferenceQueue<V> paramReferenceQueue, V paramV, ap<K, V> paramap)
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
    return new bi(paramReferenceQueue, paramV, paramap);
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
 * Qualified Name:     com.google.a.b.bi
 * JD-Core Version:    0.6.2
 */