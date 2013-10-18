package com.nianticproject.ingress.common.u;

import com.google.f.c;
import com.google.f.g;
import com.google.f.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class aw extends g<av, aw>
{
  private int a;
  private List<ax> b = Collections.emptyList();
  private List<Integer> c = Collections.emptyList();
  private List<Float> d = Collections.emptyList();
  private List<c> e = Collections.emptyList();
  private long f;
  private Object g = "";
  private at h = at.c();
  private int i;
  private boolean j;
  private boolean k;
  private float l;
  private float m;

  private aw e()
  {
    return new aw().a(f());
  }

  private av f()
  {
    int n = 1;
    av localav = new av('\000');
    int i1 = this.a;
    if ((0x1 & this.a) == n)
    {
      this.b = Collections.unmodifiableList(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    av.a(localav, this.b);
    if ((0x2 & this.a) == 2)
    {
      this.c = Collections.unmodifiableList(this.c);
      this.a = (0xFFFFFFFD & this.a);
    }
    av.b(localav, this.c);
    if ((0x4 & this.a) == 4)
    {
      this.d = Collections.unmodifiableList(this.d);
      this.a = (0xFFFFFFFB & this.a);
    }
    av.c(localav, this.d);
    if ((0x8 & this.a) == 8)
    {
      this.e = Collections.unmodifiableList(this.e);
      this.a = (0xFFFFFFF7 & this.a);
    }
    av.d(localav, this.e);
    if ((i1 & 0x10) == 16);
    while (true)
    {
      av.a(localav, this.f);
      if ((i1 & 0x20) == 32)
        n |= 2;
      av.a(localav, this.g);
      if ((i1 & 0x40) == 64)
        n |= 4;
      av.a(localav, this.h);
      if ((i1 & 0x80) == 128)
        n |= 8;
      av.a(localav, this.i);
      if ((i1 & 0x100) == 256)
        n |= 16;
      av.a(localav, this.j);
      if ((i1 & 0x200) == 512)
        n |= 32;
      av.b(localav, this.k);
      if ((i1 & 0x400) == 1024)
        n |= 64;
      av.a(localav, this.l);
      if ((i1 & 0x800) == 2048)
        n |= 128;
      av.b(localav, this.m);
      av.b(localav, n);
      return localav;
      n = 0;
    }
  }

  private void g()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private void h()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new ArrayList(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private void i()
  {
    if ((0x4 & this.a) != 4)
    {
      this.d = new ArrayList(this.d);
      this.a = (0x4 | this.a);
    }
  }

  private void j()
  {
    if ((0x8 & this.a) != 8)
    {
      this.e = new ArrayList(this.e);
      this.a = (0x8 | this.a);
    }
  }

  public final aw a(float paramFloat)
  {
    i();
    this.d.add(Float.valueOf(paramFloat));
    return this;
  }

  public final aw a(int paramInt)
  {
    h();
    this.c.add(Integer.valueOf(paramInt));
    return this;
  }

  public final aw a(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    return this;
  }

  public final aw a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    j();
    this.e.add(paramc);
    return this;
  }

  public final aw a(at paramat)
  {
    if (paramat == null)
      throw new NullPointerException();
    this.h = paramat;
    this.a = (0x40 | this.a);
    return this;
  }

  public final aw a(av paramav)
  {
    if (paramav == av.c())
      return this;
    label52: label95: at localat;
    if (!av.a(paramav).isEmpty())
    {
      if (this.b.isEmpty())
      {
        this.b = av.a(paramav);
        this.a = (0xFFFFFFFE & this.a);
      }
    }
    else
    {
      if (!av.b(paramav).isEmpty())
      {
        if (!this.c.isEmpty())
          break label381;
        this.c = av.b(paramav);
        this.a = (0xFFFFFFFD & this.a);
      }
      if (!av.c(paramav).isEmpty())
      {
        if (!this.d.isEmpty())
          break label402;
        this.d = av.c(paramav);
        this.a = (0xFFFFFFFB & this.a);
      }
      label138: if (!av.d(paramav).isEmpty())
      {
        if (!this.e.isEmpty())
          break label423;
        this.e = av.d(paramav);
        this.a = (0xFFFFFFF7 & this.a);
      }
      label181: if (paramav.d())
        a(paramav.e());
      if (paramav.f())
        a(paramav.g());
      if (paramav.h())
      {
        localat = paramav.i();
        if (((0x40 & this.a) != 64) || (this.h == at.c()))
          break label444;
      }
    }
    label402: label423: label444: for (this.h = at.a(this.h).a(localat).d(); ; this.h = localat)
    {
      this.a = (0x40 | this.a);
      if (paramav.j())
        b(paramav.k());
      if (paramav.l())
        a(paramav.m());
      if (paramav.n())
        b(paramav.o());
      if (paramav.p())
        b(paramav.q());
      if (!paramav.r())
        break;
      c(paramav.s());
      return this;
      g();
      this.b.addAll(av.a(paramav));
      break label52;
      label381: h();
      this.c.addAll(av.b(paramav));
      break label95;
      i();
      this.d.addAll(av.c(paramav));
      break label138;
      j();
      this.e.addAll(av.d(paramav));
      break label181;
    }
  }

  public final aw a(ax paramax)
  {
    if (paramax == null)
      throw new NullPointerException();
    g();
    this.b.add(paramax);
    return this;
  }

  public final aw a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public final aw a(boolean paramBoolean)
  {
    this.a = (0x100 | this.a);
    this.j = paramBoolean;
    return this;
  }

  public final aw b(float paramFloat)
  {
    this.a = (0x400 | this.a);
    this.l = paramFloat;
    return this;
  }

  public final aw b(int paramInt)
  {
    this.a = (0x80 | this.a);
    this.i = paramInt;
    return this;
  }

  public final aw b(boolean paramBoolean)
  {
    this.a = (0x200 | this.a);
    this.k = paramBoolean;
    return this;
  }

  public final av c()
  {
    av localav = f();
    if (!localav.t())
      throw new k();
    return localav;
  }

  public final aw c(float paramFloat)
  {
    this.a = (0x800 | this.a);
    this.m = paramFloat;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.aw
 * JD-Core Version:    0.6.2
 */