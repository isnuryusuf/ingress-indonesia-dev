package com.nianticproject.ingress.common.scanner.a;

import com.nianticproject.ingress.common.q.a.d;

final class c
  implements d
{
  private final n a;
  private short[] b;
  private int c = -1;

  c(n paramn)
  {
    this.a = paramn;
  }

  public final void a()
  {
    if (this.b == null)
      return;
    this.a.a(new b(this.a, this.c, this.b, (byte)0));
  }

  public final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(int paramInt, short[] paramArrayOfShort)
  {
    this.b = new short[paramInt * 2];
    System.arraycopy(paramArrayOfShort, 0, this.b, 0, this.b.length);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.c
 * JD-Core Version:    0.6.2
 */