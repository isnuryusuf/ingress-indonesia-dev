package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.common.w.w;
import com.nianticproject.ingress.shared.aj;

public final class bo
  implements m, o
{
  private static final float a = (float)Math.cos(Math.toRadians(20.0D));
  private static final float b = (float)Math.cos(Math.toRadians(45.0D));
  private static ai c;
  private static Texture d;
  private static ShaderProgram e;
  private static final w f = new w();
  private final ed g;
  private final k h;
  private final Matrix4 i = new Matrix4();

  public bo(ed paramed, k paramk)
  {
    this.g = paramed;
    this.h = paramk;
  }

  public static void b()
  {
    try
    {
      aj.a("PlayerCompassVisuals.createResources");
      boolean bool = f.b();
      if (!bool)
        return;
      c.a("CreateXmpRingMesh", c.e("scanner/emp_ring.obj"), new bp());
      c.a("CreatePlayerCompassTexture", c.b("scanner/compass_ring.png", true), Texture.TextureFilter.MipMapNearestLinear, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat, Texture.TextureWrap.ClampToEdge, new bq());
      ad.a("CreatePlayerCompassShader", "attribute vec4 a_position;\nattribute vec2 a_texCoord0;\nuniform mat4 u_modelViewProject;\nuniform vec2 u_uvScale;\nuniform vec3 u_bearing;\nuniform vec2 u_bearingThreshold;\nuniform vec4 u_color;\nuniform vec4 u_bearingColor;\nvarying vec2 v_texCoord0;\nvarying vec4 v_bearingColor;\nvoid main() {\n   v_texCoord0 = u_uvScale * a_texCoord0;\n   vec3 normalizedPos = normalize(a_position.xyz);\n   float bearingDot = dot(normalizedPos, u_bearing);   float bearingStrength = (bearingDot - u_bearingThreshold.x) * u_bearingThreshold.y;   v_bearingColor = mix(u_color, u_bearingColor, clamp(bearingStrength, 0.0, 1.0));\n   gl_Position = u_modelViewProject * a_position;\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nuniform sampler2D u_texture;\nvarying vec4 v_bearingColor;\nvarying vec2 v_texCoord0;\nvoid main() {\n  gl_FragColor = v_bearingColor + texture2D(u_texture, v_texCoord0);\n}\n", new br());
      f.c();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public static void c()
  {
    if (!f.d())
      return;
    ac.a(c);
    c = null;
    ac.a(d);
    d = null;
    ac.a(e);
    e = null;
    f.e();
  }

  static ai d()
  {
    return c;
  }

  static Texture e()
  {
    return d;
  }

  static ShaderProgram f()
  {
    return e;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    this.i.set(paramf.e()).mul(paramMatrix4).scale(40.0F, 1.0F, 40.0F);
    paramn.a(bt.e, this);
  }

  public final void a(af paramaf)
  {
    try
    {
      aj.a("PlayerCompassVisuals.draw");
      Color localColor1 = Color.BLACK;
      Color localColor2 = ea.u;
      d.bind(0);
      e.begin();
      e.setUniformi("u_texture", 0);
      ad.a(e, "u_color", localColor1, 0.0F);
      e.setUniformf("u_uvScale", 5.0F, 1.0F);
      e.setUniformMatrix("u_modelViewProject", this.i);
      if (this.g.a())
      {
        float f1 = (float)(this.g.f() - Math.toDegrees(this.h.f()));
        e.setUniformf("u_bearing", -MathUtils.sinDeg(f1), 0.0F, MathUtils.cosDeg(f1));
        ad.a(e, "u_bearingColor", localColor2, 0.0F);
        float f2 = Math.max(Math.min(Math.min((float)this.g.c(), 200.0F) / 200.0F, a), b);
        e.setUniformf("u_bearingThreshold", f2, 1.0F / (1.0F - f2));
      }
      while (true)
      {
        c.a(e);
        c.h();
        c.c(e);
        return;
        e.setUniformf("u_bearing", 1.0F, 0.0F, 0.0F);
        ad.a(e, "u_bearingColor", localColor1, 0.0F);
        e.setUniformf("u_bearingThreshold", 1.0F, 1.0F);
      }
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
    return true;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bo
 * JD-Core Version:    0.6.2
 */