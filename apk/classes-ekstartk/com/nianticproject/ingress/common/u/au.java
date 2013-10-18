package com.nianticproject.ingress.common.u;

import com.google.f.g;
import com.google.f.k;

public final class au extends g<at, au>
{
  private int a;
  private boolean b;
  private Object c = "";
  private Object d = "";
  private Object e = "";
  private Object f = "";
  private Object g = "";
  private Object h = "";
  private Object i = "";
  private Object j = "";
  private Object k = "";
  private Object l = "";
  private Object m = "";
  private Object n = "";
  private Object o = "";

  private au f()
  {
    return new au().a(d());
  }

  public final au a(at paramat)
  {
    if (paramat == at.c());
    do
    {
      return this;
      if (paramat.d())
        a(paramat.e());
      if (paramat.f())
        a(paramat.g());
      if (paramat.h())
        b(paramat.i());
      if (paramat.j())
        c(paramat.k());
      if (paramat.l())
        d(paramat.m());
      if (paramat.n())
        e(paramat.o());
      if (paramat.p())
        f(paramat.q());
      if (paramat.r())
        g(paramat.s());
      if (paramat.t())
        h(paramat.u());
      if (paramat.v())
        i(paramat.w());
      if (paramat.x())
        j(paramat.y());
      if (paramat.z())
        k(paramat.A());
      if (paramat.B())
        l(paramat.C());
    }
    while (!paramat.D());
    m(paramat.E());
    return this;
  }

  public final au a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public final au a(boolean paramBoolean)
  {
    this.a = (0x1 | this.a);
    this.b = paramBoolean;
    return this;
  }

  public final au b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public final at c()
  {
    at localat = d();
    if (!localat.F())
      throw new k();
    return localat;
  }

  public final au c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public final at d()
  {
    int i1 = 1;
    at localat = new at('\000');
    int i2 = this.a;
    if ((i2 & 0x1) == i1);
    while (true)
    {
      at.a(localat, this.b);
      if ((i2 & 0x2) == 2)
        i1 |= 2;
      at.a(localat, this.c);
      if ((i2 & 0x4) == 4)
        i1 |= 4;
      at.b(localat, this.d);
      if ((i2 & 0x8) == 8)
        i1 |= 8;
      at.c(localat, this.e);
      if ((i2 & 0x10) == 16)
        i1 |= 16;
      at.d(localat, this.f);
      if ((i2 & 0x20) == 32)
        i1 |= 32;
      at.e(localat, this.g);
      if ((i2 & 0x40) == 64)
        i1 |= 64;
      at.f(localat, this.h);
      if ((i2 & 0x80) == 128)
        i1 |= 128;
      at.g(localat, this.i);
      if ((i2 & 0x100) == 256)
        i1 |= 256;
      at.h(localat, this.j);
      if ((i2 & 0x200) == 512)
        i1 |= 512;
      at.i(localat, this.k);
      if ((i2 & 0x400) == 1024)
        i1 |= 1024;
      at.j(localat, this.l);
      if ((i2 & 0x800) == 2048)
        i1 |= 2048;
      at.k(localat, this.m);
      if ((i2 & 0x1000) == 4096)
        i1 |= 4096;
      at.l(localat, this.n);
      if ((i2 & 0x2000) == 8192)
        i1 |= 8192;
      at.m(localat, this.o);
      at.a(localat, i1);
      return localat;
      i1 = 0;
    }
  }

  public final au d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    return this;
  }

  public final au e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public final au f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    return this;
  }

  public final au g(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramString;
    return this;
  }

  public final au h(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramString;
    return this;
  }

  public final au i(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramString;
    return this;
  }

  public final au j(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x400 | this.a);
    this.l = paramString;
    return this;
  }

  public final au k(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x800 | this.a);
    this.m = paramString;
    return this;
  }

  public final au l(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1000 | this.a);
    this.n = paramString;
    return this;
  }

  public final au m(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2000 | this.a);
    this.o = paramString;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.au
 * JD-Core Version:    0.6.2
 */