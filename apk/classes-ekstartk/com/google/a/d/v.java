package com.google.a.d;

public final class v
  implements ad
{
  private final b a;
  private final e b;

  public strictfp v(b paramb, e parame)
  {
    this.a = paramb;
    this.b = parame;
  }

  private strictfp v(u paramu1, u paramu2)
  {
    this.a = new b(paramu1.a().a(), paramu2.a().a());
    this.b = new e(paramu1.d().a(), paramu2.d().a());
  }

  public static strictfp v a()
  {
    return new v(b(), e.b());
  }

  public static strictfp v a(u paramu1, u paramu2)
  {
    return new v(b.a(paramu1.a().a(), paramu2.a().a()), e.a(paramu1.d().a(), paramu2.d().a()));
  }

  public static strictfp b b()
  {
    return new b(-1.570796326794897D, 1.570796326794897D);
  }

  private strictfp u h()
  {
    return new u(d.a(this.a.a()), d.a(this.b.c()));
  }

  private strictfp u i()
  {
    return new u(d.a(this.a.b()), d.a(this.b.d()));
  }

  public final strictfp v a(u paramu)
  {
    return new v(this.a.b(paramu.a().a()), this.b.b(paramu.d().a()));
  }

  public final strictfp boolean a(i parami)
  {
    return a(parami.c());
  }

  public final strictfp boolean a(v paramv)
  {
    return (this.a.a(paramv.a)) && (this.b.a(paramv.b));
  }

  public final strictfp boolean a(y paramy)
  {
    u localu = new u(paramy);
    return (this.a.a(localu.b())) && (this.b.a(localu.e()));
  }

  public final strictfp boolean b(i parami)
  {
    return b(parami.c());
  }

  public final strictfp boolean b(v paramv)
  {
    return (this.a.b(paramv.a)) && (this.b.b(paramv.b));
  }

  public final strictfp b c()
  {
    return this.a;
  }

  public final strictfp v c(v paramv)
  {
    return new v(this.a.c(paramv.a), this.b.c(paramv.b));
  }

  public final strictfp e d()
  {
    return this.b;
  }

  public final strictfp boolean e()
  {
    return this.a.c();
  }

  public final strictfp boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof v));
    v localv;
    do
    {
      return false;
      localv = (v)paramObject;
    }
    while ((!this.a.equals(localv.a)) || (!this.b.equals(localv.b)));
    return true;
  }

  public final strictfp h f()
  {
    if (this.a.c())
      return h.a();
    double d1;
    if (this.a.a() + this.a.b() < 0.0D)
      d1 = -1.0D;
    h localh1;
    h localh2;
    int i;
    for (double d2 = 1.570796326794897D + this.a.b(); ; d2 = 1.570796326794897D - this.a.a())
    {
      localh1 = h.a(new y(0.0D, 0.0D, d1), d.a(d2));
      double d3 = this.b.d() - this.b.c();
      if ((Math.IEEEremainder(d3, 6.283185307179586D) < 0.0D) || (d3 >= 6.283185307179586D))
        break label327;
      localh2 = h.a(u.a(this.a.d(), this.b.f()).g(), d.a(0.0D));
      i = 0;
      if (i >= 4)
        break;
      switch (i)
      {
      default:
        throw new IllegalArgumentException("Invalid vertex index.");
        d1 = 1.0D;
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    u localu = u.a(this.a.a(), this.b.c());
    while (true)
    {
      localh2 = localh2.a(localu.g());
      i++;
      break;
      localu = u.a(this.a.a(), this.b.d());
      continue;
      localu = u.a(this.a.b(), this.b.d());
      continue;
      localu = u.a(this.a.b(), this.b.c());
    }
    if (localh2.c() < localh1.c())
      return localh2;
    label327: return localh1;
  }

  public final strictfp boolean g()
  {
    return (this.a.equals(b())) && (this.b.e());
  }

  public final strictfp int hashCode()
  {
    return 37 * (629 + this.a.hashCode()) + this.b.hashCode();
  }

  public final strictfp String toString()
  {
    return "[Lo=" + h() + ", Hi=" + i() + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.v
 * JD-Core Version:    0.6.2
 */