package com.google.a.c;

import com.google.a.a.ag;
import com.google.a.a.ah;
import com.google.a.a.an;
import com.google.a.a.bw;
import com.google.a.a.e;
import com.google.a.a.x;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class ey extends bu<Object, Object>
{
  boolean b;
  int c = -1;
  int d = -1;
  int e = -1;
  gk f;
  gk g;
  long h = -1L;
  long i = -1L;
  fa j;
  x<Object> k;
  bw l;

  final int b()
  {
    if (this.c == -1)
      return 16;
    return this.c;
  }

  public final ey c()
  {
    if (this.d == -1);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.d);
      an.b(bool, "concurrency level was already set to %s", arrayOfObject);
      an.a(true);
      this.d = 4;
      return this;
    }
  }

  final int d()
  {
    if (this.d == -1)
      return 4;
    return this.d;
  }

  final gk e()
  {
    return (gk)ag.b(this.f, gk.a);
  }

  public final <K, V> ConcurrentMap<K, V> f()
  {
    if (!this.b)
      return new ConcurrentHashMap(b(), 0.75F, d());
    if (this.j == null)
      return new fi(this);
    return new ez(this);
  }

  public final String toString()
  {
    ah localah = ag.a(this);
    if (this.c != -1)
      localah.a("initialCapacity", this.c);
    if (this.d != -1)
      localah.a("concurrencyLevel", this.d);
    if (this.e != -1)
      localah.a("maximumSize", this.e);
    if (this.h != -1L)
      localah.a("expireAfterWrite", this.h + "ns");
    if (this.i != -1L)
      localah.a("expireAfterAccess", this.i + "ns");
    if (this.f != null)
      localah.a("keyStrength", e.a(this.f.toString()));
    if (this.g != null)
      localah.a("valueStrength", e.a(this.g.toString()));
    if (this.k != null)
      localah.a("keyEquivalence");
    if (this.a != null)
      localah.a("removalListener");
    return localah.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.c.ey
 * JD-Core Version:    0.6.2
 */