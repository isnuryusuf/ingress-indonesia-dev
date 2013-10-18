package com.nianticproject.ingress.common.j;

public enum ax
{
  private final int h;

  static
  {
    ax[] arrayOfax = new ax[7];
    arrayOfax[0] = a;
    arrayOfax[1] = b;
    arrayOfax[2] = c;
    arrayOfax[3] = d;
    arrayOfax[4] = e;
    arrayOfax[5] = f;
    arrayOfax[6] = g;
  }

  private ax(int paramInt)
  {
    this.h = paramInt;
  }

  public static ax a(int paramInt)
  {
    if (paramInt <= a.h)
      return a;
    if (paramInt <= b.h)
      return b;
    if (paramInt <= c.h)
      return c;
    if (paramInt <= d.h)
      return d;
    if (paramInt <= e.h)
      return e;
    if (paramInt <= f.h)
      return f;
    return g;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ax
 * JD-Core Version:    0.6.2
 */