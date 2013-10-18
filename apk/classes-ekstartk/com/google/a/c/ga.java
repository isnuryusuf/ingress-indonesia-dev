package com.google.a.c;

import java.util.AbstractQueue;
import java.util.Iterator;

final class ga<K, V> extends AbstractQueue<gh<K, V>>
{
  final gh<K, V> a = new gb(this);

  private gh<K, V> a()
  {
    gh localgh = this.a.f();
    if (localgh == this.a)
      localgh = null;
    return localgh;
  }

  public final void clear()
  {
    gh localgh;
    for (Object localObject = this.a.f(); localObject != this.a; localObject = localgh)
    {
      localgh = ((gh)localObject).f();
      fi.d((gh)localObject);
    }
    this.a.a(this.a);
    this.a.b(this.a);
  }

  public final boolean contains(Object paramObject)
  {
    return ((gh)paramObject).f() != gg.a;
  }

  public final boolean isEmpty()
  {
    return this.a.f() == this.a;
  }

  public final Iterator<gh<K, V>> iterator()
  {
    return new gc(this, a());
  }

  public final boolean remove(Object paramObject)
  {
    gh localgh1 = (gh)paramObject;
    gh localgh2 = localgh1.g();
    gh localgh3 = localgh1.f();
    fi.a(localgh2, localgh3);
    fi.d(localgh1);
    return localgh3 != gg.a;
  }

  public final int size()
  {
    int i = 0;
    for (gh localgh = this.a.f(); localgh != this.a; localgh = localgh.f())
      i++;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ga
 * JD-Core Version:    0.6.2
 */