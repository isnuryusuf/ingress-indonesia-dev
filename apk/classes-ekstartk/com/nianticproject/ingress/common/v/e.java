package com.nianticproject.ingress.common.v;

import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.missions.bp;
import com.nianticproject.ingress.common.missions.et;
import com.nianticproject.ingress.common.model.d;
import com.nianticproject.ingress.common.playerprofile.ak;
import com.nianticproject.ingress.common.playerprofile.ax;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.scanner.visuals.bj;
import com.nianticproject.ingress.common.u.am;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;

public abstract class e
  implements ah
{
  protected com.nianticproject.ingress.common.model.k a;
  protected com.nianticproject.ingress.common.r b;
  protected q c;
  protected ai d;
  private t e;
  private com.nianticproject.ingress.common.g.e f;
  private d g;
  private ax h;

  private void a(NotificationSettings paramNotificationSettings1, NotificationSettings paramNotificationSettings2)
  {
    this.a.a(paramNotificationSettings2);
    this.d.e(paramNotificationSettings2.a());
    this.d.f(paramNotificationSettings2.b());
    new com.nianticproject.ingress.common.h.ai(this.c, paramNotificationSettings2).a(new g(this, "SetNotificationSettingsTask", paramNotificationSettings1));
  }

  public final void a(com.nianticproject.ingress.common.c.g paramg)
  {
    com.nianticproject.ingress.common.c.h localh;
    switch (i.a[c.a(paramg).ordinal()])
    {
    default:
      throw new IllegalStateException("Unknown volume level");
    case 1:
      localh = com.nianticproject.ingress.common.c.h.b;
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      c.a(paramg, localh);
      com.nianticproject.ingress.common.c.o.a().a(paramg, localh);
      this.d.a(paramg, localh);
      return;
      localh = com.nianticproject.ingress.common.c.h.c;
      continue;
      localh = com.nianticproject.ingress.common.c.h.d;
      continue;
      localh = com.nianticproject.ingress.common.c.h.a;
    }
  }

  protected final void a(q paramq, com.nianticproject.ingress.shared.ai paramai)
  {
    new f(this, paramq, paramai).e();
  }

  protected final void a(t paramt, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.common.r paramr, q paramq, d paramd, ax paramax)
  {
    this.e = paramt;
    this.f = parame;
    this.a = paramk;
    this.b = paramr;
    this.c = paramq;
    this.g = paramd;
    this.h = paramax;
  }

  public void a(ai paramai)
  {
    this.d = paramai;
    paramai.b(bj.a);
    for (com.nianticproject.ingress.common.c.g localg : com.nianticproject.ingress.common.c.g.values())
      paramai.a(localg, c.a(localg));
    paramai.c(c.s());
    paramai.d(c.t());
    paramai.k(p.a().u().e());
    paramai.l(p.a().p().c());
    NotificationSettings localNotificationSettings = this.a.n();
    paramai.e(localNotificationSettings.a());
    paramai.f(localNotificationSettings.b());
    paramai.g(localNotificationSettings.c());
    paramai.h(localNotificationSettings.d());
    paramai.i(localNotificationSettings.e());
    paramai.j(c.v());
    paramai.m(this.a.o().a());
  }

  public final void d()
  {
    if (!bj.a);
    for (boolean bool = true; ; bool = false)
    {
      bj.a = bool;
      this.d.b(bj.a);
      this.b.b();
      return;
    }
  }

  public final void e()
  {
    com.nianticproject.ingress.common.a.a.b("Device", "clearAndRefreshData");
    this.f.c();
    this.g.f();
    am.a().b();
    this.b.b();
    ak.j();
    this.h.a();
    this.e.b(com.nianticproject.ingress.common.missions.a.r.class);
  }

  public final void f()
  {
    this.e.c(com.nianticproject.ingress.common.e.a.class);
  }

  public final void g()
  {
    et.a().d();
  }

  public final void h()
  {
    boolean bool1 = true;
    boolean bool2 = c.s();
    boolean bool3;
    ai localai;
    if (!bool2)
    {
      bool3 = bool1;
      c.b(bool3);
      localai = this.d;
      if (bool2)
        break label40;
    }
    while (true)
    {
      localai.c(bool1);
      return;
      bool3 = false;
      break;
      label40: bool1 = false;
    }
  }

  public final void i()
  {
    NotificationSettings localNotificationSettings = this.a.n();
    if (!localNotificationSettings.a());
    for (boolean bool = true; ; bool = false)
    {
      a(localNotificationSettings, new NotificationSettings(bool, localNotificationSettings.b(), localNotificationSettings.c(), localNotificationSettings.d(), localNotificationSettings.e()));
      return;
    }
  }

  public final void j()
  {
    NotificationSettings localNotificationSettings = this.a.n();
    boolean bool1 = localNotificationSettings.a();
    boolean bool2 = localNotificationSettings.b();
    if (!localNotificationSettings.c());
    for (boolean bool3 = true; ; bool3 = false)
    {
      a(localNotificationSettings, new NotificationSettings(bool1, bool2, bool3, localNotificationSettings.d(), localNotificationSettings.e()));
      return;
    }
  }

  public final void k()
  {
    NotificationSettings localNotificationSettings = this.a.n();
    boolean bool1 = localNotificationSettings.a();
    boolean bool2 = localNotificationSettings.b();
    boolean bool3 = localNotificationSettings.c();
    if (!localNotificationSettings.d());
    for (boolean bool4 = true; ; bool4 = false)
    {
      a(localNotificationSettings, new NotificationSettings(bool1, bool2, bool3, bool4, localNotificationSettings.e()));
      return;
    }
  }

  public final void l()
  {
    NotificationSettings localNotificationSettings = this.a.n();
    boolean bool1 = localNotificationSettings.a();
    boolean bool2 = localNotificationSettings.b();
    boolean bool3 = localNotificationSettings.c();
    boolean bool4 = localNotificationSettings.d();
    if (!localNotificationSettings.e());
    for (boolean bool5 = true; ; bool5 = false)
    {
      a(localNotificationSettings, new NotificationSettings(bool1, bool2, bool3, bool4, bool5));
      return;
    }
  }

  public final void m()
  {
    NotificationSettings localNotificationSettings = this.a.n();
    boolean bool1 = localNotificationSettings.a();
    if (!localNotificationSettings.b());
    for (boolean bool2 = true; ; bool2 = false)
    {
      a(localNotificationSettings, new NotificationSettings(bool1, bool2, localNotificationSettings.c(), localNotificationSettings.d(), localNotificationSettings.e()));
      return;
    }
  }

  public final void n()
  {
    ProfileSettings localProfileSettings1 = this.a.o();
    if (!localProfileSettings1.a());
    for (boolean bool = true; ; bool = false)
    {
      ProfileSettings localProfileSettings2 = new ProfileSettings(bool);
      h localh = new h(this, localProfileSettings1);
      this.a.a(localProfileSettings2);
      this.d.m(localProfileSettings2.a());
      this.h.a(localProfileSettings2, localh);
      return;
    }
  }

  public final void o()
  {
    if (!c.v());
    for (boolean bool = true; ; bool = false)
    {
      c.e(bool);
      this.d.j(bool);
      return;
    }
  }

  public final void p()
  {
    et.a().e();
  }

  public final void q()
  {
    com.nianticproject.ingress.common.ui.e locale = p.a().u();
    if (!locale.e());
    for (boolean bool = true; ; bool = false)
    {
      locale.a(bool);
      this.d.k(locale.e());
      return;
    }
  }

  public void r()
  {
    com.nianticproject.ingress.common.ui.o localo = p.a().p();
    if (!localo.c());
    for (boolean bool = true; ; bool = false)
    {
      localo.b(bool);
      this.d.l(localo.c());
      return;
    }
  }

  public final void s()
  {
    this.e.c(com.nianticproject.ingress.common.scanner.k.class);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v.e
 * JD-Core Version:    0.6.2
 */