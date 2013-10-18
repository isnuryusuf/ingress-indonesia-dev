package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.collision.Ray;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.aj;
import com.nianticproject.ingress.common.j.ak;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.ag;

final class cd
  implements aj, m, o
{
  private final Matrix4 b = new Matrix4();

  private cd(bt parambt)
  {
  }

  public final ak a(Ray paramRay)
  {
    Float localFloat = bt.m(this.a).a(paramRay, 1.1F);
    if (localFloat == null)
      return null;
    return new ak(this.a, localFloat.floatValue());
  }

  public final ak a(f paramf, Matrix4 paramMatrix4, Vector2 paramVector2)
  {
    Float localFloat = bt.m(this.a).a(paramf, paramMatrix4, paramVector2, 1.0F);
    if (localFloat == null)
      return null;
    return new ak(this.a, localFloat.floatValue());
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    this.b.set(paramf.e());
    Matrix4.mul(this.b.val, paramMatrix4.val);
    paramn.a(bt.e(), this);
  }

  public final void a(af paramaf)
  {
    GL20 localGL20 = Gdx.gl20;
    localGL20.glDisable(2884);
    localGL20.glEnable(3042);
    localGL20.glDepthMask(false);
    ShaderProgram localShaderProgram = ag.O;
    Texture localTexture = ag.N;
    ai localai = ag.L;
    localTexture.bind(0);
    localShaderProgram.begin();
    localShaderProgram.setUniformMatrix("u_modelViewProject", this.b);
    localShaderProgram.setUniformf("u_color", bt.h(this.a).r, bt.h(this.a).g, bt.h(this.a).b, 1.0F);
    localShaderProgram.setUniformf("u_flicker", 0.0F + (float)Math.sin(4.0F * bt.i(this.a)) / 8.0F);
    localai.a(localShaderProgram);
    localai.h();
    localai.c(localShaderProgram);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    if (bt.j(this.a))
    {
      if (bt.k(this.a) <= 0.0F)
        break label33;
      bt.a(this.a, paramFloat);
    }
    while (true)
    {
      return true;
      label33: bt.l(this.a);
    }
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cd
 * JD-Core Version:    0.6.2
 */