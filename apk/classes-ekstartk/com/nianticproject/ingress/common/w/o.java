package com.nianticproject.ingress.common.w;

 enum o
{
  public final double j;
  public final String k;
  public final int l;

  static
  {
    o[] arrayOfo = new o[9];
    arrayOfo[0] = a;
    arrayOfo[1] = b;
    arrayOfo[2] = c;
    arrayOfo[3] = d;
    arrayOfo[4] = e;
    arrayOfo[5] = f;
    arrayOfo[6] = g;
    arrayOfo[7] = h;
    arrayOfo[8] = i;
  }

  private o(double paramDouble, String paramString, int paramInt)
  {
    this.j = paramDouble;
    this.k = paramString;
    this.l = paramInt;
  }

  public static o a(double paramDouble)
  {
    for (o localo : values())
      if (localo.j <= paramDouble)
        return localo;
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.o
 * JD-Core Version:    0.6.2
 */