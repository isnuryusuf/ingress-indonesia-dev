package com.nianticproject.ingress.common.model;

import com.google.a.a.an;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;
import com.nianticproject.ingress.shared.rpc.e;
import java.util.Collection;
import java.util.Set;

public class g
  implements m
{
  private static final aa a = new aa(g.class);
  private final Set<l> b = com.nianticproject.ingress.common.w.j.a();
  private k c;
  private boolean d;
  private m e;

  public final com.nianticproject.ingress.gameentity.f a(String paramString)
  {
    return this.c.a(paramString);
  }

  public final Collection<com.nianticproject.ingress.gameentity.f> a(Collection<af> paramCollection)
  {
    return this.c.a(paramCollection);
  }

  public final void a(float paramFloat)
  {
    this.c.a(paramFloat);
  }

  public final void a(long paramLong)
  {
    this.c.a(paramLong);
  }

  public final void a(long paramLong, z paramz)
  {
    this.e.a(paramLong, paramz);
  }

  public final void a(ad paramad)
  {
    this.c.a(paramad);
  }

  public final void a(k paramk)
  {
    k localk = this.c;
    this.c = ((k)an.a(paramk));
    this.d = (paramk instanceof m);
    if (this.d);
    for (m localm = (m)paramk; ; localm = null)
    {
      this.e = localm;
      i.a().a(new h(this, paramk, localk));
      return;
    }
  }

  public final void a(l paraml)
  {
    this.b.add(paraml);
    if (this.c != null)
      this.c.a(paraml);
  }

  public final void a(com.nianticproject.ingress.common.playerprofile.j paramj)
  {
    this.c.a(paramj);
  }

  public final void a(ai paramai)
  {
    this.e.a(paramai);
  }

  public final void a(NotificationSettings paramNotificationSettings)
  {
    this.c.a(paramNotificationSettings);
  }

  public final void a(ProfileSettings paramProfileSettings)
  {
    this.c.a(paramProfileSettings);
  }

  public final void a(e parame)
  {
    this.c.a(parame);
  }

  public final void a(Set<PlayerDamage> paramSet)
  {
    this.e.a(paramSet);
  }

  public final void a(boolean paramBoolean)
  {
    this.c.a(paramBoolean);
  }

  public final boolean a()
  {
    return this.d;
  }

  public final com.nianticproject.ingress.shared.f b()
  {
    return this.c.b();
  }

  public final void b(long paramLong)
  {
    this.c.b(paramLong);
  }

  public final void b(l paraml)
  {
    this.b.remove(paraml);
    if (this.c != null)
      this.c.b(paraml);
  }

  public final long c()
  {
    return this.c.c();
  }

  public final void c(long paramLong)
  {
    this.c.c(paramLong);
  }

  public final long d()
  {
    return this.c.d();
  }

  public final long e()
  {
    return this.c.e();
  }

  public final float f()
  {
    return this.c.f();
  }

  public final ad g()
  {
    return this.c.g();
  }

  public final ai h()
  {
    return this.c.h();
  }

  public final boolean i()
  {
    return this.c.i();
  }

  public final String j()
  {
    return this.c.j();
  }

  public final String k()
  {
    return this.c.k();
  }

  public final int l()
  {
    return this.c.l();
  }

  public final int m()
  {
    return this.c.m();
  }

  public final NotificationSettings n()
  {
    return this.c.n();
  }

  public final ProfileSettings o()
  {
    return this.c.o();
  }

  public final void p()
  {
    this.c.p();
  }

  public final void q()
  {
    this.c.q();
  }

  public final com.nianticproject.ingress.common.playerprofile.j r()
  {
    return this.c.r();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.g
 * JD-Core Version:    0.6.2
 */