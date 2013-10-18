package com.google.a.d;

import com.google.a.a.an;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

public final class w
  implements ad, Comparable<w>
{
  private static final Logger a = Logger.getLogger(w.class.getCanonicalName());
  private l b;
  private Map<y, Integer> c;
  private final y[] d;
  private final int e;
  private int f;
  private v g;
  private boolean h;
  private int i;

  private strictfp w(i parami, v paramv)
  {
    this.g = paramv;
    this.e = 4;
    this.d = new y[this.e];
    this.c = null;
    this.b = null;
    this.i = 0;
    while (j < 4)
    {
      this.d[j] = parami.b(j);
      j++;
    }
    b();
    a();
  }

  public strictfp w(List<y> paramList)
  {
    this.e = paramList.size();
    this.d = new y[this.e];
    this.g = v.a();
    this.i = 0;
    paramList.toArray(this.d);
    b();
    c();
    a();
  }

  private strictfp int a(w paramw, t paramt)
  {
    n localn = b(paramw.e);
    int j = 1;
    int k = 0;
    while (k < paramw.e)
    {
      p localp = new p(paramw.a(k), paramw.a(k + 1), a(0));
      localn.a(paramw.a(k), paramw.a(k + 1));
      int m = j;
      int i1;
      for (int n = -2; localn.b(); n = i1)
      {
        i1 = localn.a();
        if (n != i1 - 1)
          localp.a(a(i1));
        int i2 = localp.b(a(i1 + 1));
        if (i2 >= 0)
        {
          if (i2 > 0)
            m = -1;
          do
          {
            return m;
            if (!a(i1 + 1).f(paramw.a(k + 1)))
              break;
            m = Math.min(m, paramt.a(a(i1), a(i1 + 1), a(i1 + 2), paramw.a(k), paramw.a(k + 2)));
          }
          while (m < 0);
        }
        localn.c();
      }
      k++;
      j = m;
    }
    return j;
  }

  private strictfp void a()
  {
    int j = 0;
    for (int k = 1; k < this.e; k++)
      if (a(k).h(a(j)) < 0)
        j = k;
    this.f = j;
  }

  private strictfp boolean a(y paramy)
  {
    if (!this.g.a(paramy))
      return false;
    boolean bool1 = this.h;
    y localy = f.a();
    p localp = new p(localy, paramy, this.d[(-1 + this.e)]);
    int j = this.e;
    int k = 0;
    if (j < 2000)
      while (k < this.e)
      {
        bool1 ^= localp.c(this.d[k]);
        k++;
      }
    n localn = b(this.e);
    int m = -2;
    localn.a(localy, paramy);
    boolean bool2 = bool1;
    while (localn.b())
    {
      int n = localn.a();
      if (m != n - 1)
        localp.a(this.d[n]);
      boolean bool3 = bool2 ^ localp.c(a(n + 1));
      localn.c();
      bool2 = bool3;
      m = n;
    }
    bool1 = bool2;
    return bool1;
  }

  private strictfp int b(y paramy)
  {
    if (this.c == null)
    {
      this.c = new HashMap();
      for (int j = 1; j <= this.e; j++)
        this.c.put(a(j), Integer.valueOf(j));
    }
    Integer localInteger = (Integer)this.c.get(paramy);
    if (localInteger == null)
      return -1;
    return localInteger.intValue();
  }

  private final strictfp n b(int paramInt)
  {
    if (this.b == null)
      this.b = new x(this);
    this.b.a(paramInt);
    return new n(this.b);
  }

  private strictfp void b()
  {
    an.b(this.g.a(a(1)));
    this.h = false;
    if (f.b(f.a(a(1)), a(0), a(2), a(1)) != a(a(1)))
      this.h = true;
  }

  private strictfp void c()
  {
    q localq = new q();
    for (int j = 0; j <= this.e; j++)
      localq.a(a(j));
    v localv1 = localq.a();
    this.g = v.a();
    if (a(y.f));
    for (v localv2 = new v(new b(localv1.c().a(), 1.570796326794897D), e.b()); ; localv2 = localv1)
    {
      if ((localv2.d().e()) && (a(y.g)))
        localv2 = new v(new b(-1.570796326794897D, localv2.c().b()), localv2.d());
      this.g = localv2;
      return;
    }
  }

  public final strictfp y a(int paramInt)
  {
    try
    {
      y[] arrayOfy = this.d;
      if (paramInt >= this.d.length)
        paramInt -= this.d.length;
      y localy = arrayOfy[paramInt];
      return localy;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    throw new IllegalStateException("Invalid vertex index");
  }

  public final strictfp boolean a(i parami)
  {
    v localv = parami.c();
    if (!this.g.a(localv));
    w localw;
    do
    {
      return false;
      localw = new w(parami, localv);
    }
    while ((!this.g.a(localw.g)) || ((!a(localw.a(0))) && (b(localw.a(0)) < 0)) || (a(localw, new r()) <= 0) || ((this.g.c(localw.g).g()) && (localw.a(a(0))) && (localw.b(a(0)) < 0)));
    return true;
  }

  public final strictfp boolean b(i parami)
  {
    v localv = parami.c();
    if (!this.g.b(localv))
      return false;
    w localw1 = new w(parami, localv);
    while (localw1.g.b(this.g))
      if (this.g.d().g() > localw1.g.d().g())
      {
        w localw2 = localw1;
        localw1 = this;
        this = localw2;
      }
      else
      {
        if ((localw1.a(a(0))) && (localw1.b(a(0)) < 0))
          return true;
        if (localw1.a(this, new s()) < 0)
          return true;
        if ((this.g.a(localw1.g)) && (a(localw1.a(0))) && (b(localw1.a(0)) < 0))
          return true;
      }
    return false;
  }

  public final strictfp h f()
  {
    return this.g.f();
  }

  public final strictfp String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("S2Loop, ");
    localStringBuilder.append(this.d.length).append(" points. [");
    y[] arrayOfy = this.d;
    int j = arrayOfy.length;
    for (int k = 0; k < j; k++)
      localStringBuilder.append(arrayOfy[k].e()).append(" ");
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.w
 * JD-Core Version:    0.6.2
 */