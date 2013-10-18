package com.google.a.b;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.google.a.a.bs;
import com.google.a.a.bt;
import com.google.a.a.bw;
import com.google.a.a.x;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class e<K, V>
{
  static final bs<? extends c> a = bt.a(new f());
  static final m b = new m();
  static final bs<c> c = new g();
  static final bw d = new h();
  private static final Logger u = Logger.getLogger(e.class.getName());
  boolean e = true;
  int f = -1;
  int g = -1;
  long h = -1L;
  long i = -1L;
  ck<? super K, ? super V> j;
  at k;
  at l;
  long m = -1L;
  long n = -1L;
  long o = -1L;
  x<Object> p;
  x<Object> q;
  cd<? super K, ? super V> r;
  bw s;
  bs<? extends c> t = a;

  public static e<Object, Object> a()
  {
    return new e();
  }

  final bw a(boolean paramBoolean)
  {
    if (this.s != null)
      return this.s;
    if (paramBoolean)
      return bw.b();
    return d;
  }

  public final <K1 extends K, V1 extends V> e<K1, V1> a(cd<? super K1, ? super V1> paramcd)
  {
    if (this.r == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      this.r = ((cd)an.a(paramcd));
      return this;
    }
  }

  public final <K1 extends K, V1 extends V> e<K1, V1> a(ck<? super K1, ? super V1> paramck)
  {
    boolean bool1;
    if (this.j == null)
    {
      bool1 = true;
      an.b(bool1);
      if (this.e)
        if (this.h != -1L)
          break label76;
    }
    label76: for (boolean bool2 = true; ; bool2 = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(this.h);
      an.b(bool2, "weigher can not be combined with maximum size", arrayOfObject);
      this.j = ((ck)an.a(paramck));
      return this;
      bool1 = false;
      break;
    }
  }

  public final <K1 extends K, V1 extends V> n<K1, V1> a(k<? super K1, V1> paramk)
  {
    boolean bool = true;
    if (this.j == null)
      if (this.i == -1L)
        an.b(bool, "maximumWeight requires weigher");
    while (true)
    {
      return new am(this, paramk);
      bool = false;
      break;
      if (this.e)
      {
        if (this.i != -1L);
        while (true)
        {
          an.b(bool, "weigher requires maximumWeight");
          break;
          bool = false;
        }
      }
      if (this.i == -1L)
        u.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
    }
  }

  final x<Object> b()
  {
    return (x)ag.b(this.p, i().a());
  }

  final x<Object> c()
  {
    return (x)ag.b(this.q, j().a());
  }

  final int d()
  {
    if (this.f == -1)
      return 16;
    return this.f;
  }

  final int e()
  {
    if (this.g == -1)
      return 4;
    return this.g;
  }

  public final e<K, V> f()
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (this.i == -1L)
    {
      bool2 = bool1;
      Object[] arrayOfObject1 = new Object[bool1];
      arrayOfObject1[0] = Long.valueOf(this.i);
      an.b(bool2, "maximum weight was already set to %s", arrayOfObject1);
      if (this.h != -1L)
        break label105;
      bool3 = bool1;
      label51: Object[] arrayOfObject2 = new Object[bool1];
      arrayOfObject2[0] = Long.valueOf(this.h);
      an.b(bool3, "maximum size was already set to %s", arrayOfObject2);
      this.i = 10485760L;
      if (10485760L < 0L)
        break label111;
    }
    while (true)
    {
      an.a(bool1, "maximum weight must not be negative");
      return this;
      bool2 = false;
      break;
      label105: bool3 = false;
      break label51;
      label111: bool1 = false;
    }
  }

  final long g()
  {
    if ((this.m == 0L) || (this.n == 0L))
      return 0L;
    if (this.j == null)
      return this.h;
    return this.i;
  }

  final <K1 extends K, V1 extends V> ck<K1, V1> h()
  {
    return (ck)ag.b(this.j, j.a);
  }

  final at i()
  {
    return (at)ag.b(this.k, at.a);
  }

  final at j()
  {
    return (at)ag.b(this.l, at.a);
  }

  final long k()
  {
    if (this.m == -1L)
      return 0L;
    return this.m;
  }

  final long l()
  {
    if (this.n == -1L)
      return 0L;
    return this.n;
  }

  final long m()
  {
    if (this.o == -1L)
      return 0L;
    return this.o;
  }

  final <K1 extends K, V1 extends V> cd<K1, V1> n()
  {
    return (cd)ag.b(this.r, i.a);
  }

  final bs<? extends c> o()
  {
    return this.t;
  }

  public final String toString()
  {
    ah localah = ag.a(this);
    if (this.f != -1)
      localah.a("initialCapacity", this.f);
    if (this.g != -1)
      localah.a("concurrencyLevel", this.g);
    if (this.h != -1L)
      localah.a("maximumSize", this.h);
    if (this.i != -1L)
      localah.a("maximumWeight", this.i);
    if (this.m != -1L)
      localah.a("expireAfterWrite", this.m + "ns");
    if (this.n != -1L)
      localah.a("expireAfterAccess", this.n + "ns");
    if (this.k != null)
      localah.a("keyStrength", com.google.a.a.e.a(this.k.toString()));
    if (this.l != null)
      localah.a("valueStrength", com.google.a.a.e.a(this.l.toString()));
    if (this.p != null)
      localah.a("keyEquivalence");
    if (this.q != null)
      localah.a("valueEquivalence");
    if (this.r != null)
      localah.a("removalListener");
    return localah.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.b.e
 * JD-Core Version:    0.6.2
 */