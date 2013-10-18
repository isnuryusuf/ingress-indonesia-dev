package com.google.a.d;

public final class p
{
  private final y a;
  private final y b;
  private final y c;
  private y d;
  private int e;

  public strictfp p(y paramy1, y paramy2, y paramy3)
  {
    this.a = paramy1;
    this.b = paramy2;
    this.c = y.b(paramy1, paramy2);
    a(paramy3);
  }

  public final strictfp void a(y paramy)
  {
    this.d = paramy;
    this.e = (-f.a(this.a, this.b, paramy, this.c));
  }

  public final strictfp int b(y paramy)
  {
    int i = f.a(this.a, this.b, paramy, this.c);
    int j;
    if ((i != -this.e) || (i == 0))
      if ((i & this.e) == 0)
        j = 0;
    while (true)
    {
      this.d = paramy;
      this.e = (-i);
      return j;
      y localy = y.b(this.d, paramy);
      if ((-f.a(this.d, paramy, this.b, localy) == this.e) && (f.a(this.d, paramy, this.a, localy) == this.e))
        j = 1;
      else
        j = -1;
    }
  }

  public final strictfp boolean c(y paramy)
  {
    y localy = this.d;
    int i = b(paramy);
    if (i < 0)
      return false;
    if (i > 0)
      return true;
    return o.a(this.a, this.b, localy, paramy);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.d.p
 * JD-Core Version:    0.6.2
 */