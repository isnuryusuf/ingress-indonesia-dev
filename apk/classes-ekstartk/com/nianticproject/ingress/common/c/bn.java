package com.nianticproject.ingress.common.c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public final class bn
  implements Cloneable, Iterator<bi>
{
  private final int a;
  private final int b;
  private final boolean c;
  private final int d;
  private final boolean e;
  private final boolean f;
  private final boolean g;
  private final boolean h;
  private final String i;
  private final List<bi> j;
  private float k;
  private float l;
  private boolean m;
  private int n = 0;
  private long o;
  private int p = 0;
  private int q = 0;

  private bn(float paramFloat1, float paramFloat2, boolean paramBoolean1, int paramInt, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, String paramString, bp parambp, bq parambq, Collection<bi> paramCollection)
  {
    this.k = paramFloat1;
    this.l = paramFloat2;
    this.c = paramBoolean1;
    this.e = paramBoolean2;
    this.f = paramBoolean3;
    this.d = paramInt;
    this.g = paramBoolean4;
    this.h = paramBoolean5;
    this.j = new ArrayList(paramCollection);
    this.i = paramString;
    this.a = parambp.a();
    this.b = parambq.a();
  }

  private bi a(boolean paramBoolean)
  {
    boolean bool = z();
    bi localbi;
    if (this.q < this.j.size())
    {
      localbi = (bi)this.j.get(this.q);
      if (paramBoolean)
        this.q = (1 + this.q);
    }
    do
    {
      do
      {
        int i1;
        int i2;
        do
        {
          return localbi;
          if (bool)
            break;
          i1 = 1 + this.n;
          i2 = this.d;
          localbi = null;
        }
        while (i1 >= i2);
        localbi = (bi)this.j.get(0);
      }
      while (!paramBoolean);
      this.q = 1;
    }
    while (bool);
    this.n = (1 + this.n);
    return localbi;
  }

  private String a(bi parambi)
  {
    if (this.i != null)
      return this.i;
    if (parambi != null)
      return parambi.b();
    return null;
  }

  private boolean z()
  {
    return this.d == -1;
  }

  public final bn a(float paramFloat1, float paramFloat2)
  {
    int i1 = 1;
    boolean bool = Math.abs(paramFloat1 - this.k) < 0.03F;
    int i2 = 0;
    if (bool)
    {
      this.k = paramFloat1;
      i2 = i1;
    }
    if (Math.abs(paramFloat2 - this.l) > 0.005F)
      this.l = paramFloat2;
    while (true)
    {
      if (i1 != 0)
        o.a().a(this, this.k, this.l);
      return this;
      i1 = i2;
    }
  }

  public final List<bi> a()
  {
    return this.j;
  }

  public final float b()
  {
    return this.k;
  }

  public final float c()
  {
    return this.l;
  }

  public final Object clone()
  {
    try
    {
      bn localbn = (bn)super.clone();
      return localbn;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new IllegalStateException(localCloneNotSupportedException);
    }
  }

  public final boolean d()
  {
    return this.c;
  }

  public final boolean e()
  {
    return this.e;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    bn localbn;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localbn = (bn)paramObject;
        if (this.c != localbn.c)
          return false;
        if (this.m != localbn.m)
          return false;
        if (this.f != localbn.f)
          return false;
        if (this.g != localbn.g)
          return false;
        if (this.i != null)
        {
          if (!this.i.equals(localbn.i))
            return false;
        }
        else if (localbn.i != null)
          return false;
        if (this.d != localbn.d)
          return false;
        if (this.j != null)
          break;
      }
      while (localbn.j == null);
      return false;
    }
    while (this.j.equals(localbn.j));
    return false;
  }

  public final boolean f()
  {
    return this.f;
  }

  public final boolean g()
  {
    return this.g;
  }

  public final boolean h()
  {
    return this.h;
  }

  public final boolean hasNext()
  {
    bi localbi = a(false);
    boolean bool = false;
    if (localbi != null)
      bool = true;
    return bool;
  }

  public final int hashCode()
  {
    int i1 = 1231;
    int i2 = 31 * (31 * (31 + this.a) + this.b);
    int i3;
    int i5;
    label58: int i7;
    label78: int i9;
    label98: label115: int i12;
    label134: int i13;
    int i14;
    if (this.c)
    {
      i3 = i1;
      int i4 = 31 * (31 * (i3 + i2) + this.d);
      if (!this.e)
        break label171;
      i5 = i1;
      int i6 = 31 * (i5 + i4);
      if (!this.f)
        break label179;
      i7 = i1;
      int i8 = 31 * (i7 + i6);
      if (!this.g)
        break label187;
      i9 = i1;
      int i10 = 31 * (i9 + i8);
      if (!this.h)
        break label195;
      int i11 = 31 * (i10 + i1);
      if (this.i != null)
        break label202;
      i12 = 0;
      i13 = 31 * (i12 + i11);
      List localList = this.j;
      i14 = 0;
      if (localList != null)
        break label214;
    }
    while (true)
    {
      return i13 + i14;
      i3 = 1237;
      break;
      label171: i5 = 1237;
      break label58;
      label179: i7 = 1237;
      break label78;
      label187: i9 = 1237;
      break label98;
      label195: i1 = 1237;
      break label115;
      label202: i12 = this.i.hashCode();
      break label134;
      label214: i14 = this.j.hashCode();
    }
  }

  public final String i()
  {
    return a(a(false));
  }

  public final boolean j()
  {
    return this.m;
  }

  public final void k()
  {
    this.m = false;
  }

  public final int l()
  {
    return this.a;
  }

  public final int m()
  {
    return this.b;
  }

  public final void n()
  {
    this.m = true;
    o.a().b(this);
  }

  public final void o()
  {
    o.a().c(this);
  }

  public final void p()
  {
    o.a().d(this);
  }

  public final void q()
  {
    this.q = 0;
    this.n = 0;
  }

  public final bi r()
  {
    return a(false);
  }

  public final void remove()
  {
    throw new IllegalStateException();
  }

  public final g s()
  {
    bi localbi = a(false);
    if (localbi != null)
      return localbi.a().a().a();
    return g.c;
  }

  public final long t()
  {
    return this.o;
  }

  public final String toString()
  {
    Formatter localFormatter = new Formatter();
    String str2;
    String str1;
    if (this.j.size() > 0)
    {
      bi localbi2 = (bi)this.j.get(0);
      if (localbi2 != null)
      {
        str2 = localbi2.a().toString();
        str1 = a(localbi2);
      }
    }
    while (true)
    {
      Object[] arrayOfObject1 = new Object[6];
      arrayOfObject1[0] = str2;
      arrayOfObject1[1] = Integer.valueOf(this.q);
      arrayOfObject1[2] = str1;
      arrayOfObject1[3] = Long.valueOf(System.currentTimeMillis() - this.o);
      arrayOfObject1[4] = Float.valueOf(this.k);
      arrayOfObject1[5] = Integer.valueOf(this.a);
      localFormatter.format("{firstClip=%s clipIndex=%d channel=%s aliveTime=%d volume=%.2f prioirty=%d", arrayOfObject1);
      Object[] arrayOfObject2 = new Object[6];
      arrayOfObject2[0] = Integer.valueOf(this.b);
      arrayOfObject2[1] = Boolean.valueOf(this.m);
      arrayOfObject2[2] = Boolean.valueOf(this.e);
      arrayOfObject2[3] = Boolean.valueOf(this.g);
      arrayOfObject2[4] = Boolean.valueOf(this.c);
      arrayOfObject2[5] = Boolean.valueOf(this.f);
      localFormatter.format(" timeout=%d expired=%s exclusive=%s layered=%s dampen=%s persistent=%s", arrayOfObject2);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Boolean.valueOf(z());
      localFormatter.format(" trackLooping=%s clips=", arrayOfObject3);
      int i1 = 0;
      if (i1 < this.j.size())
      {
        bi localbi1 = (bi)this.j.get(i1);
        if (localbi1.c());
        for (String str4 = " [%s]"; ; str4 = " %s")
        {
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = localbi1.a();
          localFormatter.format(str4, arrayOfObject4);
          i1++;
          break;
        }
      }
      localFormatter.format("}", new Object[0]);
      String str3 = localFormatter.toString();
      localFormatter.close();
      return str3;
      str1 = "unknown";
      str2 = "none";
    }
  }

  public final long u()
  {
    return this.p;
  }

  public final void v()
  {
    this.o = System.currentTimeMillis();
  }

  public final void w()
  {
    this.p = (1 + this.p);
  }

  public final void x()
  {
    this.p = 0;
  }

  public final bi y()
  {
    bi localbi = a(true);
    if (localbi == null)
      throw new NoSuchElementException();
    return localbi;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.bn
 * JD-Core Version:    0.6.2
 */