package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.google.a.a.an;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.j.a;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.shared.aj;

public final class ab
  implements o
{
  private static Texture a;
  private static ShaderProgram b;
  private static ai c;
  private final float d = 1000.0F;
  private final float e = 100.0F * (float)Math.random();
  private final float f = 10.0F;
  private final eo g;
  private final eo h;
  private float i;
  private final Matrix4 j = new Matrix4();

  public ab(eo parameo1, eo parameo2)
  {
    this.g = parameo1;
    this.h = parameo2;
    this.i = 0.0F;
  }

  private static float a(int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    label20: boolean bool4;
    label32: float f1;
    label48: boolean bool5;
    if (paramInt1 >= 0)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramInt1 > paramInt2)
        break label82;
      bool3 = bool1;
      an.a(bool3);
      if (paramInt2 < 0)
        break label88;
      bool4 = bool1;
      an.a(bool4);
      if (paramInt2 <= 0)
        break label94;
      f1 = paramInt1 / paramInt2;
      if (f1 < 0.0F)
        break label100;
      bool5 = bool1;
      label58: an.a(bool5);
      if (f1 > 1.0F)
        break label106;
    }
    while (true)
    {
      an.a(bool1);
      return f1;
      bool2 = false;
      break;
      label82: bool3 = false;
      break label20;
      label88: bool4 = false;
      break label32;
      label94: f1 = 0.0F;
      break label48;
      label100: bool5 = false;
      break label58;
      label106: bool1 = false;
    }
  }

  public static void b()
  {
    int k;
    int n;
    int m;
    try
    {
      aj.a("FireTargetedWeaponVisuals.createResources");
      c.a("CreateFireTargetedWeaponTexture", c.b("scanner/portalAttackTexture.png", true), Texture.TextureFilter.MipMapLinearLinear, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat, Texture.TextureWrap.ClampToEdge, new ac());
      com.nianticproject.ingress.common.w.ad.a("shaders/portal_attack.glsl.vert", "shaders/portal_attack.glsl.frag", new ad());
      VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[1];
      arrayOfVertexAttribute[0] = new VertexAttribute(0, 3, "v_interps");
      float[] arrayOfFloat = new float[360];
      short[] arrayOfShort = new short[342];
      k = 0;
      break label282;
      while (n < 2)
      {
        int i3 = 3 * (n + 2 * (m + k * 20));
        arrayOfFloat[(i3 + 0)] = a(k, 3);
        arrayOfFloat[(i3 + 1)] = a(m, 19);
        arrayOfFloat[(i3 + 2)] = a(n, 1);
        n++;
      }
      if (m < 19)
      {
        int i1 = 6 * (m + k * 19);
        int i2 = 2 * (m + k * 20);
        arrayOfShort[(i1 + 0)] = ((short)(i2 + 0));
        arrayOfShort[(i1 + 1)] = ((short)(i2 + 1));
        arrayOfShort[(i1 + 2)] = ((short)(i2 + 2));
        arrayOfShort[(i1 + 3)] = ((short)(i2 + 2));
        arrayOfShort[(i1 + 4)] = ((short)(i2 + 1));
        arrayOfShort[(i1 + 5)] = ((short)(i2 + 3));
        break label304;
        label253: c.a("CreateFireTargetedWeaponMesh", a.a(arrayOfFloat, arrayOfShort, null, arrayOfVertexAttribute), new ae());
        return;
      }
    }
    finally
    {
      aj.b();
    }
    while (true)
    {
      label282: if (k >= 3)
        break label253;
      label304: for (m = 0; ; m++)
      {
        if (m >= 20)
          break label310;
        n = 0;
        break;
      }
      label310: k++;
    }
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    try
    {
      aj.a("FireTargetedWeaponVisuals.draw");
      if (this.i < this.f)
      {
        GL20 localGL20 = Gdx.gl20;
        localGL20.glEnable(3042);
        localGL20.glBlendFunc(770, 1);
        localGL20.glDepthMask(false);
        localGL20.glDisable(2884);
        this.j.set(paramf.e()).mul(paramMatrix4);
        Vector2 localVector21 = this.g.b();
        Vector2 localVector22 = this.h.b();
        float f1 = (this.i + this.e) % 2000.0F;
        a.bind(0);
        b.begin();
        c.a(b);
        b.setUniformi("u_texture", 0);
        b.setUniformMatrix("u_modelViewProject", this.j);
        b.setUniformf("u_xz0", localVector21);
        b.setUniformf("u_xz1", localVector22);
        b.setUniformf("u_time", f1);
        c.h();
        c.c(b);
        localGL20.glEnable(2884);
        localGL20.glDisable(3042);
        localGL20.glBlendFunc(770, 771);
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
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.i = (paramFloat + this.i);
    if (this.i >= this.f);
    for (int k = 1; k == 0; k = 0)
      return true;
    return false;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.ab
 * JD-Core Version:    0.6.2
 */