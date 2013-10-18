package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.shared.aj;

public class a extends e
{
  private static final ad g = new b();
  private ai a;
  private final Vector3 b = new Vector3();
  private float c;
  private Color d = new Color();
  private final Rectangle e = new Rectangle();
  private float f;

  public a(ai paramai, Color paramColor)
  {
    super(g);
    this.a = paramai;
    this.c = 0.6F;
    this.d.set(paramColor);
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    aj.a("ActionGlowVisuals.draw");
    this.a.a(paramf, paramMatrix4, this.b, this.c, this.e);
    Rectangle localRectangle1 = this.e;
    localRectangle1.height = (2.75F * localRectangle1.height);
    Rectangle localRectangle2 = this.e;
    localRectangle2.y += -0.3F * this.e.height;
    super.a(paramMatrix4, paramf, paramn);
    aj.b();
  }

  public final void a(af paramaf)
  {
    paramaf.h().setUniformf("u_color", this.d);
    paramaf.h().setUniformf("u_rect", this.e.x, this.e.y, this.e.width, this.e.height);
    paramaf.h().setUniformf("u_time", this.f);
    paramaf.h().setUniformf("u_yCuttoff", -0.05F, -0.2F);
    super.a(paramaf);
  }

  public boolean a(float paramFloat)
  {
    this.f = (paramFloat + this.f);
    return true;
  }

  protected final float b()
  {
    return this.f;
  }

  public final void b(float paramFloat)
  {
    this.d.a = paramFloat;
  }

  public final void c()
  {
    this.c = 1.2F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a
 * JD-Core Version:    0.6.2
 */