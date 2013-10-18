package com.google.a.b;

import java.util.AbstractQueue;
import java.util.Iterator;

final class bn<K, V> extends AbstractQueue<ap<K, V>>
{
  final ap<K, V> a = new bo(this);

  private ap<K, V> a()
  {
    ap localap = this.a.i();
    if (localap == this.a)
      localap = null;
    return localap;
  }

  public final void clear()
  {
    ap localap;
    for (Object localObject = this.a.i(); localObject != this.a; localObject = localap)
    {
      localap = ((ap)localObject).i();
      o.c((ap)localObject);
    }
    this.a.c(this.a);
    this.a.d(this.a);
  }

  public final boolean contains(Object paramObject)
  {
    return ((ap)paramObject).i() != ao.a;
  }

  public final boolean isEmpty()
  {
    return this.a.i() == this.a;
  }

  public final Iterator<ap<K, V>> iterator()
  {
    return new bp(this, a());
  }

  public final boolean remove(Object paramObject)
  {
    ap localap1 = (ap)paramObject;
    ap localap2 = localap1.j();
    ap localap3 = localap1.i();
    o.b(localap2, localap3);
    o.c(localap1);
    return localap3 != ao.a;
  }

  public final int size()
  {
    int i = 0;
    for (ap localap = this.a.i(); localap != this.a; localap = localap.i())
      i++;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.bn
 * JD-Core Version:    0.6.2
 */