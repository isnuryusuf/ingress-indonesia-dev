package com.google.a.c;

import java.util.AbstractQueue;
import java.util.Iterator;

final class fx<K, V> extends AbstractQueue<gh<K, V>>
{
  final gh<K, V> a = new fy(this);

  private gh<K, V> a()
  {
    gh localgh = this.a.h();
    if (localgh == this.a)
      localgh = null;
    return localgh;
  }

  public final void clear()
  {
    gh localgh;
    for (Object localObject = this.a.h(); localObject != this.a; localObject = localgh)
    {
      localgh = ((gh)localObject).h();
      fi.e((gh)localObject);
    }
    this.a.c(this.a);
    this.a.d(this.a);
  }

  public final boolean contains(Object paramObject)
  {
    return ((gh)paramObject).h() != gg.a;
  }

  public final boolean isEmpty()
  {
    return this.a.h() == this.a;
  }

  public final Iterator<gh<K, V>> iterator()
  {
    return new fz(this, a());
  }

  public final boolean remove(Object paramObject)
  {
    gh localgh1 = (gh)paramObject;
    gh localgh2 = localgh1.i();
    gh localgh3 = localgh1.h();
    fi.b(localgh2, localgh3);
    fi.e(localgh1);
    return localgh3 != gg.a;
  }

  public final int size()
  {
    int i = 0;
    for (gh localgh = this.a.h(); localgh != this.a; localgh = localgh.h())
      i++;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.fx
 * JD-Core Version:    0.6.2
 */