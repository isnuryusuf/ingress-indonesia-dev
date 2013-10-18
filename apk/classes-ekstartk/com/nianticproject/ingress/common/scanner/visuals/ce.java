package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.ao;
import com.nianticproject.ingress.common.j.ap;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.t;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.w.i;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.common.w.z;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.b.a;
import java.util.ArrayList;

public final class ce
  implements Disposable, o
{
  private static final Color a = new Color(0.46F, 0.18F, 0.18F, 1.0F);
  private static final float[] b = new float[101];
  private static final float[] c = new float[101];
  private final Matrix4 d = new Matrix4();
  private final Vector3 e = new Vector3();
  private final Vector3 f = new Vector3();
  private final Vector3 g = new Vector3();
  private final Vector3 h = new Vector3();
  private final Vector3 i = new Vector3();
  private final Vector3 j = new Vector3();
  private final Color k = new Color();
  private final fp l;
  private final bc m;
  private final t n;
  private boolean o;
  private com.nianticproject.ingress.gameentity.f p;
  private com.nianticproject.ingress.gameentity.f q;
  private Color r;
  private float s = 0.0F;

  static
  {
    for (int i1 = 0; i1 < 6; i1++)
    {
      float f1 = i1 / 5.0F;
      b[(i1 * 2)] = f1;
      c[(i1 * 2)] = y.a(1.0F - 2.0F * Math.abs(f1 - 0.5F));
      if (i1 != 6)
      {
        float f2 = f1 + 0.1F;
        b[(1 + i1 * 2)] = f2;
        c[(1 + i1 * 2)] = y.a(1.0F - 2.0F * Math.abs(f2 - 0.5F));
      }
    }
  }

  public ce(fp paramfp)
  {
    this.l = ((fp)an.a(paramfp));
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[2];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 4, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(3, 4, "a_texCoord0");
    this.n = new t(0, arrayOfVertexAttribute);
    ai localai = (ai)ag.au.get(0);
    Vector3 localVector31 = localai.e();
    Vector3 localVector32 = localai.d();
    this.j.set(0.5F * (localVector32.x + localVector31.x), localVector32.y, 0.5F * (localVector32.z + localVector31.z)).mul(6.0F);
    this.m = new cf(this, paramfp);
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    while (true)
    {
      u localu2;
      float f4;
      int i2;
      int i4;
      try
      {
        aj.a("LinkFormingVisuals.draw");
        float f1 = this.s;
        if (f1 <= 0.0F)
          return;
        if (this.o)
        {
          this.o = false;
          this.m.b();
          float[] arrayOfFloat1 = this.n.a(300);
          u localu1 = ((LocationE6)this.p.getComponent(LocationE6.class)).getLatLng();
          localu2 = ((LocationE6)this.q.getComponent(LocationE6.class)).getLatLng();
          float f2 = (float)localu1.a(localu2);
          float f3 = this.j.y;
          f4 = f3 + Math.min(30.0F, 0.08F * f2);
          if (f2 <= 500.0F)
            break label1192;
          u localu3 = a.a(localu1, localu2, 500.0D);
          f5 = Math.max(f3, f4 - 0.08F * (f2 - (float)localu1.a(localu3)));
          localu4 = localu3;
          Vector2 localVector22 = this.l.a(localu1).b();
          Vector2 localVector23 = this.l.a(localu4).b();
          float f6 = f3 + 40.0F;
          Color localColor = this.r;
          this.h.set(localVector23.x, 0.0F, localVector23.y).sub(localVector22.x, 0.0F, localVector22.y);
          this.i.set(this.h).crs(Vector3.Y).nor();
          i1 = 0;
          float[] arrayOfFloat2 = dc.a(5);
          i2 = 0;
          if (i2 < 5)
          {
            float f7 = f3 + c[(i2 * 2)] * (f5 - f3);
            float f8 = f3 + c[(1 + i2 * 2)] * (f5 - f3);
            float f9 = f3 + c[(2 + i2 * 2)] * (f5 - f3);
            float f10 = b[(i2 * 2)];
            float f11 = b[(1 + i2 * 2)];
            float f12 = b[(2 + i2 * 2)];
            float f13 = f7 + (f3 + arrayOfFloat2[(i2 * 2)] * (f6 - f3));
            float f14 = f8 + (f3 + arrayOfFloat2[(1 + i2 * 2)] * (f6 - f3));
            float f15 = f9 + (f3 + arrayOfFloat2[(2 + i2 * 2)] * (f6 - f3));
            double[] arrayOfDouble = y.a(f10, f13, f11, f14, f12, f15);
            i.a(this.k, a, localColor, 1.0F);
            Color.toFloatBits(this.k.r, this.k.g, this.k.b, 1.0F);
            int i3 = 0;
            i4 = i1;
            if (i3 >= 10)
              break label1203;
            float f16 = (float)arrayOfDouble[(i3 * 2)];
            float f17 = (float)arrayOfDouble[(2 + i3 * 2)];
            float f18 = (float)arrayOfDouble[(1 + i3 * 2)];
            float f19 = (float)arrayOfDouble[(3 + i3 * 2)];
            float f20 = 5.0F * f16 - f10;
            float f21 = 5.0F * f17 - f10;
            float f22 = localVector22.x + f16 * this.h.x;
            float f23 = localVector22.y + f16 * this.h.z;
            float f24 = localVector22.x + f17 * this.h.x;
            float f25 = localVector22.y + f17 * this.h.z;
            float f26 = f7 + 1.0F * i3 / 10.0F * (f9 - f7);
            float f27 = f7 + 1.0F * (i3 + 1) / 10.0F * (f9 - f7);
            float f28 = (f20 + f21) / 2.0F;
            float f29 = (f22 + f24) / 2.0F;
            float f30 = (f23 + f25) / 2.0F;
            float f31 = (f18 + f19) / 2.0F;
            float f32 = (f26 + f27) / 2.0F;
            dc.a(arrayOfFloat1, i4 + 0, f22, f18 + 150.0F, f23, f20, 0.0F, this.i, f26 + 4.5F);
            dc.a(arrayOfFloat1, i4 + 1, f22, f18, f23, f20, 1.0F, this.i, f26);
            dc.a(arrayOfFloat1, i4 + 2, f29, f31 + 150.0F, f30, f28, 0.0F, this.i, f32 + 4.5F);
            dc.a(arrayOfFloat1, i4 + 3, f29, f31, f30, f28, 1.0F, this.i, f32);
            dc.a(arrayOfFloat1, i4 + 4, f24, f19 + 150.0F, f25, f21, 0.0F, this.i, f27 + 4.5F);
            dc.a(arrayOfFloat1, i4 + 5, f24, f19, f25, f21, 1.0F, this.i, f27);
            int i5 = i4 + 6;
            i3++;
            i4 = i5;
            continue;
          }
        }
        GL20 localGL20 = Gdx.gl20;
        localGL20.glDisable(2884);
        localGL20.glEnable(3042);
        localGL20.glDepthMask(false);
        Vector2 localVector21 = this.m.c();
        this.d.set(paramf.e()).translate(localVector21.x, 0.0F, localVector21.y);
        z.a(paramf.d(), this.e, this.f, this.g);
        ShaderProgram localShaderProgram = ag.aF;
        localShaderProgram.begin();
        localShaderProgram.setUniformMatrix("u_modelViewProject", this.d);
        localShaderProgram.setUniformf("u_cameraFwd", this.g);
        localShaderProgram.setUniformf("u_elapsedTime", this.s * this.s * this.s);
        localShaderProgram.setUniformf("u_color", this.r.r, this.r.g, this.r.b, 1.0F);
        localShaderProgram.setUniformf("u_alpha", dc.a(this.s, 0.15F));
        this.n.a(5, 300, localShaderProgram);
        localShaderProgram.end();
        localGL20.glEnable(2884);
        localGL20.glDisable(3042);
        localGL20.glDepthMask(true);
        return;
      }
      finally
      {
        aj.b();
      }
      label1192: float f5 = f4;
      u localu4 = localu2;
      continue;
      label1203: i2++;
      int i1 = i4;
    }
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf1, com.nianticproject.ingress.gameentity.f paramf2, Color paramColor, ao paramao)
  {
    this.p = paramf1;
    this.q = paramf2;
    this.r = paramColor;
    this.o = true;
    this.s = 1.0F;
    u localu1 = ((LocationE6)paramf1.getComponent(LocationE6.class)).getLatLng();
    u localu2 = ((LocationE6)paramf2.getComponent(LocationE6.class)).getLatLng();
    float f1 = (float)(localu1.a(localu2) / 2.0D);
    if (f1 > 30.0F)
      f1 = 30.0F;
    u localu3 = a.a(localu1, localu2, f1);
    Vector2 localVector21 = new Vector2();
    Vector2 localVector22 = new Vector2();
    this.l.a(localu1, localVector21);
    this.l.a(localu3, localVector22);
    Vector3 localVector31 = new Vector3(localVector21.x, 0.0F, localVector21.y);
    Vector3 localVector32 = new Vector3(localVector22.x, 0.0F, localVector22.y);
    localVector32.sub(localVector31);
    Vector3 localVector33 = localVector32.cpy().crs(Vector3.Y).nor().mul(400.0F).add(localVector32);
    localVector33.y = 200.0F;
    ap localap = new ap();
    localap.a = 40.0F;
    localap.b = 15.0F;
    localap.c = 2048.0F;
    localap.f.set(Vector3.Y);
    localVector32.add(localVector31);
    localVector33.add(localVector31);
    localap.e.set(localVector33);
    localap.d.set(localVector32);
    paramao.a(new cg(this, localap), 0.75F);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    if (this.s > 0.0F)
      this.s -= paramFloat / 6.0F;
    return true;
  }

  public final void dispose()
  {
    this.n.dispose();
    this.m.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.ce
 * JD-Core Version:    0.6.2
 */