package com.nianticproject.ingress.common.scanner.visuals;

import a;

 enum an
{
  public final float e;

  static
  {
    an[] arrayOfan = new an[4];
    arrayOfan[0] = a;
    arrayOfan[1] = b;
    arrayOfan[2] = c;
    arrayOfan[3] = d;
  }

  private an(float paramFloat)
  {
    this.e = paramFloat;
  }

  public static float a()
  {
    float f1 = 0.0F;
    an[] arrayOfan = values();
    int i = arrayOfan.length;
    for (int j = 0; j < i; j++)
      f1 += arrayOfan[j].e;
    return a.x(f1);
  }

  public final float b()
  {
    float f1 = 0.0F;
    for (int i = 0; i < ordinal(); i++)
      f1 += values()[i].e;
    return f1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.an
 * JD-Core Version:    0.6.2
 */