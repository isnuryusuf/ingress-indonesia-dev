package com.nianticproject.ingress.common;

public enum b
{
  public final int c;

  static
  {
    b[] arrayOfb = new b[2];
    arrayOfb[0] = a;
    arrayOfb[1] = b;
  }

  private b(int paramInt)
  {
    this.c = paramInt;
  }

  public static b a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException(paramInt + " is an unknown channel ID");
    case 0:
      return a;
    case 1:
    }
    return b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.b
 * JD-Core Version:    0.6.2
 */