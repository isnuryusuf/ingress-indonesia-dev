package com.nianticproject.ingress.common.inventory;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.nianticproject.ingress.common.ab;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.g.g;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.inventory.ui.ac;
import com.nianticproject.ingress.common.inventory.ui.v;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.ad;

public class a extends com.nianticproject.ingress.common.ui.a
{
  protected String a;
  private final e b;
  private final ab c;
  private final v d;
  private final g e;

  public a(e parame, av paramav, ac paramac, k paramk, l paraml)
  {
    super("InventoryGl");
    this.b = parame;
    this.d = new v(paramk, paramac, paramav, parame, paraml);
    b localb = new b(this, parame, paramk);
    this.e = new d(this, localb);
    this.c = new ab();
    this.c.a(localb);
    this.c.c();
    K().a(this.d);
  }

  public final void a()
  {
    this.e.a();
    this.b.a(this.e);
    Gdx.gl.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
    v.f();
    this.d.e();
    if (this.a != null)
      this.d.a(this.a);
    this.d.b(this.d.c());
  }

  public final void a(float paramFloat)
  {
    this.d.a();
  }

  protected final String d()
  {
    return "InventoryGl";
  }

  public final void e()
  {
    this.b.b(this.e);
    this.a = this.d.b();
    this.d.d();
    this.d.g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.a
 * JD-Core Version:    0.6.2
 */