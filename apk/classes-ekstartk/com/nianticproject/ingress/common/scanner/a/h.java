package com.nianticproject.ingress.common.scanner.a;

import com.nianticproject.ingress.common.q.a.m;

final class h
  implements m
{
  private final n a;
  private short[] b;

  h(n paramn)
  {
    this.a = paramn;
  }

  public final void a()
  {
    if (this.b == null)
      return;
    g localg = new g(this.a, this.b, (byte)0);
    this.a.a(localg);
  }

  public final void a(int paramInt, short[] paramArrayOfShort)
  {
    this.b = new short[paramInt * 2];
    System.arraycopy(paramArrayOfShort, 0, this.b, 0, this.b.length);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.h
 * JD-Core Version:    0.6.2
 */