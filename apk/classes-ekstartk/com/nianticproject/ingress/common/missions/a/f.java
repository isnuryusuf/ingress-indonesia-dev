package com.nianticproject.ingress.common.missions.a;

import com.google.a.a.an;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.missions.cr;
import com.nianticproject.ingress.common.ui.widget.Spectrograph;

final class f
  implements cr
{
  private final Spectrograph a;
  private bs b = null;
  private boolean c = false;
  private boolean d = false;
  private bn e = null;
  private e f = null;

  f(Spectrograph paramSpectrograph)
  {
    this.a = paramSpectrograph;
  }

  private void a(e parame)
  {
    this.c = false;
    if (b())
    {
      this.a.a(false);
      this.e.p();
    }
    while (true)
    {
      this.a.c();
      return;
      this.a.a();
      if (this.e != null)
        this.e.n();
      this.e = this.b.a();
      parame.a(this.e);
      this.d = true;
    }
  }

  public final void a()
  {
    this.c = false;
    this.d = false;
    if (this.e != null)
      this.e.n();
  }

  public final void a(e parame, bs parambs)
  {
    an.a(parambs);
    a();
    this.f = parame;
    this.b = parambs;
    this.a.a(this.b.b());
    a(parame);
  }

  public final boolean b()
  {
    return (this.d) && (!this.a.b()) && (!this.c);
  }

  public final void c()
  {
    if (b())
    {
      this.c = true;
      this.a.a(true);
      if (this.e != null)
        this.e.o();
      return;
    }
    a(this.f);
  }

  public final void d()
  {
    e locale = this.f;
    this.d = false;
    a(locale);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.f
 * JD-Core Version:    0.6.2
 */