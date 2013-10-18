package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.h.c;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.scanner.visuals.b.e;
import com.nianticproject.ingress.common.scanner.visuals.b.o;
import com.nianticproject.ingress.common.scanner.visuals.b.s;
import com.nianticproject.ingress.common.scanner.visuals.b.v;
import com.nianticproject.ingress.common.scanner.visuals.cn;
import com.nianticproject.ingress.common.w.i;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.aj;
import java.util.Random;

public final class fu extends fg
{
  private static final ad y = new fv();
  private Color i = ea.c;
  private Color j;
  private Color k = new Color();
  private ai l;
  private float m = 3.4028235E+38F;
  private float n = 0.0F;
  private float o = 300.0F * new Random().nextFloat();
  private float p = 0.0F;
  private float q = 0.0F;
  private float r = 0.0F;
  private float s = 0.0F;
  private float t = 0.0F;
  private com.nianticproject.ingress.common.scanner.visuals.t u;
  private boolean v = false;
  private boolean w = true;
  private boolean x = false;

  public fu(eo parameo)
  {
    super(parameo);
    a(new fw(this));
  }

  public final float a(fu paramfu)
  {
    float f;
    if (this.u != null)
    {
      this.u.a(false);
      if (paramfu != null)
      {
        this.u.a(paramfu);
        o localo = new o();
        f = this.s - this.p + localo.d();
      }
    }
    while (true)
    {
      if (paramfu != null)
      {
        paramfu.p = this.p;
        paramfu.q = this.q;
        paramfu.r = this.r;
        paramfu.s = this.s;
        paramfu.t = this.t;
        paramfu.w = this.w;
        paramfu.j = g();
      }
      this.u = null;
      this.p = 0.0F;
      this.q = 0.0F;
      this.r = 0.0F;
      this.s = 0.0F;
      this.t = 0.0F;
      this.x = true;
      return f;
      s locals = new s();
      locals.b = this.i;
      this.u.a(locals);
      f = this.u.g();
      continue;
      f = 0.0F;
    }
  }

  public final boolean a(float paramFloat)
  {
    this.o = (paramFloat + this.o);
    int i1;
    if (this.p < this.t)
    {
      if (this.p >= this.s)
        break label203;
      i1 = 1;
      boolean bool = p();
      if (this.u == null)
        break label208;
      this.p = this.u.f();
      label59: if ((i1 != 0) && (this.p >= this.s))
      {
        Resonator localResonator = (Resonator)this.f.getComponent(Resonator.class);
        k localk = p.a().k();
        ej localej = localk.b(localResonator.getLinkedPortalGuid());
        o localo = new o();
        localo.b = this.i;
        localk.a(new e(new com.nianticproject.ingress.common.scanner.visuals.t(localo, this, localej)));
      }
      if ((!bool) && (p()))
        p.a().k().m().c();
    }
    if (this.n > 0.0F)
      this.n -= paramFloat;
    while (true)
    {
      return super.a(paramFloat);
      label203: i1 = 0;
      break;
      label208: this.p = (paramFloat + this.p);
      break label59;
      if (this.m < 1.0F)
        this.m += paramFloat / 2.0F;
    }
  }

  public final void b(boolean paramBoolean)
  {
    this.w = paramBoolean;
    v localv = new v(2.0F);
    o localo = new o();
    localv.b = this.i;
    this.p = 0.0F;
    this.q = (localv.c() - 0.05F);
    this.r = (0.1F + this.q);
    this.s = (this.r - 0.3F * localo.d());
    this.t = (this.s + localo.c());
    this.u = new com.nianticproject.ingress.common.scanner.visuals.t(localv, this, this);
    this.u.a(true);
    p.a().k().a(new e(this.u));
  }

  public final void c(float paramFloat)
  {
    this.n = paramFloat;
    this.m = 0.0F;
  }

  public final String d()
  {
    return this.f.getGuid();
  }

  protected final String j()
  {
    return "Resonator";
  }

  public final Color k()
  {
    if ((this.p < this.r) && (this.j != null))
    {
      float f = y.a(this.q, this.r, this.p);
      i.a(this.k, this.j, g(), f);
      return this.k;
    }
    return g();
  }

  public final Color n()
  {
    Resonator localResonator = (Resonator)e().getComponent(Resonator.class);
    return ea.H[localResonator.getLevel()];
  }

  protected final void o()
  {
    try
    {
      aj.a("ScannerResonatorEntity.processGameEntity");
      this.l = b.a(e());
      this.i = ea.c(this.l);
      this.v = c.a(this.f.getGuid());
      super.o();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean p()
  {
    return (this.w) || ((!this.v) && (this.p >= this.t));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fu
 * JD-Core Version:    0.6.2
 */