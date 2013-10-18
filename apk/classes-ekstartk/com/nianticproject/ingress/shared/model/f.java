package com.nianticproject.ingress.shared.model;

import com.google.a.a.aj;
import com.google.a.c.dc;
import com.google.a.c.du;
import java.util.Collection;
import java.util.Set;

public final class f
{
  private Set<com.nianticproject.ingress.gameentity.f> a;
  private Set<com.nianticproject.ingress.gameentity.f> b;
  private Collection<String> c;
  private Collection<String> d;
  private Long e;
  private Long f;
  private boolean g;
  private Set<PlayerDamage> h;
  private com.nianticproject.ingress.gameentity.f i;
  private dc<ApGain> j;
  private LevelUp k;

  f()
  {
  }

  f(e parame)
  {
    this.a = parame.b();
    this.b = parame.c();
    this.c = parame.f();
    this.d = parame.d();
    this.e = parame.e();
    this.f = ((Long)parame.g().c());
    this.g = parame.a();
    this.h = parame.h();
    this.i = ((com.nianticproject.ingress.gameentity.f)parame.i().c());
    this.j = parame.j();
    this.k = ((LevelUp)parame.k().c());
  }

  public final SimpleGameStateUpdate a()
  {
    return new SimpleGameStateUpdate(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k);
  }

  public final f a(Collection<String> paramCollection)
  {
    this.c = du.a(paramCollection);
    return this;
  }

  public final f a(Set<? extends com.nianticproject.ingress.gameentity.f> paramSet)
  {
    this.a = du.a(paramSet);
    return this;
  }

  public final f a(Set<String> paramSet, Long paramLong)
  {
    this.d = paramSet;
    this.e = paramLong;
    return this;
  }

  public final f b(Set<? extends com.nianticproject.ingress.gameentity.f> paramSet)
  {
    this.b = du.a(paramSet);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.model.f
 * JD-Core Version:    0.6.2
 */