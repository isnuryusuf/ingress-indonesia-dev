package com.nianticproject.ingress.common.l;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.d.u;
import com.nianticproject.ingress.common.c.ak;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.k.z;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.af;

public class a extends com.nianticproject.ingress.common.ui.a
{
  private final l a;
  private final af b;
  private final d c;
  private aa d;
  private final k e;
  private final z f;

  public a(l paraml, af paramaf, k paramk, ak paramak)
  {
    super("IntelActivity");
    this.a = paraml;
    this.b = paramaf;
    this.c = new d(this, (byte)0);
    this.e = paramk;
    this.f = new z(paramak);
    K().a(this.c);
  }

  public final void a()
  {
    this.f.b();
    Gdx.gl.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
    this.d.a();
    this.a.a(new b(this, "IntelActivity.setScore"));
  }

  public final void a(float paramFloat)
  {
    this.f.a(paramFloat, false);
  }

  public final void a(Skin paramSkin)
  {
    com.nianticproject.ingress.common.ad localad = this.e.g();
    if (localad != null)
    {
      u localu = localad.a();
      this.c.f.a((float)localu.c(), (float)localu.f());
    }
  }

  protected final String d()
  {
    return "IntelActivity";
  }

  public final void e()
  {
    this.f.c();
    this.f.a();
  }

  public final void g()
  {
    this.c.f.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.l.a
 * JD-Core Version:    0.6.2
 */