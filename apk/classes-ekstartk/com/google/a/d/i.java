package com.google.a.d;

public final class i
  implements ad
{
  private static final double k = Math.asin(Math.sqrt(0.3333333333333333D)) - 4.440892098500626E-16D;
  byte a;
  byte b;
  byte c;
  j d;
  double e;
  double f;
  double g;
  double h;
  double i;
  double j;

  strictfp i()
  {
  }

  public strictfp i(j paramj)
  {
    a(paramj);
  }

  public strictfp i(u paramu)
  {
    a(j.a(paramu));
  }

  public static strictfp i a(int paramInt)
  {
    return new i(j.a(paramInt));
  }

  private strictfp y a(int paramInt1, int paramInt2)
  {
    int m = this.a;
    double d1;
    if (paramInt1 == 0)
    {
      d1 = this.e;
      if (paramInt2 != 0)
        break label43;
    }
    label43: for (double d2 = this.g; ; d2 = this.h)
    {
      return aa.a(m, d1, d2);
      d1 = this.f;
      break;
    }
  }

  private strictfp void a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    this.e = paramDouble1;
    this.g = paramDouble2;
    this.f = paramDouble3;
    this.h = paramDouble4;
    a locala1 = new a();
    a locala2 = new a();
    this.d.a(locala1, locala2, null);
    int m = 1 << 30 - this.b;
    this.i = aa.a(9.313225746154785E-10D * (m + 2 * (locala1.a() & -m) - 1073741824));
    this.j = aa.a(9.313225746154785E-10D * (m + 2 * (locala2.a() & -m) - 1073741824));
  }

  private strictfp void a(j paramj)
  {
    this.d = paramj;
    a locala1 = new a();
    a locala2 = new a();
    a locala3 = new a();
    this.a = ((byte)paramj.a(locala1, locala2, locala3));
    this.c = ((byte)locala3.a());
    this.b = ((byte)paramj.f());
    int m = 1 << 30 - this.b;
    int n = 2 * (locala1.a() & -m) - 1073741824;
    int i1 = n + m * 2;
    int i2 = 2 * (locala2.a() & -m) - 1073741824;
    int i3 = i2 + m * 2;
    a(aa.a(9.313225746154785E-10D * n), aa.a(9.313225746154785E-10D * i2), aa.a(9.313225746154785E-10D * i1), aa.a(9.313225746154785E-10D * i3));
  }

  private strictfp double b(int paramInt1, int paramInt2)
  {
    y localy = a(paramInt1, paramInt2);
    return Math.atan2(localy.j, Math.sqrt(localy.h * localy.h + localy.i * localy.i));
  }

  private strictfp double c(int paramInt1, int paramInt2)
  {
    y localy = a(paramInt1, paramInt2);
    return Math.atan2(localy.i, localy.h);
  }

  public static strictfp double d(int paramInt)
  {
    return aa.c.a(paramInt);
  }

  public final strictfp j a()
  {
    return this.d;
  }

  public final strictfp boolean a(i parami)
  {
    return this.d.a(parami.d);
  }

  public final strictfp boolean a(y paramy)
  {
    c localc = aa.b(this.a, paramy);
    if (localc == null);
    while ((localc.a() < this.e) || (localc.a() > this.f) || (localc.b() < this.g) || (localc.b() > this.h))
      return false;
    return true;
  }

  public final strictfp boolean a(i[] paramArrayOfi)
  {
    if (this.d.g())
      return false;
    j localj1 = this.d.l();
    int m = 0;
    Object localObject = localj1;
    if (m < 4)
    {
      i locali = paramArrayOfi[m];
      locali.a = this.a;
      locali.b = ((byte)(1 + this.b));
      locali.c = ((byte)(this.c ^ f.a(m)));
      locali.d = ((j)localObject);
      int n = f.a(this.c, m);
      double d1;
      double d2;
      label107: double d3;
      if ((n & 0x2) != 0)
      {
        d1 = this.i;
        d2 = this.f;
        if ((n & 0x1) == 0)
          break label176;
        d3 = this.j;
      }
      for (double d4 = this.h; ; d4 = this.j)
      {
        locali.a(d1, d3, d2, d4);
        int i1 = m + 1;
        j localj2 = ((j)localObject).m();
        m = i1;
        localObject = localj2;
        break;
        d1 = this.e;
        d2 = this.i;
        break label107;
        label176: d3 = this.g;
      }
    }
    return true;
  }

  public final strictfp byte b()
  {
    return this.b;
  }

  public final strictfp y b(int paramInt)
  {
    int m = this.a;
    double d1;
    if ((paramInt >> 1 ^ paramInt & 0x1) == 0)
    {
      d1 = this.e;
      if (paramInt >> 1 != 0)
        break label51;
    }
    label51: for (double d2 = this.g; ; d2 = this.h)
    {
      return y.d(aa.a(m, d1, d2));
      d1 = this.f;
      break;
    }
  }

  public final strictfp boolean b(i parami)
  {
    return this.d.b(parami.d);
  }

  public final strictfp v c()
  {
    int m = 1;
    if (this.b > 0)
    {
      double d1 = this.e + this.f;
      double d2 = this.g + this.h;
      int n;
      if (aa.a(this.a).j == 0.0D)
        if (d1 < 0.0D)
        {
          n = m;
          if (aa.b(this.a).j != 0.0D)
            break label174;
          if (d2 >= 0.0D)
            break label169;
        }
      b localb;
      while (true)
      {
        localb = b.a(b(n, m), b(1 - n, 1 - m)).e().d(v.b());
        if ((localb.a() != -1.570796326794897D) && (localb.b() != 1.570796326794897D))
          break label186;
        return new v(localb, e.b());
        n = 0;
        break;
        if (d1 > 0.0D)
        {
          n = m;
          break;
        }
        n = 0;
        break;
        label169: m = 0;
        continue;
        label174: if (d2 <= 0.0D)
          m = 0;
      }
      label186: return new v(localb, e.a(c(n, 1 - m), c(1 - n, m)).h());
    }
    switch (this.a)
    {
    default:
      return new v(new b(-1.570796326794897D, -k), new e(-3.141592653589793D, 3.141592653589793D));
    case 0:
      return new v(new b(-0.7853981633974483D, 0.7853981633974483D), new e(-0.7853981633974483D, 0.7853981633974483D));
    case 1:
      return new v(new b(-0.7853981633974483D, 0.7853981633974483D), new e(0.7853981633974483D, 2.356194490192345D));
    case 2:
      return new v(new b(k, 1.570796326794897D), new e(-3.141592653589793D, 3.141592653589793D));
    case 3:
      return new v(new b(-0.7853981633974483D, 0.7853981633974483D), new e(2.356194490192345D, -2.356194490192345D));
    case 4:
    }
    return new v(new b(-0.7853981633974483D, 0.7853981633974483D), new e(-2.356194490192345D, -0.7853981633974483D));
  }

  public final strictfp y c(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return y.a(aa.a(this.a, this.e));
    case 0:
      return aa.b(this.a, this.g);
    case 1:
      return aa.a(this.a, this.f);
    case 2:
    }
    return y.a(aa.b(this.a, this.h));
  }

  public final strictfp boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof i;
    boolean bool2 = false;
    if (bool1)
    {
      i locali = (i)paramObject;
      int m = this.a;
      int n = locali.a;
      bool2 = false;
      if (m == n)
      {
        int i1 = this.b;
        int i2 = locali.b;
        bool2 = false;
        if (i1 == i2)
        {
          int i3 = this.c;
          int i4 = locali.c;
          bool2 = false;
          if (i3 == i4)
          {
            boolean bool3 = this.d.equals(locali.d);
            bool2 = false;
            if (bool3)
              bool2 = true;
          }
        }
      }
    }
    return bool2;
  }

  public final strictfp h f()
  {
    double d1 = 0.5D * (this.e + this.f);
    double d2 = 0.5D * (this.g + this.h);
    h localh = h.a(y.d(aa.a(this.a, d1, d2)), 0.0D);
    for (int m = 0; m < 4; m++)
      localh = localh.a(b(m));
    return localh;
  }

  public final strictfp int hashCode()
  {
    return 37 * (37 * (37 * (629 + this.a) + this.c) + this.b) + this.d.hashCode();
  }

  public final strictfp String toString()
  {
    return "[" + this.a + ", " + this.b + ", " + this.c + ", " + this.d + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.i
 * JD-Core Version:    0.6.2
 */