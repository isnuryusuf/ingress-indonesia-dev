package com.nianticproject.ingress.common.x;

import com.google.a.a.an;

public final class h extends a
{
  private final f[] a;
  private int b;

  public h(String paramString, f[] paramArrayOff)
  {
    super(paramString);
    this.a = ((f[])an.a(paramArrayOff));
  }

  public final f a(p paramp)
  {
    if (this.a[this.b] != null)
      this.a[this.b] = this.a[this.b].a(paramp);
    if (this.a[this.b] == null)
      this.b = (1 + this.b);
    if (this.b < this.a.length)
      return this;
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.h
 * JD-Core Version:    0.6.2
 */