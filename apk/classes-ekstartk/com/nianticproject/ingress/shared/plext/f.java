package com.nianticproject.ingress.shared.plext;

public enum f
{
  private final int d;

  static
  {
    f[] arrayOff = new f[3];
    arrayOff[0] = a;
    arrayOff[1] = b;
    arrayOff[2] = c;
  }

  private f(int paramInt)
  {
    this.d = paramInt;
  }

  public static f a(int paramInt)
  {
    for (f localf : values())
      if (localf.d == paramInt)
        return localf;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    throw new IllegalArgumentException(String.format("%d does not correspond to any known PlextTYpe", arrayOfObject));
  }

  public final int a()
  {
    return this.d;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.plext.f
 * JD-Core Version:    0.6.2
 */