package com.nianticproject.ingress.common.scanner.visuals;

 enum r
{
  public final float e;

  static
  {
    r[] arrayOfr = new r[4];
    arrayOfr[0] = a;
    arrayOfr[1] = b;
    arrayOfr[2] = c;
    arrayOfr[3] = d;
  }

  private r(float paramFloat)
  {
    this.e = paramFloat;
  }

  public static float a()
  {
    float f1 = 0.0F;
    r[] arrayOfr = values();
    int i = arrayOfr.length;
    for (int j = 0; j < i; j++)
      f1 += arrayOfr[j].e;
    return f1;
  }

  public final r b()
  {
    r[] arrayOfr = values();
    if (this == arrayOfr[(-1 + arrayOfr.length)])
      return null;
    return values()[(1 + ordinal())];
  }

  public final float c()
  {
    float f1 = 0.0F;
    for (int i = 0; i < ordinal(); i++)
      f1 += values()[i].e;
    return f1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.r
 * JD-Core Version:    0.6.2
 */