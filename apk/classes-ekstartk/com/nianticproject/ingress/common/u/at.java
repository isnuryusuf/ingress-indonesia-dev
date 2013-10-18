package com.nianticproject.ingress.common.u;

import com.google.f.c;
import com.google.f.d;
import com.google.f.f;
import com.google.f.h;

public final class at extends f
{
  private static final at a;
  private int b;
  private boolean c;
  private Object d;
  private Object e;
  private Object f;
  private Object g;
  private Object h;
  private Object i;
  private Object j;
  private Object k;
  private Object l;
  private Object m;
  private Object n;
  private Object o;
  private Object p;
  private byte q = -1;
  private int r = -1;

  static
  {
    at localat = new at((byte)0);
    a = localat;
    localat.c = false;
    localat.d = "";
    localat.e = "";
    localat.f = "";
    localat.g = "";
    localat.h = "";
    localat.i = "";
    localat.j = "";
    localat.k = "";
    localat.l = "";
    localat.m = "";
    localat.n = "";
    localat.o = "";
    localat.p = "";
  }

  private at()
  {
    super((byte)0);
  }

  private at(byte paramByte)
  {
  }

  public static au G()
  {
    return au.e();
  }

  private c H()
  {
    Object localObject = this.d;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.d = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c I()
  {
    Object localObject = this.e;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.e = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c J()
  {
    Object localObject = this.f;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.f = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c K()
  {
    Object localObject = this.g;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.g = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c L()
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

  private c M()
  {
    Object localObject = this.i;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.i = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c N()
  {
    Object localObject = this.j;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.j = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c O()
  {
    Object localObject = this.k;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.k = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c P()
  {
    Object localObject = this.l;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.l = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c Q()
  {
    Object localObject = this.m;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.m = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c R()
  {
    Object localObject = this.n;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.n = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c S()
  {
    Object localObject = this.o;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.o = localc;
      return localc;
    }
    return (c)localObject;
  }

  private c T()
  {
    Object localObject = this.p;
    if ((localObject instanceof String))
    {
      c localc = c.a((String)localObject);
      this.p = localc;
      return localc;
    }
    return (c)localObject;
  }

  public static au a(at paramat)
  {
    return au.e().a(paramat);
  }

  public static at c()
  {
    return a;
  }

  public final String A()
  {
    Object localObject = this.n;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.n = str;
    return str;
  }

  public final boolean B()
  {
    return (0x1000 & this.b) == 4096;
  }

  public final String C()
  {
    Object localObject = this.o;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.o = str;
    return str;
  }

  public final boolean D()
  {
    return (0x2000 & this.b) == 8192;
  }

  public final String E()
  {
    Object localObject = this.p;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.p = str;
    return str;
  }

  public final boolean F()
  {
    int i1 = this.q;
    if (i1 != -1)
      return i1 == 1;
    this.q = 1;
    return true;
  }

  public final void a(d paramd)
  {
    b();
    if ((0x1 & this.b) == 1)
      paramd.a(1, this.c);
    if ((0x2 & this.b) == 2)
      paramd.a(2, H());
    if ((0x4 & this.b) == 4)
      paramd.a(3, I());
    if ((0x8 & this.b) == 8)
      paramd.a(4, J());
    if ((0x10 & this.b) == 16)
      paramd.a(5, K());
    if ((0x20 & this.b) == 32)
      paramd.a(6, L());
    if ((0x40 & this.b) == 64)
      paramd.a(7, M());
    if ((0x80 & this.b) == 128)
      paramd.a(8, N());
    if ((0x100 & this.b) == 256)
      paramd.a(9, O());
    if ((0x200 & this.b) == 512)
      paramd.a(10, P());
    if ((0x400 & this.b) == 1024)
      paramd.a(11, Q());
    if ((0x800 & this.b) == 2048)
      paramd.a(12, R());
    if ((0x1000 & this.b) == 4096)
      paramd.a(13, S());
    if ((0x2000 & this.b) == 8192)
      paramd.a(14, T());
  }

  public final int b()
  {
    int i1 = this.r;
    if (i1 != -1)
      return i1;
    int i2 = 0x1 & this.b;
    int i3 = 0;
    if (i2 == 1)
      i3 = 0 + d.b(1);
    if ((0x2 & this.b) == 2)
      i3 += d.b(2, H());
    if ((0x4 & this.b) == 4)
      i3 += d.b(3, I());
    if ((0x8 & this.b) == 8)
      i3 += d.b(4, J());
    if ((0x10 & this.b) == 16)
      i3 += d.b(5, K());
    if ((0x20 & this.b) == 32)
      i3 += d.b(6, L());
    if ((0x40 & this.b) == 64)
      i3 += d.b(7, M());
    if ((0x80 & this.b) == 128)
      i3 += d.b(8, N());
    if ((0x100 & this.b) == 256)
      i3 += d.b(9, O());
    if ((0x200 & this.b) == 512)
      i3 += d.b(10, P());
    if ((0x400 & this.b) == 1024)
      i3 += d.b(11, Q());
    if ((0x800 & this.b) == 2048)
      i3 += d.b(12, R());
    if ((0x1000 & this.b) == 4096)
      i3 += d.b(13, S());
    if ((0x2000 & this.b) == 8192)
      i3 += d.b(14, T());
    this.r = i3;
    return i3;
  }

  public final boolean d()
  {
    return (0x1 & this.b) == 1;
  }

  public final boolean e()
  {
    return this.c;
  }

  public final boolean f()
  {
    return (0x2 & this.b) == 2;
  }

  public final String g()
  {
    Object localObject = this.d;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.d = str;
    return str;
  }

  public final boolean h()
  {
    return (0x4 & this.b) == 4;
  }

  public final String i()
  {
    Object localObject = this.e;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.e = str;
    return str;
  }

  public final boolean j()
  {
    return (0x8 & this.b) == 8;
  }

  public final String k()
  {
    Object localObject = this.f;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.f = str;
    return str;
  }

  public final boolean l()
  {
    return (0x10 & this.b) == 16;
  }

  public final String m()
  {
    Object localObject = this.g;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.g = str;
    return str;
  }

  public final boolean n()
  {
    return (0x20 & this.b) == 32;
  }

  public final String o()
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

  public final boolean p()
  {
    return (0x40 & this.b) == 64;
  }

  public final String q()
  {
    Object localObject = this.i;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.i = str;
    return str;
  }

  public final boolean r()
  {
    return (0x80 & this.b) == 128;
  }

  public final String s()
  {
    Object localObject = this.j;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.j = str;
    return str;
  }

  public final boolean t()
  {
    return (0x100 & this.b) == 256;
  }

  public final String u()
  {
    Object localObject = this.k;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.k = str;
    return str;
  }

  public final boolean v()
  {
    return (0x200 & this.b) == 512;
  }

  public final String w()
  {
    Object localObject = this.l;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.l = str;
    return str;
  }

  public final boolean x()
  {
    return (0x400 & this.b) == 1024;
  }

  public final String y()
  {
    Object localObject = this.m;
    if ((localObject instanceof String))
      return (String)localObject;
    c localc = (c)localObject;
    String str = localc.b();
    if (h.a(localc))
      this.m = str;
    return str;
  }

  public final boolean z()
  {
    return (0x800 & this.b) == 2048;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.at
 * JD-Core Version:    0.6.2
 */