package com.nianticproject.ingress.common.u;

import com.google.f.g;
import com.google.f.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ay extends g<ax, ay>
{
  private int a;
  private Object b = "";
  private long c;
  private float d;
  private float e;
  private List<Float> f = Collections.emptyList();
  private float g;
  private float h;
  private float i;
  private float j;
  private float k;
  private float l;
  private int m;

  private ay e()
  {
    ay localay = new ay();
    ax localax = f();
    if (localax != ax.c())
    {
      if (localax.d())
        localay.a(localax.e());
      if (localax.f())
        localay.a(localax.g());
      if (localax.h())
        localay.a(localax.i());
      if (localax.j())
        localay.b(localax.k());
      if (!ax.a(localax).isEmpty())
      {
        if (!localay.f.isEmpty())
          break label241;
        localay.f = ax.a(localax);
        localay.a = (0xFFFFFFEF & localay.a);
      }
    }
    while (true)
    {
      if (localax.l())
        localay.d(localax.m());
      if (localax.n())
        localay.e(localax.o());
      if (localax.p())
        localay.f(localax.q());
      if (localax.r())
        localay.g(localax.s());
      if (localax.t())
        localay.h(localax.u());
      if (localax.v())
        localay.i(localax.w());
      if (localax.x())
        localay.a(localax.y());
      return localay;
      label241: localay.g();
      localay.f.addAll(ax.a(localax));
    }
  }

  private ax f()
  {
    int n = 1;
    ax localax = new ax('\000');
    int i1 = this.a;
    if ((i1 & 0x1) == n);
    while (true)
    {
      ax.a(localax, this.b);
      if ((i1 & 0x2) == 2)
        n |= 2;
      ax.a(localax, this.c);
      if ((i1 & 0x4) == 4)
        n |= 4;
      ax.a(localax, this.d);
      if ((i1 & 0x8) == 8)
        n |= 8;
      ax.b(localax, this.e);
      if ((0x10 & this.a) == 16)
      {
        this.f = Collections.unmodifiableList(this.f);
        this.a = (0xFFFFFFEF & this.a);
      }
      ax.a(localax, this.f);
      if ((i1 & 0x20) == 32)
        n |= 16;
      ax.c(localax, this.g);
      if ((i1 & 0x40) == 64)
        n |= 32;
      ax.d(localax, this.h);
      if ((i1 & 0x80) == 128)
        n |= 64;
      ax.e(localax, this.i);
      if ((i1 & 0x100) == 256)
        n |= 128;
      ax.f(localax, this.j);
      if ((i1 & 0x200) == 512)
        n |= 256;
      ax.g(localax, this.k);
      if ((i1 & 0x400) == 1024)
        n |= 512;
      ax.h(localax, this.l);
      if ((i1 & 0x800) == 2048)
        n |= 1024;
      ax.a(localax, this.m);
      ax.b(localax, n);
      return localax;
      n = 0;
    }
  }

  private void g()
  {
    if ((0x10 & this.a) != 16)
    {
      this.f = new ArrayList(this.f);
      this.a = (0x10 | this.a);
    }
  }

  public final ay a(float paramFloat)
  {
    this.a = (0x4 | this.a);
    this.d = paramFloat;
    return this;
  }

  public final ay a(int paramInt)
  {
    this.a = (0x800 | this.a);
    this.m = paramInt;
    return this;
  }

  public final ay a(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    return this;
  }

  public final ay a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public final ay b(float paramFloat)
  {
    this.a = (0x8 | this.a);
    this.e = paramFloat;
    return this;
  }

  public final ax c()
  {
    ax localax = f();
    if (!localax.z())
      throw new k();
    return localax;
  }

  public final ay c(float paramFloat)
  {
    g();
    this.f.add(Float.valueOf(paramFloat));
    return this;
  }

  public final ay d(float paramFloat)
  {
    this.a = (0x20 | this.a);
    this.g = paramFloat;
    return this;
  }

  public final ay e(float paramFloat)
  {
    this.a = (0x40 | this.a);
    this.h = paramFloat;
    return this;
  }

  public final ay f(float paramFloat)
  {
    this.a = (0x80 | this.a);
    this.i = paramFloat;
    return this;
  }

  public final ay g(float paramFloat)
  {
    this.a = (0x100 | this.a);
    this.j = paramFloat;
    return this;
  }

  public final ay h(float paramFloat)
  {
    this.a = (0x200 | this.a);
    this.k = paramFloat;
    return this;
  }

  public final ay i(float paramFloat)
  {
    this.a = (0x400 | this.a);
    this.l = paramFloat;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ay
 * JD-Core Version:    0.6.2
 */