package com.nianticproject.ingress.common.u;

import com.google.f.c;
import com.google.f.d;
import com.google.f.f;
import com.google.f.h;
import com.google.f.i;
import java.util.Collections;
import java.util.List;

public final class av extends f
{
  private static final av a;
  private int b;
  private List<ax> c;
  private List<Integer> d;
  private List<Float> e;
  private List<c> f;
  private long g;
  private Object h;
  private at i;
  private int j;
  private boolean k;
  private boolean l;
  private float m;
  private float n;
  private byte o = -1;
  private int p = -1;

  static
  {
    av localav = new av((byte)0);
    a = localav;
    localav.c = Collections.emptyList();
    localav.d = Collections.emptyList();
    localav.e = Collections.emptyList();
    localav.f = Collections.emptyList();
    localav.g = 0L;
    localav.h = "";
    localav.i = at.c();
    localav.j = 0;
    localav.k = false;
    localav.l = false;
    localav.m = 0.0F;
    localav.n = 0.0F;
  }

  private av()
  {
    super((byte)0);
  }

  private av(byte paramByte)
  {
  }

  public static av c()
  {
    return a;
  }

  public static aw u()
  {
    return aw.d();
  }

  private c w()
  {
    Object localObject = this.h;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.h = localc;
      return localc;
    }
    return (c)localObject;
  }

  public final void a(d paramd)
  {
    b();
    for (int i1 = 0; i1 < this.c.size(); i1++)
      paramd.a(1, (i)this.c.get(i1));
    for (int i2 = 0; i2 < this.d.size(); i2++)
      paramd.a(2, ((Integer)this.d.get(i2)).intValue());
    int i5;
    for (int i3 = 0; ; i3++)
    {
      int i4 = this.e.size();
      i5 = 0;
      if (i3 >= i4)
        break;
      paramd.a(3, ((Float)this.e.get(i3)).floatValue());
    }
    while (i5 < this.f.size())
    {
      paramd.a(4, (c)this.f.get(i5));
      i5++;
    }
    if ((0x1 & this.b) == 1)
      paramd.a(5, this.g);
    if ((0x2 & this.b) == 2)
      paramd.a(6, w());
    if ((0x4 & this.b) == 4)
      paramd.a(7, this.i);
    if ((0x8 & this.b) == 8)
      paramd.a(8, this.j);
    if ((0x10 & this.b) == 16)
      paramd.a(9, this.k);
    if ((0x20 & this.b) == 32)
      paramd.a(10, this.l);
    if ((0x40 & this.b) == 64)
      paramd.a(11, this.m);
    if ((0x80 & this.b) == 128)
      paramd.a(12, this.n);
  }

  public final int b()
  {
    int i1 = 0;
    int i2 = this.p;
    if (i2 != -1)
      return i2;
    int i3 = 0;
    int i4 = 0;
    while (i3 < this.c.size())
    {
      i4 += d.b(1, (i)this.c.get(i3));
      i3++;
    }
    int i5 = 0;
    int i6 = 0;
    while (i5 < this.d.size())
    {
      i6 += d.c(((Integer)this.d.get(i5)).intValue());
      i5++;
    }
    int i7 = i4 + i6 + 1 * this.d.size() + 4 * this.e.size() + 1 * this.e.size();
    int i10;
    for (int i8 = 0; i1 < this.f.size(); i8 = i10)
    {
      i10 = i8 + d.a((c)this.f.get(i1));
      i1++;
    }
    int i9 = i7 + i8 + 1 * this.f.size();
    if ((0x1 & this.b) == 1)
      i9 += d.b(5, this.g);
    if ((0x2 & this.b) == 2)
      i9 += d.b(6, w());
    if ((0x4 & this.b) == 4)
      i9 += d.b(7, this.i);
    if ((0x8 & this.b) == 8)
      i9 += d.b(8, this.j);
    if ((0x10 & this.b) == 16)
      i9 += d.b(9);
    if ((0x20 & this.b) == 32)
      i9 += d.b(10);
    if ((0x40 & this.b) == 64)
      i9 += d.a(11);
    if ((0x80 & this.b) == 128)
      i9 += d.a(12);
    this.p = i9;
    return i9;
  }

  public final boolean d()
  {
    return (0x1 & this.b) == 1;
  }

  public final long e()
  {
    return this.g;
  }

  public final boolean f()
  {
    return (0x2 & this.b) == 2;
  }

  public final String g()
  {
    Object localObject = this.h;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.h = str;
    return str;
  }

  public final boolean h()
  {
    return (0x4 & this.b) == 4;
  }

  public final at i()
  {
    return this.i;
  }

  public final boolean j()
  {
    return (0x8 & this.b) == 8;
  }

  public final int k()
  {
    return this.j;
  }

  public final boolean l()
  {
    return (0x10 & this.b) == 16;
  }

  public final boolean m()
  {
    return this.k;
  }

  public final boolean n()
  {
    return (0x20 & this.b) == 32;
  }

  public final boolean o()
  {
    return this.l;
  }

  public final boolean p()
  {
    return (0x40 & this.b) == 64;
  }

  public final float q()
  {
    return this.m;
  }

  public final boolean r()
  {
    return (0x80 & this.b) == 128;
  }

  public final float s()
  {
    return this.n;
  }

  public final boolean t()
  {
    int i1 = this.o;
    if (i1 != -1)
      return i1 == 1;
    this.o = 1;
    return true;
  }

  public final aw v()
  {
    return aw.d().a(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.av
 * JD-Core Version:    0.6.2
 */