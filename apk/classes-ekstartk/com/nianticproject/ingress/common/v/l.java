package com.nianticproject.ingress.common.v;

import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.nianticproject.ingress.common.c.g;
import com.nianticproject.ingress.common.c.h;

final class l
  implements ai
{
  l(j paramj)
  {
    if (j.a(paramj).a())
      ((aj)j.a(paramj).b()).a().addListener(new m(this, paramj));
    if (j.c(paramj).a())
      ((aj)j.c(paramj).b()).a().addListener(new x(this, paramj));
    j.d(paramj).a().addListener(new aa(this, paramj));
    j.e(paramj).a().addListener(new ab(this, paramj));
    if (j.f(paramj).a())
      ((aj)j.f(paramj).b()).a().addListener(new ac(this, paramj));
    if (j.g(paramj).a())
      ((aj)j.g(paramj).b()).a().addListener(new ad(this, paramj));
    if (j.h(paramj).a())
      ((aj)j.h(paramj).b()).a().addListener(new ae(this, paramj));
    if (j.i(paramj).a())
      ((aj)j.i(paramj).b()).a().addListener(new af(this, paramj));
    if (j.j(paramj).a())
      ((aj)j.j(paramj).b()).a().addListener(new ag(this, paramj));
    j.k(paramj).a().addListener(new n(this, paramj));
    j.l(paramj).a(g.a).addListener(new o(this, paramj));
    j.l(paramj).a(g.c).addListener(new p(this, paramj));
    j.l(paramj).a(g.b).addListener(new q(this, paramj));
    j.m(paramj).a().addListener(new r(this, paramj));
    j.n(paramj).a().addListener(new s(this, paramj));
    j.o(paramj).a().addListener(new t(this, paramj));
    u localu = new u(this, paramj);
    j.p(paramj).a(localu);
    j.q(paramj).a(localu);
    j.r(paramj).a().addListener(new v(this, paramj));
    j.s(paramj).a(localu);
    if (j.t(paramj).a())
      ((aj)j.t(paramj).b()).a().addListener(new w(this, paramj));
    if (j.u(paramj).a())
      ((aj)j.u(paramj).b()).a().addListener(new y(this, paramj));
    if (j.v(paramj).a())
      ((aj)j.v(paramj).b()).a().addListener(new z(this, paramj));
  }

  public final void a(g paramg, h paramh)
  {
    j.l(this.a).a(paramg).setText(paramh.name());
  }

  public final void a(String paramString)
  {
    j.d(this.a).a(paramString);
  }

  public final void a(boolean paramBoolean)
  {
    TextButton localTextButton;
    if (j.c(this.a).a())
    {
      localTextButton = ((aj)j.c(this.a).b()).a();
      if (!paramBoolean)
        break label43;
    }
    label43: for (String str = "Disable"; ; str = "Enable")
    {
      localTextButton.setText(str);
      return;
    }
  }

  public final void b(String paramString)
  {
    if (j.a(this.a).a())
      ((aj)j.a(this.a).b()).a(paramString);
  }

  public final void b(boolean paramBoolean)
  {
    aj localaj;
    if (j.g(this.a).a())
    {
      localaj = (aj)j.g(this.a).b();
      if (!paramBoolean)
        break label40;
    }
    label40: for (String str = "ON"; ; str = "OFF")
    {
      localaj.a(str);
      return;
    }
  }

  public final void c(String paramString)
  {
    j.w(this.a).a(paramString);
  }

  public final void c(boolean paramBoolean)
  {
    aj localaj = j.n(this.a);
    if (paramBoolean);
    for (String str = "DYNAMIC"; ; str = "STATIC")
    {
      localaj.a(str);
      return;
    }
  }

  public final void d(String paramString)
  {
    if (j.x(this.a).a())
      ((aj)j.x(this.a).b()).a(paramString);
  }

  public final void d(boolean paramBoolean)
  {
    aj localaj = j.o(this.a);
    if (paramBoolean);
    for (String str = "ENABLED"; ; str = "DISABLED")
    {
      localaj.a(str);
      return;
    }
  }

  public final void e(String paramString)
  {
    j.r(this.a).a(paramString);
  }

  public final void e(boolean paramBoolean)
  {
    j.p(this.a).a(1, paramBoolean);
  }

  public final void f(boolean paramBoolean)
  {
    j.p(this.a).a(2, paramBoolean);
  }

  public final void g(boolean paramBoolean)
  {
    j.q(this.a).a(3, paramBoolean);
  }

  public final void h(boolean paramBoolean)
  {
    j.q(this.a).a(4, paramBoolean);
  }

  public final void i(boolean paramBoolean)
  {
    j.q(this.a).a(5, paramBoolean);
  }

  public final void j(boolean paramBoolean)
  {
    j.q(this.a).a(6, paramBoolean);
  }

  public final void k(boolean paramBoolean)
  {
    TextButton localTextButton;
    if (j.t(this.a).a())
    {
      localTextButton = ((aj)j.t(this.a).b()).a();
      if (!paramBoolean)
        break label43;
    }
    label43: for (String str = "Disable"; ; str = "Enable")
    {
      localTextButton.setText(str);
      return;
    }
  }

  public final void l(boolean paramBoolean)
  {
    TextButton localTextButton;
    if (j.u(this.a).a())
    {
      localTextButton = ((aj)j.u(this.a).b()).a();
      if (!paramBoolean)
        break label43;
    }
    label43: for (String str = "Resume"; ; str = "Pause")
    {
      localTextButton.setText(str);
      return;
    }
  }

  public final void m(boolean paramBoolean)
  {
    a locala = j.s(this.a);
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      locala.a(7, bool);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v.l
 * JD-Core Version:    0.6.2
 */