package com.google.a.b;

import com.google.a.a.an;
import com.google.a.a.bs;
import com.google.a.a.bw;
import com.google.a.a.x;
import com.google.a.h.a;
import com.google.a.i.a.r;
import com.google.a.i.a.s;
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

class o<K, V> extends AbstractMap<K, V>
  implements ConcurrentMap<K, V>
{
  static final Logger a = Logger.getLogger(o.class.getName());
  static final r b = s.a();
  static final bd<Object, Object> v = new p();
  static final Queue<? extends Object> w = new q();
  final int c;
  final int d;
  final aq<K, V>[] e;
  final int f;
  final x<Object> g;
  final x<Object> h;
  final at i;
  final at j;
  final long k;
  final ck<K, V> l;
  final long m;
  final long n;
  final long o;
  final Queue<ce<K, V>> p;
  final cd<K, V> q;
  final bw r;
  final w s;
  final c t;
  final k<? super K, V> u;
  Set<K> x;
  Collection<V> y;
  Set<Map.Entry<K, V>> z;

  o(e<? super K, ? super V> parame, k<? super K, V> paramk)
  {
    this.f = Math.min(parame.e(), 65536);
    this.i = parame.i();
    this.j = parame.j();
    this.g = parame.b();
    this.h = parame.c();
    this.k = parame.g();
    this.l = parame.h();
    this.m = parame.l();
    this.n = parame.k();
    this.o = parame.m();
    this.q = parame.n();
    Object localObject;
    boolean bool1;
    label133: at localat;
    boolean bool2;
    if (this.q == i.a)
    {
      localObject = w;
      this.p = ((Queue)localObject);
      if ((!f()) && (!o()))
        break label313;
      bool1 = true;
      this.r = parame.a(bool1);
      localat = this.i;
      if ((!d()) && (!o()))
        break label319;
      bool2 = true;
      label166: if ((!n()) && (!f()))
        break label325;
    }
    int i1;
    int i2;
    int i3;
    label313: label319: label325: for (boolean bool3 = true; ; bool3 = false)
    {
      this.s = w.a(localat, bool2, bool3);
      this.t = ((c)parame.o().a());
      this.u = paramk;
      i1 = Math.min(parame.d(), 1073741824);
      if ((a()) && (!b()))
        i1 = Math.min(i1, (int)this.k);
      i2 = 1;
      i3 = 0;
      while ((i2 < this.f) && ((!a()) || (i2 * 20 <= this.k)))
      {
        i3++;
        i2 <<= 1;
      }
      localObject = new ConcurrentLinkedQueue();
      break;
      bool1 = false;
      break label133;
      bool2 = false;
      break label166;
    }
    this.d = (32 - i3);
    this.c = (i2 - 1);
    this.e = new aq[i2];
    int i4 = i1 / i2;
    if (i4 * i2 < i1);
    for (int i5 = i4 + 1; ; i5 = i4)
    {
      int i6 = 1;
      while (i6 < i5)
        i6 <<= 1;
      boolean bool4 = a();
      int i7 = 0;
      if (bool4)
      {
        long l1 = 1L + this.k / i2;
        long l2 = this.k % i2;
        long l3 = l1;
        while (i7 < this.e.length)
        {
          if (i7 == l2)
            l3 -= 1L;
          this.e[i7] = a(i6, l3, (c)parame.o().a());
          i7++;
        }
      }
      while (i7 < this.e.length)
      {
        this.e[i7] = a(i6, -1L, (c)parame.o().a());
        i7++;
      }
      return;
    }
  }

  private aq<K, V> a(int paramInt)
  {
    return this.e[(paramInt >>> this.d & this.c)];
  }

  private aq<K, V> a(int paramInt, long paramLong, c paramc)
  {
    return new aq(this, paramInt, paramLong, paramc);
  }

  static <K, V> void a(ap<K, V> paramap1, ap<K, V> paramap2)
  {
    paramap1.a(paramap2);
    paramap2.b(paramap1);
  }

  static <K, V> void b(ap<K, V> paramap)
  {
    ao localao = ao.a;
    paramap.a(localao);
    paramap.b(localao);
  }

  static <K, V> void b(ap<K, V> paramap1, ap<K, V> paramap2)
  {
    paramap1.c(paramap2);
    paramap2.d(paramap1);
  }

  private int c(Object paramObject)
  {
    int i1 = this.g.a(paramObject);
    int i2 = i1 + (0xFFFFCD7D ^ i1 << 15);
    int i3 = i2 ^ i2 >>> 10;
    int i4 = i3 + (i3 << 3);
    int i5 = i4 ^ i4 >>> 6;
    int i6 = i5 + ((i5 << 2) + (i5 << 14));
    return i6 ^ i6 >>> 16;
  }

  static <K, V> void c(ap<K, V> paramap)
  {
    ao localao = ao.a;
    paramap.c(localao);
    paramap.d(localao);
  }

  static <K, V> bd<K, V> j()
  {
    return v;
  }

  static <K, V> ap<K, V> k()
  {
    return ao.a;
  }

  static <E> Queue<E> l()
  {
    return w;
  }

  private boolean n()
  {
    return this.n > 0L;
  }

  private boolean o()
  {
    return this.m > 0L;
  }

  final V a(ap<K, V> paramap, long paramLong)
  {
    if (paramap.d() == null);
    Object localObject;
    do
    {
      return null;
      localObject = paramap.a().get();
    }
    while ((localObject == null) || (b(paramap, paramLong)));
    return localObject;
  }

  public final V a(Object paramObject)
  {
    int i1 = c(an.a(paramObject));
    Object localObject = a(i1).a(paramObject, i1);
    if (localObject == null)
    {
      this.t.b();
      return localObject;
    }
    this.t.a();
    return localObject;
  }

  final void a(ap<K, V> paramap)
  {
    int i1 = paramap.c();
    a(i1).a(paramap, i1);
  }

  final void a(bd<K, V> parambd)
  {
    ap localap = parambd.b();
    int i1 = localap.c();
    a(i1).a(localap.d(), i1, parambd);
  }

  final boolean a()
  {
    return this.k >= 0L;
  }

  final V b(K paramK)
  {
    k localk = this.u;
    int i1 = c(an.a(paramK));
    return a(i1).a(paramK, i1, localk);
  }

  final boolean b()
  {
    return this.l != j.a;
  }

  final boolean b(ap<K, V> paramap, long paramLong)
  {
    an.a(paramap);
    if ((o()) && (paramLong - paramap.e() >= this.m));
    while ((n()) && (paramLong - paramap.h() >= this.n))
      return true;
    return false;
  }

  final boolean c()
  {
    return this.o > 0L;
  }

  public void clear()
  {
    aq[] arrayOfaq = this.e;
    int i1 = arrayOfaq.length;
    for (int i2 = 0; i2 < i1; i2++)
      arrayOfaq[i2].a();
  }

  public boolean containsKey(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i1 = c(paramObject);
    return a(i1).b(paramObject, i1);
  }

  public boolean containsValue(Object paramObject)
  {
    if (paramObject == null)
      return false;
    long l1 = this.r.a();
    aq[] arrayOfaq = this.e;
    int i1 = 0;
    long l3;
    for (long l2 = -1L; i1 < 3; l2 = l3)
    {
      int i2 = arrayOfaq.length;
      l3 = 0L;
      for (int i3 = 0; i3 < i2; i3++)
      {
        aq localaq = arrayOfaq[i3];
        AtomicReferenceArray localAtomicReferenceArray = localaq.f;
        for (int i4 = 0; i4 < localAtomicReferenceArray.length(); i4++)
          for (ap localap = (ap)localAtomicReferenceArray.get(i4); localap != null; localap = localap.b())
          {
            Object localObject = localaq.a(localap, l1);
            if ((localObject != null) && (this.h.a(paramObject, localObject)))
              return true;
          }
        l3 += localaq.d;
      }
      if (l3 == l2)
        break;
      i1++;
    }
    return false;
  }

  final boolean d()
  {
    return (o()) || (a());
  }

  final boolean e()
  {
    return n();
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = this.z;
    if (localSet != null)
      return localSet;
    ag localag = new ag(this, this);
    this.z = localag;
    return localag;
  }

  final boolean f()
  {
    return (n()) || (c());
  }

  final boolean g()
  {
    return o();
  }

  public V get(Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i1 = c(paramObject);
    return a(i1).a(paramObject, i1);
  }

  final boolean h()
  {
    return this.i != at.a;
  }

  final boolean i()
  {
    return this.j != at.a;
  }

  public boolean isEmpty()
  {
    aq[] arrayOfaq = this.e;
    int i1 = 0;
    long l1 = 0L;
    if (i1 < arrayOfaq.length)
      if (arrayOfaq[i1].b == 0);
    label85: 
    do
    {
      return false;
      l1 += arrayOfaq[i1].d;
      i1++;
      break;
      if (l1 == 0L)
        break label91;
      for (int i2 = 0; ; i2++)
      {
        if (i2 >= arrayOfaq.length)
          break label85;
        if (arrayOfaq[i2].b != 0)
          break;
        l1 -= arrayOfaq[i2].d;
      }
    }
    while (l1 != 0L);
    label91: return true;
  }

  public Set<K> keySet()
  {
    Set localSet = this.x;
    if (localSet != null)
      return localSet;
    aj localaj = new aj(this, this);
    this.x = localaj;
    return localaj;
  }

  final void m()
  {
    while (true)
    {
      ce localce = (ce)this.p.poll();
      if (localce == null)
        break;
      try
      {
        this.q.a(localce);
      }
      catch (Throwable localThrowable)
      {
        a.log(Level.WARNING, "Exception thrown by removal listener", localThrowable);
      }
    }
  }

  public V put(K paramK, V paramV)
  {
    an.a(paramK);
    an.a(paramV);
    int i1 = c(paramK);
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
    int i1 = c(paramK);
    return a(i1).a(paramK, i1, paramV, true);
  }

  public V remove(Object paramObject)
  {
    if (paramObject == null)
      return null;
    int i1 = c(paramObject);
    return a(i1).c(paramObject, i1);
  }

  public boolean remove(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      return false;
    int i1 = c(paramObject1);
    return a(i1).b(paramObject1, i1, paramObject2);
  }

  public V replace(K paramK, V paramV)
  {
    an.a(paramK);
    an.a(paramV);
    int i1 = c(paramK);
    return a(i1).a(paramK, i1, paramV);
  }

  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    an.a(paramK);
    an.a(paramV2);
    if (paramV1 == null)
      return false;
    int i1 = c(paramK);
    return a(i1).a(paramK, i1, paramV1, paramV2);
  }

  public int size()
  {
    aq[] arrayOfaq = this.e;
    long l1 = 0L;
    for (int i1 = 0; i1 < arrayOfaq.length; i1++)
      l1 += arrayOfaq[i1].b;
    return a.a(l1);
  }

  public Collection<V> values()
  {
    Collection localCollection = this.y;
    if (localCollection != null)
      return localCollection;
    be localbe = new be(this, this);
    this.y = localbe;
    return localbe;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.o
 * JD-Core Version:    0.6.2
 */