package com.nianticproject.ingress.common.ui.g;

import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.shared.n;

final class h extends Button
{
  private final q a;
  private final Skin b;
  private final av c;
  private final k d;
  private n e;
  private a f;
  private int g;

  private h(q paramq, Skin paramSkin, av paramav, k paramk)
  {
  }

  public static h a(Skin paramSkin, av paramav, k paramk)
  {
    return new h(null, paramSkin, paramav, paramk);
  }

  public static h a(q paramq, Skin paramSkin, av paramav, k paramk)
  {
    return new h((q)an.a(paramq), paramSkin, paramav, paramk);
  }

  final void a()
  {
    if (this.f == null)
    {
      if (this.a != null)
        this.f = new i(this, this.a, this.c, this.d, this.b, this.g, this.e);
    }
    else
      return;
    this.f = new b(this, this.b);
  }

  final void a(int paramInt)
  {
    this.g = paramInt;
    if (this.f != null)
      this.f.a(paramInt);
  }

  final String b()
  {
    if (this.f == null)
      return "";
    return this.f.a();
  }

  final String c()
  {
    if (this.f == null)
      return "";
    return this.f.b();
  }

  final void d()
  {
    if (this.f != null)
      this.f.d();
  }

  final void e()
  {
    if (this.f != null)
    {
      reset();
      this.f.c();
      this.f = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.h
 * JD-Core Version:    0.6.2
 */