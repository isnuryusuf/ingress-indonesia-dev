package com.google.a.d;

public final class o
{
  public static final d a = d.a(1.5E-15D);

  public static strictfp boolean a(y paramy1, y paramy2, y paramy3, y paramy4)
  {
    if ((paramy1.f(paramy2)) || (paramy3.f(paramy4)));
    do
    {
      return false;
      if (paramy1.f(paramy4))
        return f.b(f.a(paramy1), paramy3, paramy2, paramy1);
      if (paramy2.f(paramy3))
        return f.b(f.a(paramy2), paramy4, paramy1, paramy2);
      if (paramy1.f(paramy3))
        return f.b(f.a(paramy1), paramy4, paramy2, paramy1);
    }
    while (!paramy2.f(paramy4));
    return f.b(f.a(paramy2), paramy3, paramy1, paramy2);
  }

  public static final strictfp boolean b(y paramy1, y paramy2, y paramy3, y paramy4)
  {
    double d1 = y.a(paramy2, paramy1, paramy3);
    if (Math.abs(d1) < 1.0E-14D)
      return true;
    double d2 = y.a(paramy1, paramy2, paramy4);
    if (Math.abs(d2) < 1.0E-14D)
      return true;
    if (d2 * d1 < 0.0D)
      return false;
    double d3 = y.a(paramy4, paramy3, paramy2);
    if (Math.abs(d3) < 1.0E-14D)
      return true;
    double d4 = y.a(paramy3, paramy4, paramy1);
    if (Math.abs(d4) < 1.0E-14D)
      return true;
    return (d3 * d1 >= 0.0D) && (d1 * d4 >= 0.0D);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.o
 * JD-Core Version:    0.6.2
 */