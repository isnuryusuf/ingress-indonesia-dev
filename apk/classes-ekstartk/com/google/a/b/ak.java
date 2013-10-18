package com.google.a.b;

import com.google.a.a.an;
import com.google.a.a.bj;
import com.google.a.i.a.h;
import com.google.a.i.a.p;
import com.google.a.i.a.v;
import com.google.a.i.a.x;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.TimeUnit;

final class ak<K, V>
  implements bd<K, V>
{
  volatile bd<K, V> a;
  final v<V> b = v.b();
  final bj c = new bj();

  public ak()
  {
    this(o.j());
  }

  public ak(bd<K, V> parambd)
  {
    this.a = parambd;
  }

  private static boolean a(v<?> paramv, Throwable paramThrowable)
  {
    try
    {
      boolean bool = paramv.a(paramThrowable);
      return bool;
    }
    catch (Error localError)
    {
    }
    return false;
  }

  public final int a()
  {
    return this.a.a();
  }

  public final bd<K, V> a(ReferenceQueue<V> paramReferenceQueue, V paramV, ap<K, V> paramap)
  {
    return this;
  }

  public final p<V> a(K paramK, k<? super K, V> paramk)
  {
    this.c.a();
    Object localObject1 = this.a.get();
    if (localObject1 == null);
    try
    {
      Object localObject2 = paramk.a(paramK);
      if (b(localObject2))
        return this.b;
      return h.a(localObject2);
      an.a(paramK);
      an.a(localObject1);
      p localp1 = h.a(paramk.a(paramK));
      if (localp1 == null)
        return h.a(null);
      p localp2 = h.a(localp1, new al(this));
      return localp2;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof InterruptedException))
        Thread.currentThread().interrupt();
      if (a(localThrowable))
        return this.b;
      v localv = v.b();
      a(localv, localThrowable);
      return localv;
    }
  }

  public final void a(V paramV)
  {
    if (paramV != null)
    {
      b(paramV);
      return;
    }
    this.a = o.j();
  }

  public final boolean a(Throwable paramThrowable)
  {
    return a(this.b, paramThrowable);
  }

  public final ap<K, V> b()
  {
    return null;
  }

  public final boolean b(V paramV)
  {
    return this.b.a(paramV);
  }

  public final boolean c()
  {
    return true;
  }

  public final boolean d()
  {
    return this.a.d();
  }

  public final V e()
  {
    return x.a(this.b);
  }

  public final long f()
  {
    return this.c.a(TimeUnit.NANOSECONDS);
  }

  public final V get()
  {
    return this.a.get();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.ak
 * JD-Core Version:    0.6.2
 */