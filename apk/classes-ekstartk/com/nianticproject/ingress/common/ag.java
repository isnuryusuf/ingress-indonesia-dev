package com.nianticproject.ingress.common;

import com.nianticproject.ingress.common.u.aw;

public final class ag
{
  private static final ag a = new ag();
  private final ah b = new ah((byte)0);
  private final ah c = new ah((byte)0);

  public static ag a()
  {
    return a;
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    this.b.a(paramFloat1, paramFloat2);
  }

  public final void a(aw paramaw)
  {
    if (this.b.a() > 5)
      paramaw.c(this.b.b());
    if (this.c.a() > 5)
      paramaw.b(this.c.b());
  }

  public final void b(float paramFloat1, float paramFloat2)
  {
    this.c.a(paramFloat1, paramFloat2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ag
 * JD-Core Version:    0.6.2
 */