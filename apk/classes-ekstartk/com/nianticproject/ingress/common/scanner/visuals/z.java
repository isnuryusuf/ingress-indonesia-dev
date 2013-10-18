package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.shared.aj;

public class z
  implements o
{
  protected static final ShaderProgram c = ag.aC;
  protected final ai a;
  protected final Texture b;
  protected final float d;
  protected final float e;
  protected final float f;
  protected final float g;
  protected final Matrix4 h = new Matrix4();
  protected float i;

  protected z(ai paramai, Texture paramTexture, float paramFloat1, float paramFloat2)
  {
    this.a = paramai;
    this.b = paramTexture;
    this.d = paramFloat1;
    this.e = (1.0F / paramFloat1);
    this.f = 1.0F;
    this.g = paramFloat2;
    this.i = 0.0F;
  }

  public static z a(com.nianticproject.ingress.shared.af paramaf, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    switch (aa.a[paramaf.ordinal()])
    {
    default:
      throw new IllegalArgumentException(paramaf + " does not have an associated FireRadialWeaponVisuals");
    case 1:
      return new z(ag.ai, ag.aj, paramFloat1, paramFloat2);
    case 2:
    }
    return new af(paramFloat2, paramFloat3);
  }

  public void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("FireRadialWeaponVisuals.draw");
      float f1 = Math.min(1.0F, this.i / 0.25F);
      float f2 = Math.min(1.75F, this.d - this.i) / 1.75F;
      float f3 = b();
      this.h.set(paramf.e()).mul(paramMatrix4).scale(f3, 1.0F, f3).rotate(0.0F, 1.0F, 0.0F, 45.0F * this.i);
      GL20 localGL20 = Gdx.gl20;
      localGL20.glEnable(3042);
      localGL20.glBlendFunc(770, 1);
      localGL20.glDepthMask(false);
      this.b.bind(0);
      this.a.a(c);
      c.begin();
      c.setUniformi("u_texture", 0);
      c.setUniformf("u_color", 1.0F, 1.0F, 1.0F, Math.min(f1, f2));
      c.setUniformMatrix("u_modelViewProject", this.h);
      this.a.h();
      this.h.rotate(0.0F, 1.0F, 0.0F, 45.0F * (-2.0F * this.i));
      this.h.translate(0.0F, 0.2F, 0.0F);
      c.setUniformf("u_color", 1.0F, 1.0F, 1.0F, 0.5F * Math.min(f1, f2));
      c.setUniformMatrix("u_modelViewProject", this.h);
      this.a.h();
      this.a.c(c);
      localGL20.glBlendFunc(770, 771);
      localGL20.glDisable(3042);
      localGL20.glDepthMask(true);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    this.i = (paramFloat + this.i);
    return !c();
  }

  public float b()
  {
    float f1 = Math.min(1.0F, this.i * this.e);
    float f2 = this.f;
    float f3 = this.g;
    return f2 + (float)Math.sqrt(f1) * (f3 - f2);
  }

  public final boolean c()
  {
    return this.i > this.d;
  }

  public void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.z
 * JD-Core Version:    0.6.2
 */