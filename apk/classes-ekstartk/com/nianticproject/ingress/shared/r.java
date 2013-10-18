package com.nianticproject.ingress.shared;

public enum r
{
  private static final r[] i;
  private final int j;
  private double k;
  private double l;

  static
  {
    int n = 0;
    a = new r("E", 0, 0);
    b = new r("NE", 1, 1);
    c = new r("N", 2, 2);
    d = new r("NW", 3, 3);
    e = new r("W", 4, 4);
    f = new r("SW", 5, 5);
    g = new r("S", 6, 6);
    h = new r("SE", 7, 7);
    r[] arrayOfr1 = new r[8];
    arrayOfr1[0] = a;
    arrayOfr1[1] = b;
    arrayOfr1[2] = c;
    arrayOfr1[3] = d;
    arrayOfr1[4] = e;
    arrayOfr1[5] = f;
    arrayOfr1[6] = g;
    arrayOfr1[7] = h;
    m = arrayOfr1;
    i = new r[8];
    r[] arrayOfr2 = values();
    int i1 = arrayOfr2.length;
    while (n < i1)
    {
      r localr = arrayOfr2[n];
      i[localr.j] = localr;
      n++;
    }
  }

  private r(int paramInt)
  {
    this.j = paramInt;
    this.k = (0.7853981633974483D * paramInt);
    this.l = b(1.570796326794897D - this.k);
  }

  public static r a(double paramDouble)
  {
    int n = (int)Math.round(b(paramDouble) / 0.7853981633974483D) % 8;
    return i[n];
  }

  public static r a(int paramInt)
  {
    return i[paramInt];
  }

  private static double b(double paramDouble)
  {
    for (double d1 = paramDouble; d1 > 6.283185307179586D; d1 -= 6.283185307179586D);
    while (d1 < 0.0D)
      d1 += 6.283185307179586D;
    return d1;
  }

  public final int a()
  {
    return this.j;
  }

  public final int a(r paramr)
  {
    int n = Math.abs(this.j - paramr.j);
    if (n > 4)
      n = 8 - n;
    return n;
  }

  public final double b()
  {
    return this.k;
  }

  public final double c()
  {
    return this.l;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.r
 * JD-Core Version:    0.6.2
 */