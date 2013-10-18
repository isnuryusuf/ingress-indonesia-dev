package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.ad;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;

public final class aj extends e
{
  private static final ad i = new ak();
  private ai a;
  private final Vector3 b = new Vector3();
  private float c;
  private float d;
  private float e;
  private float f;
  private float g;
  private final Rectangle h = new Rectangle();

  public aj(ai paramai, Vector3 paramVector3, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    super(i);
    this.a = paramai;
    this.b.set(paramVector3);
    this.c = 3.0F;
    this.d = paramFloat1;
    this.e = paramFloat2;
    this.f = paramFloat3;
    this.g = paramFloat4;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    this.a.a(paramf, paramMatrix4, this.b, this.c, this.h);
    super.a(paramMatrix4, paramf, paramn);
  }

  public final void a(af paramaf)
  {
    paramaf.h().setUniformf("u_color", this.d, this.e, this.f, this.g);
    paramaf.h().setUniformf("u_rect", this.h.x, this.h.y, this.h.width, this.h.height);
    super.a(paramaf);
  }

  public final void b(float paramFloat)
  {
    this.c = paramFloat;
  }

  public final void c(float paramFloat)
  {
    this.g = paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.aj
 * JD-Core Version:    0.6.2
 */