package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.ak;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.am;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.q.b;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public final class m
  implements Disposable, com.nianticproject.ingress.common.j.o
{
  private static m a;
  private static final float[] c = { 0.0F, 0.0F, 1.0F, 1.0F };
  private static final float[] d = { 1.0F, 0.0F, 1.0F, 0.0F };
  private String b = "u_globParams";
  private final Matrix4 e = new Matrix4();
  private final Vector3 f = new Vector3();
  private final fp g;
  private final bc h;
  private final com.nianticproject.ingress.common.j.an i;
  private final am j;
  private ak<double[], double[]> k;
  private List<o> l;
  private final float[] m = new float[600];
  private boolean n = false;

  public m(fp paramfp)
  {
    this.g = ((fp)com.google.a.a.an.a(paramfp));
    float[] arrayOfFloat = e();
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[1];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 3, "a_position");
    this.i = new com.nianticproject.ingress.common.j.an(arrayOfFloat, arrayOfVertexAttribute);
    this.j = new am(d());
    this.h = new n(this, paramfp);
    String[] arrayOfString = ag.aO.getUniforms();
    int i1 = arrayOfString.length;
    for (int i2 = 0; ; i2++)
      if (i2 < i1)
      {
        if (arrayOfString[i2].endsWith("[0]"))
          this.b += "[0]";
      }
      else
      {
        a = this;
        return;
      }
  }

  private static int a(float[] paramArrayOfFloat, int paramInt, float paramFloat)
  {
    for (int i1 = 0; i1 < 4; i1++)
    {
      paramArrayOfFloat[(paramInt + 0)] = c[i1];
      paramArrayOfFloat[(paramInt + 1)] = d[i1];
      paramArrayOfFloat[(paramInt + 2)] = paramFloat;
      paramInt += 3;
    }
    return paramInt;
  }

  public static m b()
  {
    return a;
  }

  private static short[] d()
  {
    short[] arrayOfShort1 = new short[720];
    short[] arrayOfShort2 = { 0, 1, 2, 1, 3, 2 };
    int i1 = 0;
    int i2 = 0;
    while (i1 < 720)
    {
      for (int i3 = 0; i3 < 6; i3++)
        arrayOfShort1[(i1 + i3)] = ((short)(i2 + arrayOfShort2[i3]));
      i2 += 4;
      i1 += 6;
    }
    return arrayOfShort1;
  }

  private static float[] e()
  {
    int i1 = 0;
    new Random();
    float[] arrayOfFloat = new float[1440];
    int i2 = 0;
    while (i1 < 120)
    {
      i2 = a(arrayOfFloat, i2, i1);
      i1++;
    }
    return arrayOfFloat;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, com.nianticproject.ingress.common.j.n paramn)
  {
    if (!this.n)
      return;
    while (true)
    {
      GL20 localGL20;
      int i1;
      int i2;
      try
      {
        aj.a("ParticleEnergyGlobVisuals.draw");
        localGL20 = Gdx.gl20;
        localGL20.glDisable(2884);
        localGL20.glEnable(3042);
        localGL20.glBlendFunc(770, 1);
        localGL20.glDepthMask(false);
        this.f.set(paramf.k());
        ShaderProgram localShaderProgram1 = ag.aS;
        ag.aX.bind(0);
        localShaderProgram1.begin();
        this.j.a();
        this.i.a(localShaderProgram1);
        this.e.set(paramf.e());
        localShaderProgram1.setUniformMatrix("u_modelViewProject", this.e);
        localShaderProgram1.setUniformf("u_cameraPos", this.f);
        localShaderProgram1.setUniformi("u_texture", 0);
        i1 = 0;
        break label576;
        localShaderProgram1.setUniform2fv(this.b, this.m, i1 * 2, 240);
        Gdx.gl20.glDrawElements(4, i2 * 6, 5123, 0);
        i1 = i2 + i1;
        break label576;
        this.i.b(localShaderProgram1);
        localShaderProgram1.end();
        localGL20.glBlendFunc(770, 771);
        localGL20.glEnable(2884);
        localGL20.glDisable(3042);
        localGL20.glDepthMask(true);
        localGL20.glEnable(3042);
        localGL20.glDepthMask(false);
        Texture localTexture = bo.e();
        ShaderProgram localShaderProgram2 = bo.f();
        ai localai = bo.d();
        localTexture.bind();
        localShaderProgram2.begin();
        localai.a(localShaderProgram2);
        u localu = this.g.a();
        double d1 = b.d(localu.e());
        double d2 = b.e(localu.b());
        Iterator localIterator = this.l.iterator();
        if (localIterator.hasNext())
        {
          o localo = (o)localIterator.next();
          float f1 = (float)(o.a(localo) / 1.0D / b.a(localu.b()));
          double d3 = -(o.b(localo) - d1) / b.a(localu.b());
          double d4 = -(o.c(localo) - d2) / b.a(localu.b());
          this.e.set(paramf.e()).translate((float)d3, 0.0F, (float)d4).mul(paramMatrix4).scale(f1, 1.0F, f1);
          localShaderProgram2.setUniformi("u_texture", 0);
          localShaderProgram2.setUniformf("u_uvScale", 5.0F, 1.0F);
          localShaderProgram2.setUniformMatrix("u_modelViewProject", this.e);
          ad.a(localShaderProgram2, "u_color", o.d(localo));
          localShaderProgram2.setUniformf("u_bearing", 1.0F, 0.0F, 0.0F);
          ad.a(localShaderProgram2, "u_bearingColor", o.d(localo));
          localShaderProgram2.setUniformf("u_bearingThreshold", 1.0F, 1.0F);
          localai.h();
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      localGL20.glDisable(3042);
      localGL20.glDepthMask(true);
      aj.b();
      return;
      label576: if (i1 < 300)
      {
        i2 = 120;
        if (300 - i1 < 120)
          i2 = 60;
      }
    }
  }

  public final void a(ak<double[], double[]> paramak)
  {
    this.k = paramak;
  }

  public final void a(List<o> paramList)
  {
    this.l = paramList;
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    if (!this.n)
      return true;
    ak localak = this.k;
    if (localak == null)
    {
      for (int i2 = 0; i2 < 300; i2++)
      {
        this.m[(0 + i2 * 2)] = 0.0F;
        this.m[(1 + i2 * 2)] = 0.0F;
      }
      return true;
    }
    double[] arrayOfDouble1 = (double[])localak.a;
    double[] arrayOfDouble2 = (double[])localak.b;
    u localu = this.g.a();
    double d1 = b.d(localu.e());
    double d2 = b.e(localu.b());
    double d3 = 1.0D / b.a(localu.b());
    for (int i1 = 0; i1 < 300; i1++)
    {
      this.m[(0 + i1 * 2)] = ((float)(d3 * (d1 - arrayOfDouble1[i1])));
      this.m[(1 + i1 * 2)] = ((float)(d3 * (d2 - arrayOfDouble2[i1])));
    }
    return true;
  }

  public final void c()
  {
    this.n = true;
  }

  public final void dispose()
  {
    ac.a(this.i);
    ac.a(this.j);
    ac.a(this.h);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.m
 * JD-Core Version:    0.6.2
 */