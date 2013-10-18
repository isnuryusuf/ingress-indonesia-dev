package com.nianticproject.ingress.common.inventory.ui;

import a;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.gameentity.c;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.j.ac;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.visuals.b.e;
import com.nianticproject.ingress.common.scanner.visuals.b.w;
import com.nianticproject.ingress.common.w.z;
import java.util.Random;

public final class ao
  implements o
{
  public static final Color a = Color.WHITE;
  public static final Color b = new Color(0.69F, 0.63F, 0.9F, 1.0F);
  private static final Vector3 o = new Vector3(4.0F, 3.0F, 0.0F);
  private static final Vector3 p = new Vector3(0.0F, 0.2F, 0.0F);
  private float c = 0.0F;
  private final Matrix4 d = new Matrix4();
  private final Matrix4 e = new Matrix4();
  private q f;
  private d g;
  private Vector3 h = new Vector3(o);
  private Vector3 i = new Vector3(p);
  private float j = 300.0F * new Random().nextFloat();
  private final e k = new e(new w());
  private float l = 0.0F;
  private float m = 0.0F;
  private final ai n;

  public ao()
  {
    float[] arrayOfFloat = { -10.0F, -10.0F, 0.5F, -10.0F, 10.0F, 0.5F, 10.0F, 10.0F, 0.5F, -10.0F, -10.0F, 0.5F, 10.0F, -10.0F, 0.5F, 10.0F, 10.0F, 0.5F };
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[1];
    arrayOfVertexAttribute[0] = VertexAttribute.Position();
    this.n = new ai(arrayOfFloat, new VertexAttributes(arrayOfVertexAttribute));
  }

  public static com.nianticproject.ingress.common.j.f c()
  {
    ac localac = new ac(o, p, Vector3.Y);
    localac.a(30.0F);
    return localac;
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    if (this.f == null);
    while (true)
    {
      return;
      com.nianticproject.ingress.gameentity.f localf = this.f.h();
      Color localColor1 = g.d(localf);
      c localc = g.c(localf);
      ai localai1 = localc.a;
      ai localai2 = localc.b;
      Texture localTexture = localc.c;
      this.i = new Vector3(0.0F, 0.0F, 0.0F);
      float f1 = (float)(0.6499999761581421D / Math.tan(0.5235987755982988D));
      this.h = new Vector3(this.i.x, f1 + this.i.y, this.i.z + f1 * 2.0F);
      ((ac)paramf).a(this.h, this.i, Vector3.Y);
      this.d.set(paramMatrix4).rotate(0.0F, 1.0F, 0.0F, this.c);
      this.e.set(paramf.e().cpy().mul(this.d));
      if (localai2 != null)
      {
        ShaderProgram localShaderProgram2 = ag.c.a().h();
        localTexture.bind(0);
        localShaderProgram2.begin();
        localShaderProgram2.setUniformf("u_teamColor", a.r, a.g, a.b, a.a);
        localShaderProgram2.setUniformf("u_levelColor", localColor1.r, localColor1.g, localColor1.b, localColor1.a);
        localShaderProgram2.setUniformMatrix("u_modelViewProject", this.e);
        localai1.a(localShaderProgram2);
        localai1.h();
        localai1.c(localShaderProgram2);
        localShaderProgram2.end();
        if (!a.v())
        {
          ShaderProgram localShaderProgram3 = ag.d.a().h();
          Color localColor2 = g.e(localf);
          ag.h.bind(0);
          localShaderProgram3.begin();
          localShaderProgram3.setUniformi("u_texture", 0);
          localShaderProgram3.setUniformMatrix("u_modelViewProject", this.e);
          localShaderProgram3.setUniformf("u_elapsedTime", 0.1F * (this.j % 300.0F));
          localShaderProgram3.setUniformf("u_teamColor", localColor2.r, localColor2.g, localColor2.b, localColor2.a);
          localShaderProgram3.setUniformf("u_altColor", b.r, b.g, b.b, b.a);
          localai2.a(localShaderProgram3);
          localai2.h();
          localai2.c(localShaderProgram3);
          localShaderProgram3.end();
        }
      }
      while ((this.m > 0.0F) && (this.l > 0.0F))
      {
        float f2 = 1.0F - (float)Math.pow(this.m / this.l, 10.0D);
        this.d.set(paramMatrix4);
        this.e.set(paramf.e().cpy().mul(this.d));
        ai.k();
        Gdx.gl.glEnable(3042);
        ai.a(Color.BLACK, f2);
        this.n.a(this.e);
        this.n.b(4);
        this.n.j();
        Gdx.gl.glDisable(3042);
        this.k.a(paramMatrix4, paramf, null);
        return;
        if (this.g == null);
        for (TextureRegion localTextureRegion = null; ; localTextureRegion = this.g.b())
        {
          if (localTextureRegion == null)
            break label734;
          Gdx.gl.glEnable(3042);
          ShaderProgram localShaderProgram1 = ag.aD;
          localTextureRegion.getTexture().bind(0);
          localShaderProgram1.begin();
          localShaderProgram1.setUniformi("u_texture", 0);
          localai1.a(localShaderProgram1);
          this.e.set(paramf.e()).mul(this.d);
          localShaderProgram1.setUniformMatrix("u_modelViewProject", this.e);
          com.nianticproject.ingress.common.w.ad.a(localShaderProgram1, localTextureRegion);
          localai1.h();
          localai1.c(localShaderProgram1);
          Gdx.gl.glDisable(3042);
          break;
        }
        label734: ai.k();
        ai.a(ea.c);
        localai1.a(this.d, paramf.e());
        ai.a(ea.d);
        localai1.i();
        localai1.j();
      }
    }
  }

  public final void a(q paramq, d paramd)
  {
    this.f = paramq;
    this.g = paramd;
  }

  public final void a(q paramq, com.nianticproject.ingress.common.j.f paramf)
  {
    GL20 localGL20 = Gdx.graphics.getGL20();
    localGL20.glDepthMask(true);
    localGL20.glClearColor(0.0F, 0.0F, 0.0F, 0.0F);
    localGL20.glClear(16640);
    localGL20.glEnable(2929);
    localGL20.glDisable(2884);
    a(paramq, null);
    a(z.a, paramf, null);
    localGL20.glDisable(2929);
    localGL20.glDepthMask(false);
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    boolean bool = a.al();
    if (!bool)
      return bool;
    this.c += 35.0F * paramFloat;
    this.j = (paramFloat + this.j);
    if (this.m > 0.0F)
    {
      this.m -= paramFloat;
      this.k.a(paramFloat);
    }
    return true;
  }

  public final void b()
  {
    this.l = 4.8F;
    this.m = 4.8F;
  }

  public final void dispose()
  {
    this.k.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.ao
 * JD-Core Version:    0.6.2
 */