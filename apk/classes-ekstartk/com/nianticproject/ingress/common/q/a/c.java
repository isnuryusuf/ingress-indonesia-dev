package com.nianticproject.ingress.common.q.a;

public final class c
{
  private final b a;
  private final b b;

  c(int paramInt)
  {
    this.a = a(paramInt & 0xF);
    this.b = a(0xF & paramInt >>> 4);
  }

  private static b a(int paramInt)
  {
    switch (paramInt & 0xF)
    {
    case 8:
    case 12:
    default:
      return null;
    case 5:
      return b.a;
    case 6:
      return b.b;
    case 7:
      return b.c;
    case 9:
      return b.d;
    case 10:
      return b.e;
    case 11:
      return b.f;
    case 13:
      return b.g;
    case 14:
      return b.h;
    case 15:
    }
    return b.i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.a.c
 * JD-Core Version:    0.6.2
 */