package com.google.a.d;

public final class q
{
  private y a;
  private u b;
  private v c = new v(new b(1.0D, 0.0D), e.a());

  public final strictfp v a()
  {
    return this.c;
  }

  public final strictfp void a(y paramy)
  {
    u localu = new u(paramy);
    if (this.c.e())
      this.c = this.c.a(localu);
    y localy1;
    y localy2;
    double d1;
    do
    {
      this.a = paramy;
      this.b = localu;
      return;
      this.c = this.c.c(v.a(this.b, localu));
      localy1 = f.a(this.a, paramy);
      localy2 = y.b(localy1, new y(0.0D, 0.0D, 1.0D));
      d1 = localy2.b(this.a);
    }
    while (d1 * localy2.b(paramy) >= 0.0D);
    double d2 = Math.acos(Math.abs(localy1.j / localy1.b()));
    b localb1 = this.c.c();
    double d3;
    if (d1 < 0.0D)
      d3 = Math.min(1.570796326794897D, d2 + 1.E-15D);
    for (b localb2 = new b(localb1.a(), Math.max(d3, this.c.c().b())); ; localb2 = new b(Math.min(-Math.max(-1.570796326794897D, d2 - 1.E-15D), this.c.c().a()), localb1.b()))
    {
      this.c = new v(localb2, this.c.d());
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.q
 * JD-Core Version:    0.6.2
 */