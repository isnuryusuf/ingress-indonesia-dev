package com.nianticproject.ingress.common.u;

import com.google.f.c;
import com.google.f.d;
import com.google.f.f;
import com.google.f.h;
import java.util.Collections;
import java.util.List;

public final class ax extends f
{
  private static final ax a;
  private int b;
  private Object c;
  private long d;
  private float e;
  private float f;
  private List<Float> g;
  private float h;
  private float i;
  private float j;
  private float k;
  private float l;
  private float m;
  private int n;
  private byte o = -1;
  private int p = -1;

  static
  {
    ax localax = new ax((byte)0);
    a = localax;
    localax.c = "";
    localax.d = 0L;
    localax.e = 0.0F;
    localax.f = 0.0F;
    localax.g = Collections.emptyList();
    localax.h = 0.0F;
    localax.i = 0.0F;
    localax.j = 0.0F;
    localax.k = 0.0F;
    localax.l = 0.0F;
    localax.m = 0.0F;
    localax.n = 0;
  }

  private ax()
  {
    super((byte)0);
  }

  private ax(byte paramByte)
  {
  }

  public static ay A()
  {
    return ay.d();
  }

  private c B()
  {
    Object localObject = this.c;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.c = localc;
      return localc;
    }
    return (c)localObject;
  }

  public static ax c()
  {
    return a;
  }

  public final void a(d paramd)
  {
    b();
    if ((0x1 & this.b) == 1)
      paramd.a(1, B());
    if ((0x2 & this.b) == 2)
      paramd.a(2, this.d);
    if ((0x4 & this.b) == 4)
      paramd.a(3, this.e);
    if ((0x8 & this.b) == 8)
      paramd.a(4, this.f);
    for (int i1 = 0; i1 < this.g.size(); i1++)
      paramd.a(5, ((Float)this.g.get(i1)).floatValue());
    if ((0x10 & this.b) == 16)
      paramd.a(6, this.h);
    if ((0x20 & this.b) == 32)
      paramd.a(7, this.i);
    if ((0x40 & this.b) == 64)
      paramd.a(8, this.j);
    if ((0x80 & this.b) == 128)
      paramd.a(9, this.k);
    if ((0x100 & this.b) == 256)
      paramd.a(10, this.l);
    if ((0x200 & this.b) == 512)
      paramd.a(11, this.m);
    if ((0x400 & this.b) == 1024)
      paramd.a(12, this.n);
  }

  public final int b()
  {
    int i1 = this.p;
    if (i1 != -1)
      return i1;
    int i2 = 0x1 & this.b;
    int i3 = 0;
    if (i2 == 1)
      i3 = 0 + d.b(1, B());
    if ((0x2 & this.b) == 2)
      i3 += d.b(2, this.d);
    if ((0x4 & this.b) == 4)
      i3 += d.a(3);
    if ((0x8 & this.b) == 8)
      i3 += d.a(4);
    int i4 = i3 + 4 * this.g.size() + 1 * this.g.size();
    if ((0x10 & this.b) == 16)
      i4 += d.a(6);
    if ((0x20 & this.b) == 32)
      i4 += d.a(7);
    if ((0x40 & this.b) == 64)
      i4 += d.a(8);
    if ((0x80 & this.b) == 128)
      i4 += d.a(9);
    if ((0x100 & this.b) == 256)
      i4 += d.a(10);
    if ((0x200 & this.b) == 512)
      i4 += d.a(11);
    if ((0x400 & this.b) == 1024)
      i4 += d.b(12, this.n);
    this.p = i4;
    return i4;
  }

  public final boolean d()
  {
    return (0x1 & this.b) == 1;
  }

  public final String e()
  {
    Object localObject = this.c;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.c = str;
    return str;
  }

  public final boolean f()
  {
    return (0x2 & this.b) == 2;
  }

  public final long g()
  {
    return this.d;
  }

  public final boolean h()
  {
    return (0x4 & this.b) == 4;
  }

  public final float i()
  {
    return this.e;
  }

  public final boolean j()
  {
    return (0x8 & this.b) == 8;
  }

  public final float k()
  {
    return this.f;
  }

  public final boolean l()
  {
    return (0x10 & this.b) == 16;
  }

  public final float m()
  {
    return this.h;
  }

  public final boolean n()
  {
    return (0x20 & this.b) == 32;
  }

  public final float o()
  {
    return this.i;
  }

  public final boolean p()
  {
    return (0x40 & this.b) == 64;
  }

  public final float q()
  {
    return this.j;
  }

  public final boolean r()
  {
    return (0x80 & this.b) == 128;
  }

  public final float s()
  {
    return this.k;
  }

  public final boolean t()
  {
    return (0x100 & this.b) == 256;
  }

  public final float u()
  {
    return this.l;
  }

  public final boolean v()
  {
    return (0x200 & this.b) == 512;
  }

  public final float w()
  {
    return this.m;
  }

  public final boolean x()
  {
    return (0x400 & this.b) == 1024;
  }

  public final int y()
  {
    return this.n;
  }

  public final boolean z()
  {
    int i1 = this.o;
    if (i1 != -1)
      return i1 == 1;
    this.o = 1;
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ax
 * JD-Core Version:    0.6.2
 */