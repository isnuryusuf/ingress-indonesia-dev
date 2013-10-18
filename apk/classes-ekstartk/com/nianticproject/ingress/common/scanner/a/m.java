package com.nianticproject.ingress.common.scanner.a;

import com.nianticproject.ingress.common.q.a.q;

final class m
  implements q
{
  private final n a;
  private int b = -1;
  private short[] c;

  m(n paramn)
  {
    this.a = paramn;
  }

  public final void a()
  {
    if (this.c == null)
      return;
    l locall = new l(this.a, this.b, this.c, (byte)0);
    this.a.a(locall);
  }

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void a(int paramInt, short[] paramArrayOfShort)
  {
    this.c = new short[paramInt * 2];
    System.arraycopy(paramArrayOfShort, 0, this.c, 0, this.c.length);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.m
 * JD-Core Version:    0.6.2
 */