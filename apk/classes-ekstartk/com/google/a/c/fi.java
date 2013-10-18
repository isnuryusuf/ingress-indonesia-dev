package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.a.bw;
import com.google.a.a.x;
import com.google.a.h.a;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.logging.Level;
import java.util.logging.Logger;

class fi<K, V> extends AbstractMap<K, V>
  implements Serializable, ConcurrentMap<K, V>
{
  static final gu<Object, Object> p = new fj();
  static final Queue<? extends Object> q = new fk();
  private static final Logger u = Logger.getLogger(fi.class.getName());
  final transient int a;
  final transient int b;
  final transient gi<K, V>[] c;
  final int d;
  final x<Object> e;
  final x<Object> f;
  final gk g;
  final gk h;
  final int i;
  final long j;
  final long k;
  final Queue<fh<K, V>> l;
  final fg<K, V> m;
  final transient fm n;
  final bw o;
  transient Set<K> r;
  transient Collection<V> s;
  transient Set<Map.Entry<K, V>> t;

  fi(ey paramey)
  {
    this.d = Math.min(paramey.d(), 65536);
    this.g = paramey.e();
    this.h = ((gk)ag.b(paramey.g, gk.a));
    this.e = ((x)ag.b(paramey.k, paramey.e().a()));
    this.f = this.h.a();
    this.i = paramey.e;
    long l2;
    if (paramey.i == -1L)
    {
      l2 = l1;
      this.j = l2;
      if (paramey.h != -1L)
        break label272;
      label118: this.k = l1;
      this.n = fm.a(this.g, b(), a());
      this.o = ((bw)ag.b(paramey.l, bw.b()));
      this.m = paramey.a();
      if (this.m != bv.a)
        break label280;
    }
    int i2;
    int i3;
    int i4;
    label272: label280: for (Object localObject = q; ; localObject = new ConcurrentLinkedQueue())
    {
      this.l = ((Queue)localObject);
      i2 = Math.min(paramey.b(), 1073741824);
      if (a())
        i2 = Math.min(i2, this.i);
      i3 = i1;
      i4 = 0;
      while ((i3 < this.d) && ((!a()) || (i3 * 2 <= this.i)))
      {
        i4++;
        i3 <<= 1;
      }
      l2 = paramey.i;
      break;
      l1 = paramey.h;
      break label118;
    }
    this.b = (32 - i4);
    this.a = (i3 - 1);
    this.c = new gi[i3];
    int i5 = i2 / i3;
    int i6;
    if (i5 * i3 < i2)
      i6 = i5 + 1;
    while (true)
      if (i1 < i6)
      {
        i1 <<= 1;
      }
      else
      {
        boolean bool = a();
        int i7 = 0;
        if (bool)
        {
          int i8 = 1 + this.i / i3;
          int i9 = this.i % i3;
          while (i7 < this.c.length)
          {
            if (i7 == i9)
              i8--;
            this.c[i7] = a(i1, i8);
            i7++;
          }
        }
        while (i7 < this.c.length)
        {
          this.c[i7] = a(i1, -1);
          i7++;
        }
        return;
        i6 = i5;
      }
  }

  private int a(Object paramObject)
  {
    int i1 = this.e.a(paramObject);
    int i2 = i1 + (0xFFFFCD7D ^ i1 << 15);
    int i3 = i2 ^ i2 >>> 10;
    int i4 = i3 + (i3 << 3);
    int i5 = i4 ^ i4 >>> 6;
    int i6 = i5 + ((i5 << 2) + (i5 << 14));
    return i6 ^ i6 >>> 16;
  }

  private gi<K, V> a(int paramInt)
  {
    return this.c[(paramInt >>> this.b & this.a)];
  }

  private gi<K, V> a(int paramInt1, int paramInt2)
  {
    return new gi(this, paramInt1, paramInt2);
  }

  static <K, V> void a(gh<K, V> paramgh1, gh<K, V> paramgh2)
  {
    paramgh1.a(paramgh2);
    paramgh2.b(paramgh1);
  }

  static boolean a(gh<K, V> paramgh, long paramLong)
  {
    return paramLong - paramgh.e() > 0L;
  }

  static <K, V> void b(gh<K, V> paramgh1, gh<K, V> paramgh2)
  {
    paramgh1.c(paramgh2);
    paramgh2.d(paramgh1);
  }

  static <K, V> void d(gh<K, V> paramgh)
  {
    gg localgg = gg.a;
    paramgh.a(localgg);
    paramgh.b(localgg);
  }

  static <K, V> void e(gh<K, V> paramgh)
  {
    gg localgg = gg.a;
    paramgh.c(localgg);
    paramgh.d(localgg);
  }

  static <K, V> gu<K, V> f()
  {
    return p;
  }

  static <K, V> gh<K, V> g()
  {
    return gg.a;
  }

  static <E> Queue<E> h()
  {
    return q;
  }

  final void a(gh<K, V> paramgh)
  {
    int i1 = paramgh.c();
    a(i1).a(paramgh, i1);
  }

  final void a(gu<K, V> paramgu)
  {
    gh localgh = paramgu.a();
    int i1 = localgh.c();
    a(i1).a(localgh.d(), i1, paramgu);
  }

  final boolean a()
  {
    return this.i != -1;
  }

  final V b(gh<K, V> paramgh)
  {
    if (paramgh.d() == null);
    Object localObject;
    do
    {
      return null;
      localObject = paramgh.a().get();
    }
    while ((localObject == null) || ((b()) && (c(paramgh))));
    return localObject;
  }

  final boolean b()
  {
    if (this.k > 0L);
    for (int i1 = 1; ; i1 = 0)
    {
      boolean bool1;
      if (i1 == 0)
      {
        boolean bool2 = c();
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
  }

  final boolean c()
  {
    return this.j > 0L;
  }

  final boolean c(gh<K, V> paramgh)
  {
    return a(paramgh, this.o.a());
  }

  public void clear()
  {
    gi[] arrayOfgi = this.c;
    int i1 = arrayOfgi.length;
    for (int i2 = 0; i2 < i1; i2++)
      arrayOfgi[i2].a();
  }

  public boolean containsKey(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i1 = a(paramObject);
    return a(i1).b(paramObject, i1);
  }

  public boolean containsValue(Object paramObject)
  {
    if (paramObject == null)
      return false;
    gi[] arrayOfgi = this.c;
    int i1 = 0;
    long l2;
    for (long l1 = -1L; i1 < 3; l1 = l2)
    {
      int i2 = arrayOfgi.length;
      l2 = 0L;
      for (int i3 = 0; i3 < i2; i3++)
      {
        gi localgi = arrayOfgi[i3];
        AtomicReferenceArray localAtomicReferenceArray = localgi.e;
        for (int i4 = 0; i4 < localAtomicReferenceArray.length(); i4++)
          for (gh localgh = (gh)localAtomicReferenceArray.get(i4); localgh != null; localgh = localgh.b())
          {
            Object localObject = localgi.a(localgh);
            if ((localObject != null) && (this.f.a(paramObject, localObject)))
              return true;
          }
        l2 += localgi.c;
      }
      if (l2 == l1)
        break;
      i1++;
    }
    return false;
  }

  final boolean d()
  {
    return this.g != gk.a;
  }

  final boolean e()
  {
    return this.h != gk.a;
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = this.t;
    if (localSet != null)
      return localSet;
    fw localfw = new fw(this);
    this.t = localfw;
    return localfw;
  }

  public V get(Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i1 = a(paramObject);
    return a(i1).a(paramObject, i1);
  }

  final void i()
  {
    while ((fh)this.l.poll() != null)
      try
      {
      }
      catch (Exception localException)
      {
        u.log(Level.WARNING, "Exception thrown by removal listener", localException);
      }
  }

  public boolean isEmpty()
  {
    gi[] arrayOfgi = this.c;
    int i1 = 0;
    long l1 = 0L;
    if (i1 < arrayOfgi.length)
      if (arrayOfgi[i1].b == 0);
    label85: 
    do
    {
      return false;
      l1 += arrayOfgi[i1].c;
      i1++;
      break;
      if (l1 == 0L)
        break label91;
      for (int i2 = 0; ; i2++)
      {
        if (i2 >= arrayOfgi.length)
          break label85;
        if (arrayOfgi[i2].b != 0)
          break;
        l1 -= arrayOfgi[i2].c;
      }
    }
    while (l1 != 0L);
    label91: return true;
  }

  public Set<K> keySet()
  {
    Set localSet = this.r;
    if (localSet != null)
      return localSet;
    gf localgf = new gf(this);
    this.r = localgf;
    return localgf;
  }

  public V put(K paramK, V paramV)
  {
    an.a(paramK);
    an.a(paramV);
    int i1 = a(paramK);
    return a(i1).a(paramK, i1, paramV, false);
  }

  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }

  public V putIfAbsent(K paramK, V paramV)
  {
    an.a(paramK);
    an.a(paramV);
    int i1 = a(paramK);
    return a(i1).a(paramK, i1, paramV, true);
  }

  public V remove(Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i1 = a(paramObject);
    return a(i1).c(paramObject, i1);
  }

  public boolean remove(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      return false;
    int i1 = a(paramObject1);
    return a(i1).b(paramObject1, i1, paramObject2);
  }

  public V replace(K paramK, V paramV)
  {
    an.a(paramK);
    an.a(paramV);
    int i1 = a(paramK);
    return a(i1).a(paramK, i1, paramV);
  }

  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    an.a(paramK);
    an.a(paramV2);
    if (paramV1 == null)
      return false;
    int i1 = a(paramK);
    return a(i1).a(paramK, i1, paramV1, paramV2);
  }

  public int size()
  {
    gi[] arrayOfgi = this.c;
    long l1 = 0L;
    for (int i1 = 0; i1 < arrayOfgi.length; i1++)
      l1 += arrayOfgi[i1].b;
    return a.a(l1);
  }

  public Collection<V> values()
  {
    Collection localCollection = this.s;
    if (localCollection != null)
      return localCollection;
    gv localgv = new gv(this);
    this.s = localgv;
    return localgv;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.fi
 * JD-Core Version:    0.6.2
 */