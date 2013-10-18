package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.j.a;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.common.w.w;
import com.nianticproject.ingress.shared.aj;

public final class aw
  implements Disposable, o
{
  public static final Color a = Color.RED;
  public static final Color b = Color.WHITE;
  private static final float[] c = { 0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F };
  private static final short[] d = { 0, 1, 2, 2, 1, 3 };
  private static ai e;
  private static Texture f;
  private static Texture g;
  private static ShaderProgram h;
  private static final w i = new w();
  private float j;
  private boolean k;
  private float l;
  private boolean m;
  private final k n;
  private final bb o;
  private final Color p;

  public aw(k paramk, String paramString, Color paramColor)
  {
    this.n = paramk;
    this.p = ((Color)an.a(paramColor));
    this.k = true;
    this.l = 4.0F;
    this.o = new bb(this, paramString);
    this.n.a(this.o);
  }

  public static void a(boolean paramBoolean)
  {
    try
    {
      aj.a("InterferenceVisuals.createResources");
      boolean bool = i.a(paramBoolean);
      if (!bool)
        return;
      VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[1];
      arrayOfVertexAttribute[0] = new VertexAttribute(0, 2, "a_position");
      c.a("CreateInterferenceMesh", a.a(c, d, null, arrayOfVertexAttribute), new ax());
      c.a("CreateInterferenceTexture", c.b("scanner/zeroxm_static.png", false), Texture.TextureFilter.Linear, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat, Texture.TextureWrap.Repeat, new ay());
      c.a("CreateInterferenceNoiseTexture", c.b("scanner/zeroxm_static_noise.png", false), Texture.TextureFilter.Nearest, Texture.TextureFilter.Nearest, Texture.TextureWrap.Repeat, Texture.TextureWrap.Repeat, new az());
      ad.a("CreateInterferenceShader", "attribute vec2 a_position;\nuniform vec2 u_uvBias;\nvarying vec2 v_texCoord0;\nvarying vec2 v_texCoord1;\nvarying vec2 v_texCoord2;\nvoid main() {\n  v_texCoord0 = a_position.xy;\n  v_texCoord1 = u_uvBias + a_position.xy;\n  v_texCoord2 = u_uvBias - a_position.xy;\n  gl_Position = vec4(a_position.xy * 2.0 - 1.0, 1, 1);\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nuniform sampler2D u_texture;\nuniform sampler2D u_textureNoise;\nuniform float u_rampTarget;\nuniform vec3 u_noiseColor;\nvarying vec2 v_texCoord0;\nvarying vec2 v_texCoord1;\nvarying vec2 v_texCoord2;\nvoid main() {\n  vec4 scans = texture2D(u_texture, v_texCoord0);\n  vec4 noise_down = texture2D(u_textureNoise, v_texCoord1);\n  vec4 noise_up = texture2D(u_textureNoise, v_texCoord2);\n  float flicker_alpha = abs(noise_down.a - u_rampTarget);  flicker_alpha = flicker_alpha < 0.15 ? 0.0 : flicker_alpha * 0.6;\n  gl_FragColor = vec4(mix(scans.aaa, noise_up.aaa, 0.5) * u_noiseColor, flicker_alpha);\n}\n", new ba());
      i.c();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public static void c()
  {
    if (!i.d())
      return;
    ac.a(e);
    e = null;
    ac.a(f);
    f = null;
    ac.a(h);
    h = null;
    i.e();
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("InterferenceVisuals.draw");
      if (this.k)
      {
        GL20 localGL20 = Gdx.gl20;
        localGL20.glEnable(3042);
        localGL20.glDisable(2884);
        localGL20.glDisable(2929);
        localGL20.glDepthMask(false);
        g.bind(1);
        f.bind(0);
        h.begin();
        h.setUniformi("u_textureNoise", 1);
        h.setUniformi("u_texture", 0);
        h.setUniformf("u_noiseColor", this.p.r, this.p.g, this.p.b);
        h.setUniformf("u_uvBias", 0.0F, 20.0F * this.j / 2.5F % 1.0F);
        h.setUniformf("u_rampTarget", Math.abs(this.j % 0.2F - 0.1F));
        e.a(h);
        e.h();
        e.c(h);
        h.end();
        localGL20.glDisable(3042);
        localGL20.glEnable(2884);
        localGL20.glEnable(2929);
        localGL20.glDepthMask(true);
      }
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
    this.j = (paramFloat + this.j);
    if (this.j > this.l)
      if (this.k)
        break label63;
    label63: for (boolean bool = true; ; bool = false)
    {
      this.k = bool;
      float f1 = this.l;
      this.l = (f1 + 4.0F);
      if (this.m)
        break;
      return true;
    }
    return false;
  }

  public final void b()
  {
    this.m = true;
  }

  public final void dispose()
  {
    this.n.b(this.o);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.aw
 * JD-Core Version:    0.6.2
 */