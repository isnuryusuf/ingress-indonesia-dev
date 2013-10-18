package com.google.a.b;

import java.util.AbstractQueue;
import java.util.Iterator;

final class t<K, V> extends AbstractQueue<ap<K, V>>
{
  final ap<K, V> a = new u(this);

  private ap<K, V> a()
  {
    ap localap = this.a.f();
    if (localap == this.a)
      localap = null;
    return localap;
  }

  public final void clear()
  {
    ap localap;
    for (Object localObject = this.a.f(); localObject != this.a; localObject = localap)
    {
      localap = ((ap)localObject).f();
      o.b((ap)localObject);
    }
    this.a.a(this.a);
    this.a.b(this.a);
  }

  public final boolean contains(Object paramObject)
  {
    return ((ap)paramObject).f() != ao.a;
  }

  public final boolean isEmpty()
  {
    return this.a.f() == this.a;
  }

  public final Iterator<ap<K, V>> iterator()
  {
    return new v(this, a());
  }

  public final boolean remove(Object paramObject)
  {
    ap localap1 = (ap)paramObject;
    ap localap2 = localap1.g();
    ap localap3 = localap1.f();
    o.a(localap2, localap3);
    o.b(localap1);
    return localap3 != ao.a;
  }

  public final int size()
  {
    int i = 0;
    for (ap localap = this.a.f(); localap != this.a; localap = localap.f())
      i++;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.t
 * JD-Core Version:    0.6.2
 */