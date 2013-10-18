package com.nianticproject.ingress.common.k;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.shared.aj;

public final class a
{
  private static final float[] a = { -1.0F, 1.0F, 1.0F, 0.0F };
  private static final float[] b = { 1.0F, 1.0F, 0.0F, 0.0F };
  private final Matrix4 c = new Matrix4();
  private final Matrix4 d = new Matrix4();
  private final Vector3 e = new Vector3();
  private final Vector3 f = new Vector3();
  private final Vector2 g = new Vector2();
  private final b h;
  private final f i;
  private float j;
  private float k;
  private float l;
  private float m;
  private float n;
  private float o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private float u;
  private float v = 1.0F;
  private boolean w;

  public a(f paramf, b paramb)
  {
    this.i = paramf;
    this.h = paramb;
  }

  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return paramFloat2 + 0.5F * ((paramFloat3 - paramFloat2) * (1.0F + paramFloat1));
  }

  private boolean d()
  {
    return this.u > 0.0F;
  }

  final void a()
  {
    int i1 = 1;
    if (!this.w)
      return;
    GL20 localGL20 = Gdx.gl20;
    localGL20.glEnable(3042);
    localGL20.glDisable(2929);
    Texture localTexture = c.g;
    ShaderProgram localShaderProgram = c.f;
    ai localai = c.e;
    if ((localTexture != null) && (localShaderProgram != null) && (localai != null));
    try
    {
      aj.a("DrawCrosshair");
      localTexture.bind(0);
      localShaderProgram.begin();
      localShaderProgram.setUniformMatrix("u_modelViewProject", new Matrix4(this.d).mul(this.c));
      localShaderProgram.setUniformi("u_texture", 0);
      if (MathUtils.floor(this.u / 0.1F) % 2.0F != 0.0F)
        if (i1 == 0)
          break label223;
      label223: float[] arrayOfFloat;
      for (Object localObject2 = a; ; localObject2 = arrayOfFloat)
      {
        localShaderProgram.setUniformf("u_texScaleAndBias", localObject2[0], localObject2[1], localObject2[2], localObject2[3]);
        ad.a(localShaderProgram, "u_color", Color.WHITE, this.v);
        localai.a(localShaderProgram);
        localai.h();
        localai.c(localShaderProgram);
        localShaderProgram.end();
        aj.b();
        localGL20.glEnable(2929);
        localGL20.glDisable(3042);
        return;
        i1 = 0;
        break;
        arrayOfFloat = b;
      }
    }
    finally
    {
      aj.b();
    }
  }

  final void a(float paramFloat)
  {
    r.a(this.s, this.t, 1.0F, this.e);
    this.f.set(this.e);
    this.f.mul(this.i.e());
    this.g.set(a(this.f.x / this.f.z, this.o, this.q), a(this.f.y / this.f.z, this.p, this.r));
    Vector2 localVector2 = this.g;
    this.l = localVector2.x;
    this.m = localVector2.y;
    this.n = Math.min(paramFloat + this.n, 1.5F);
    float f1 = Math.min(this.n, 0.1F) / 0.1F;
    float f2 = this.j;
    float f3 = f2 + f1 * (this.l - f2);
    float f4 = this.k;
    float f5 = f4 + f1 * (this.m - f4);
    if (!d())
    {
      f3 += 0.02F * (2.0F * MathUtils.random() - 1.0F);
      f5 += 0.02F * (2.0F * MathUtils.random() - 1.0F);
    }
    this.c.setToTranslation(f3, f5, 0.0F);
    if (this.n >= 1.5F)
      this.h.a();
    if (d())
      this.u = Math.max(this.u - paramFloat, 0.0F);
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    this.s = paramFloat1;
    this.t = paramFloat2;
    this.j = this.l;
    this.k = this.m;
    this.n = 0.0F;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    float f1 = paramInt2 / paramInt1;
    this.o = -3.0F;
    this.p = (-3.0F * f1);
    this.q = 3.0F;
    this.r = (f1 * 3.0F);
    this.d.setToOrtho(this.o, this.q, this.p, this.r, -1.0F, 1.0F);
  }

  public final void a(boolean paramBoolean)
  {
    this.w = paramBoolean;
  }

  public final void b()
  {
    this.u = 8.0F;
  }

  public final void b(float paramFloat)
  {
    this.v = paramFloat;
  }

  public final Vector3 c()
  {
    return this.e;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.a
 * JD-Core Version:    0.6.2
 */