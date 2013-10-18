package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.glutils.IndexBufferObject;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.graphics.glutils.ShaderProgram.Uniform;
import com.badlogic.gdx.graphics.glutils.VertexBufferObject;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ao;
import com.nianticproject.ingress.common.w.z;
import java.nio.FloatBuffer;
import java.util.ArrayList;

public final class ai
  implements Disposable
{
  private static final aa a = new aa(ai.class);
  private static final ArrayList<ai> b = eq.a();
  private static final Matrix4 c = new Matrix4();
  private final VertexBufferObject d;
  private final IndexBufferObject e;
  private final IndexBufferObject f;
  private final ad g;
  private final int h;
  private final int i;
  private final float[] j;
  private final short[] k;
  private final short[] l;
  private final Vector3 m;
  private final Vector3 n;
  private final Vector3 o;
  private final float p;
  private final Vector3 q = new Vector3();
  private final Vector3 r = new Vector3();
  private final Vector3 s = new Vector3();
  private final Vector3 t = new Vector3();

  public ai(float[] paramArrayOfFloat, VertexAttributes paramVertexAttributes)
  {
    this(paramArrayOfFloat, null, null, paramVertexAttributes, null);
  }

  public ai(float[] paramArrayOfFloat, short[] paramArrayOfShort1, short[] paramArrayOfShort2, VertexAttributes paramVertexAttributes, ad paramad)
  {
    this.g = paramad;
    if ((this.g instanceof at))
      ((at)this.g).h = this;
    int i1 = paramVertexAttributes.vertexSize / 4;
    this.d = new VertexBufferObject(bool1, paramArrayOfFloat.length / i1, paramVertexAttributes);
    boolean bool2;
    int i2;
    label169: boolean bool3;
    label218: VertexAttribute localVertexAttribute2;
    if (this.d.getBuffer().capacity() >= paramArrayOfFloat.length)
    {
      bool2 = bool1;
      an.b(bool2);
      this.d.setVertices(paramArrayOfFloat, 0, paramArrayOfFloat.length);
      this.i = i1;
      VertexAttribute localVertexAttribute1 = bd.a(paramVertexAttributes);
      if (localVertexAttribute1 == null)
        break label446;
      i2 = localVertexAttribute1.offset / 4;
      this.h = i2;
      this.j = paramArrayOfFloat;
      this.k = paramArrayOfShort1;
      this.f = a(paramArrayOfShort1);
      this.l = paramArrayOfShort2;
      this.e = a(paramArrayOfShort2);
      if (this.h == -1)
        break label452;
      bool3 = bool1;
      an.a(bool3, "Vertex format is missing Position");
      localVertexAttribute2 = paramVertexAttributes.get(0);
      if (localVertexAttribute2.usage != 0)
        break label458;
    }
    while (true)
    {
      an.a(bool1);
      this.m = new Vector3(paramArrayOfFloat);
      this.n = new Vector3(paramArrayOfFloat);
      if (localVertexAttribute2.numComponents <= 2)
        break label464;
      int i4 = this.h;
      while (i4 < paramArrayOfFloat.length)
      {
        this.m.x = Math.min(this.m.x, paramArrayOfFloat[(i4 + 0)]);
        this.n.x = Math.max(this.n.x, paramArrayOfFloat[(i4 + 0)]);
        this.m.y = Math.min(this.m.y, paramArrayOfFloat[(i4 + 1)]);
        this.n.y = Math.max(this.n.y, paramArrayOfFloat[(i4 + 1)]);
        this.m.z = Math.min(this.m.z, paramArrayOfFloat[(i4 + 2)]);
        this.n.z = Math.max(this.n.z, paramArrayOfFloat[(i4 + 2)]);
        i4 += i1;
      }
      bool2 = false;
      break;
      label446: i2 = -1;
      break label169;
      label452: bool3 = false;
      break label218;
      label458: bool1 = false;
    }
    label464: int i3 = this.h;
    while (i3 < paramArrayOfFloat.length)
    {
      this.m.x = Math.min(this.m.x, paramArrayOfFloat[(i3 + 0)]);
      this.n.x = Math.max(this.n.x, paramArrayOfFloat[(i3 + 0)]);
      this.m.y = Math.min(this.m.y, paramArrayOfFloat[(i3 + 1)]);
      this.n.y = Math.max(this.n.y, paramArrayOfFloat[(i3 + 1)]);
      i3 += i1;
    }
    this.o = new Vector3(this.m).add(this.n).scale(0.5F, 0.5F, 0.5F);
    this.p = new Vector3(this.n).sub(this.m).scale(0.5F, 0.5F, 0.5F).len();
    b.add(this);
  }

  private static IndexBufferObject a(short[] paramArrayOfShort)
  {
    if (paramArrayOfShort == null)
      return null;
    IndexBufferObject localIndexBufferObject = new IndexBufferObject(paramArrayOfShort.length);
    localIndexBufferObject.setIndices(paramArrayOfShort, 0, paramArrayOfShort.length);
    return localIndexBufferObject;
  }

  public static void a(Color paramColor)
  {
    ag.ax.setUniformf(paramColor.r, paramColor.g, paramColor.b, paramColor.a);
  }

  public static void a(Color paramColor, float paramFloat)
  {
    ag.ax.setUniformf(paramColor.r, paramColor.g, paramColor.b, paramFloat * paramColor.a);
  }

  public static void a(Color paramColor1, Color paramColor2, float paramFloat)
  {
    ag.ax.setUniformf(paramColor1.r + paramFloat * (paramColor2.r - paramColor1.r), paramColor1.g + paramFloat * (paramColor2.g - paramColor1.g), paramColor1.b + paramFloat * (paramColor2.b - paramColor1.b), paramColor1.a + paramFloat * (paramColor2.a - paramColor1.a));
  }

  public static void a(Color paramColor1, Color paramColor2, float paramFloat1, float paramFloat2)
  {
    ag.ax.setUniformf(paramColor1.r + paramFloat1 * (paramColor2.r - paramColor1.r), paramColor1.g + paramFloat1 * (paramColor2.g - paramColor1.g), paramColor1.b + paramFloat1 * (paramColor2.b - paramColor1.b), paramFloat2);
  }

  public static void b(Matrix4 paramMatrix41, Matrix4 paramMatrix42)
  {
    c.set(paramMatrix42);
    Matrix4.mul(c.val, paramMatrix41.val);
    ag.ay.setUniformMatrix(c);
  }

  public static void k()
  {
    ag.aw.begin();
  }

  private boolean l()
  {
    if (this.e != null)
    {
      this.e.bind();
      return true;
    }
    a.b("ObjectMesh requires edge indices to draw edges.");
    return false;
  }

  private void m()
  {
    Gdx.gl20.glDrawElements(1, this.e.getNumIndices(), 5123, 0);
  }

  public final Rectangle a(f paramf, Matrix4 paramMatrix4, float paramFloat)
  {
    Vector3 localVector3 = ao.a(paramf, paramMatrix4, this.o);
    if (localVector3.z < 0.0F)
      return null;
    float f1 = g.a(paramf, localVector3, paramFloat * (this.p * z.a(paramMatrix4)));
    return new Rectangle(localVector3.x - f1 / 2.0F, localVector3.y - f1 / 2.0F, f1, f1);
  }

  public final Vector3 a(int paramInt)
  {
    if (this.h != -1);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Mesh does not have position data");
      int i1 = paramInt * this.i + this.h;
      return new Vector3(this.j[(i1 + 0)], this.j[(i1 + 1)], this.j[(i1 + 2)]);
    }
  }

  public final ad a()
  {
    return this.g;
  }

  public final Float a(Ray paramRay, float paramFloat)
  {
    int i1 = 1;
    Vector3 localVector31 = paramRay.direction;
    Vector3 localVector32 = paramRay.origin;
    int i2;
    int i3;
    label40: label50: Vector3 localVector33;
    Vector3 localVector34;
    float f1;
    label74: float f2;
    float f3;
    label104: float f4;
    float f5;
    label134: float f6;
    if (localVector31.x < 0.0F)
    {
      i2 = i1;
      if (localVector31.y >= 0.0F)
        break label206;
      i3 = i1;
      if (localVector31.z >= 0.0F)
        break label212;
      localVector33 = this.n;
      localVector34 = this.m;
      if (i2 == 0)
        break label217;
      f1 = localVector33.x;
      f2 = (f1 * paramFloat - localVector32.x) / localVector31.x;
      if (i2 == 0)
        break label227;
      f3 = localVector34.x;
      f4 = (f3 * paramFloat - localVector32.x) / localVector31.x;
      if (i3 == 0)
        break label237;
      f5 = localVector33.y;
      f6 = (f5 * paramFloat - localVector32.y) / localVector31.y;
      if (i3 == 0)
        break label247;
    }
    float f8;
    label206: label212: label217: label227: label237: label247: for (float f7 = localVector34.y; ; f7 = localVector33.y)
    {
      f8 = (f7 * paramFloat - localVector32.y) / localVector31.y;
      if ((f2 <= f8) && (f6 <= f4))
        break label257;
      return null;
      i2 = 0;
      break;
      i3 = 0;
      break label40;
      i1 = 0;
      break label50;
      f1 = localVector34.x;
      break label74;
      f3 = localVector33.x;
      break label104;
      f5 = localVector34.y;
      break label134;
    }
    label257: if (f6 > f2);
    while (true)
    {
      if (f8 < f4);
      while (true)
      {
        float f9;
        float f10;
        if (i1 != 0)
        {
          f9 = localVector33.z;
          f10 = (f9 * paramFloat - localVector32.z) / localVector31.z;
          if (i1 == 0)
            break label359;
        }
        float f12;
        label359: for (float f11 = localVector34.z; ; f11 = localVector33.z)
        {
          f12 = (f11 * paramFloat - localVector32.z) / localVector31.z;
          if ((f6 <= f12) && (f10 <= f8))
            break label369;
          return null;
          f9 = localVector34.z;
          break;
        }
        label369: if (f10 > f6);
        for (float f13 = f10; ; f13 = f6)
        {
          if (f12 < f8);
          while (true)
          {
            if ((f13 < 3.4028235E+38F) && (f12 > 0.0F))
              return Float.valueOf(f13);
            return null;
            f12 = f8;
          }
        }
        f8 = f4;
      }
      f6 = f2;
    }
  }

  public final Float a(f paramf, Matrix4 paramMatrix4, Vector2 paramVector2, float paramFloat)
  {
    Vector3 localVector3 = ao.a(paramf, paramMatrix4, this.o);
    if (localVector3.z < 0.0F)
      return null;
    float f1 = g.a(paramf, localVector3, paramFloat * (this.p * z.a(paramMatrix4)));
    float f2 = localVector3.x - paramVector2.x;
    float f3 = localVector3.y - paramVector2.y;
    return Float.valueOf(Math.max(0.0F, (float)Math.sqrt(f2 * f2 + f3 * f3) - f1));
  }

  public final void a(ShaderProgram paramShaderProgram)
  {
    this.d.bind(paramShaderProgram);
  }

  public final void a(Matrix4 paramMatrix4)
  {
    this.d.bind(ag.aw);
    ag.ay.setUniformMatrix(paramMatrix4);
  }

  public final void a(Matrix4 paramMatrix4, Color paramColor)
  {
    if (l())
    {
      ag.aw.begin();
      a(paramMatrix4);
      a(paramColor);
      if (l())
        m();
      c(ag.aw);
    }
  }

  public final void a(Matrix4 paramMatrix4, Texture paramTexture, Color paramColor)
  {
    if (paramColor == null);
    for (ShaderProgram localShaderProgram = ag.az; ; localShaderProgram = ag.aA)
    {
      localShaderProgram.begin();
      paramTexture.bind(0);
      localShaderProgram.setUniformi("u_texture", 0);
      localShaderProgram.setUniformMatrix("u_modelViewProject", paramMatrix4);
      if (paramColor != null)
        localShaderProgram.setUniformf("u_color", paramColor);
      a(localShaderProgram);
      h();
      c(localShaderProgram);
      return;
    }
  }

  public final void a(Matrix4 paramMatrix41, Matrix4 paramMatrix42)
  {
    this.d.bind(ag.aw);
    b(paramMatrix41, paramMatrix42);
  }

  public final void a(f paramf, Matrix4 paramMatrix4, Vector3 paramVector3, float paramFloat, Rectangle paramRectangle)
  {
    float f1 = this.q.set(paramFloat * this.p, 0.0F, 0.0F).rot(paramMatrix4).len();
    this.q.set(paramf.i()).mul(f1);
    this.r.set(paramf.j()).mul(f1);
    this.s.set(this.o).mul(paramMatrix4);
    if (paramVector3 != null)
      this.s.add(paramVector3);
    this.t.set(this.s).sub(this.q).sub(this.r);
    this.t.prj(paramf.e());
    paramRectangle.x = this.t.x;
    paramRectangle.y = this.t.y;
    this.t.set(this.s).add(this.q).add(this.r);
    this.t.prj(paramf.e());
    paramRectangle.width = (this.t.x - paramRectangle.x);
    paramRectangle.height = (this.t.y - paramRectangle.y);
  }

  public final void b(int paramInt)
  {
    Gdx.gl20.glDrawArrays(paramInt, 0, this.d.getNumVertices());
  }

  public final void b(ShaderProgram paramShaderProgram)
  {
    a(paramShaderProgram);
    this.f.bind();
  }

  public final short[] b()
  {
    return this.k;
  }

  public final void c(ShaderProgram paramShaderProgram)
  {
    this.d.unbind(paramShaderProgram);
  }

  public final short[] c()
  {
    return this.l;
  }

  public final Vector3 d()
  {
    return this.m;
  }

  public final void dispose()
  {
    ac.a(this.d);
    ac.a(this.e);
    ac.a(this.f);
    ac.a(this.g);
  }

  public final Vector3 e()
  {
    return this.n;
  }

  public final Vector3 f()
  {
    return this.o;
  }

  public final void g()
  {
    Gdx.gl20.glDrawElements(4, this.f.getNumIndices(), 5123, 0);
  }

  public final void h()
  {
    if (this.f != null)
    {
      this.f.bind();
      g();
      return;
    }
    a.b("ObjectMesh requires face indices to draw in this mode.");
  }

  public final void i()
  {
    if (l())
    {
      GL20 localGL20 = Gdx.gl20;
      localGL20.glDepthRangef(0.0F, 0.9997F);
      m();
      localGL20.glDepthRangef(0.0F, 1.0F);
    }
  }

  public final void j()
  {
    c(ag.aw);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.ai
 * JD-Core Version:    0.6.2
 */