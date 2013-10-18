package com.nianticproject.ingress.common.w;

import com.nianticproject.ingress.shared.aj;

public final class t
  implements k
{
  private k a;

  public final void a(k paramk)
  {
    this.a = paramk;
  }

  public final void a(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public final void b()
  {
    this.a.b();
  }

  public final void c()
  {
    this.a.c();
  }

  public final void f_()
  {
    try
    {
      aj.a("ForwardingDevicePower.resume");
      this.a.f_();
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.t
 * JD-Core Version:    0.6.2
 */