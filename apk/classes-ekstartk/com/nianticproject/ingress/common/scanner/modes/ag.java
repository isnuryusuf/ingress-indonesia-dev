package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.google.a.c.du;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.scanner.z;
import com.nianticproject.ingress.common.ui.d.e;
import com.nianticproject.ingress.common.ui.e.b;
import com.nianticproject.ingress.common.ui.e.d;
import com.nianticproject.ingress.gameentity.f;

public abstract class ag extends e
  implements com.nianticproject.ingress.common.ui.e.a
{
  protected boolean a;
  protected float b;
  protected final com.nianticproject.ingress.common.scanner.k c;
  protected final j d;
  protected final ej e;
  protected ej f;
  private as g;
  private z h;
  private float i = 350.0F;
  private float j = 20.0F;
  private com.nianticproject.ingress.common.model.k k = null;
  private com.google.a.d.u l;
  private com.nianticproject.ingress.common.u m = null;
  private float n;
  private float o;
  private boolean p;
  private boolean q;

  public ag(com.nianticproject.ingress.common.scanner.k paramk, j paramj, ej paramej)
  {
    this.d = paramj;
    this.e = paramej;
    this.f = paramej;
    this.c = paramk;
    if (paramej != null)
    {
      this.m = p.a().j().a(30);
      this.m.a(paramej.c());
    }
  }

  private void e()
  {
    if ((this.a) && (this.g != null) && (this.f != null))
    {
      Vector2 localVector2 = this.f.b();
      Vector3 localVector3 = new Vector3(localVector2.x, 0.0F, localVector2.y);
      bz localbz = new bz(this.d, localVector3, this.i, this.j, this.n, this.o, this.g.b());
      this.g.a(localbz, 0.75F);
    }
  }

  public final d a()
  {
    return new d(false, false);
  }

  protected void a(com.google.a.d.u paramu1, com.google.a.d.u paramu2)
  {
  }

  public void a(as paramas)
  {
    this.g = paramas;
    this.a = true;
    this.q = this.c.t();
    if (this.q)
      this.c.c(false);
    this.p = com.nianticproject.ingress.common.scanner.k.u();
    if (this.p)
      this.c.b(false);
    this.h = this.c.C();
    if (!a.an())
      return;
    e();
  }

  public void a(GameState paramGameState)
  {
    if ((this.e == null) || (paramGameState.disappeared.contains(this.e.e().getGuid())))
      this.a = false;
  }

  protected final void a(com.nianticproject.ingress.common.model.k paramk)
  {
    this.k = paramk;
  }

  public final void a(ej paramej, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (paramej != null);
    for (this.f = paramej; ; this.f = this.e)
    {
      this.n = paramFloat3;
      this.o = paramFloat4;
      this.i = paramFloat1;
      this.j = paramFloat2;
      e();
      return;
    }
  }

  public boolean a(float paramFloat)
  {
    if (this.a)
    {
      this.b = (paramFloat + this.b);
      if ((this.k != null) && (this.k.g() != null))
      {
        com.google.a.d.u localu = this.k.g().a();
        if ((this.l == null) || (!localu.c(this.l)))
        {
          a(this.l, localu);
          this.l = localu;
        }
      }
    }
    return this.a;
  }

  public boolean a(ej paramej)
  {
    if ((paramej == this.e) || (paramej == this.f));
    for (boolean bool = true; ; bool = false)
    {
      if (!bool)
        this.c.B().a();
      return bool;
    }
  }

  public final boolean a(bt parambt)
  {
    return false;
  }

  public void b()
  {
    if (this.p)
      this.c.b(true);
    if (this.q)
      this.c.c(true);
    this.h.a();
    this.a = false;
  }

  public final void b(float paramFloat1, float paramFloat2)
  {
    a(this.f, this.i, this.j, paramFloat1, paramFloat2);
  }

  protected final void c()
  {
    this.a = false;
  }

  public final void d()
  {
    a(this.f, 300.0F, 20.0F, this.o, this.n);
  }

  public void dispose()
  {
    if (this.m != null)
    {
      this.m.a();
      this.m = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.ag
 * JD-Core Version:    0.6.2
 */