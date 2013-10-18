package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class h
  implements Disposable
{
  private Map<l, List<i<Vector2>>> a = hc.b();
  private Map<l, List<k<Vector2>>> b = hc.b();
  private Map<l, List<j>> c = hc.b();
  private List<i<Vector3>> d = eq.a();
  private List<k<Vector3>> e = eq.a();
  private boolean f;
  private t[] g;
  private t[] h;
  private t i;
  private t j;
  private ShaderProgram k;
  private ShaderProgram l;
  private float m;
  private float n;
  private Skin o;
  private Stage p;
  private BitmapFont q;
  private BitmapFont r;

  public h()
  {
    for (l locall : l.values())
    {
      this.c.put(locall, new ArrayList());
      this.a.put(locall, new ArrayList());
      this.b.put(locall, new ArrayList());
    }
    int i3 = l.values().length;
    this.g = new t[i3];
    this.h = new t[i3];
  }

  private static void a(Matrix4 paramMatrix4, ShaderProgram paramShaderProgram, t paramt, int paramInt1, int paramInt2)
  {
    paramShaderProgram.begin();
    if (paramMatrix4 != null)
      paramShaderProgram.setUniformMatrix("u_modelViewProject", paramMatrix4, false);
    paramt.a(paramInt1, paramInt2, paramShaderProgram);
  }

  private static void a(float[] paramArrayOfFloat, int paramInt, Vector2 paramVector2, float paramFloat)
  {
    paramArrayOfFloat[(paramInt + 0)] = paramVector2.x;
    paramArrayOfFloat[(paramInt + 1)] = paramVector2.y;
    paramArrayOfFloat[(paramInt + 2)] = paramFloat;
  }

  private static void a(float[] paramArrayOfFloat, int paramInt, Vector3 paramVector3, float paramFloat)
  {
    paramArrayOfFloat[(paramInt + 0)] = paramVector3.x;
    paramArrayOfFloat[(paramInt + 1)] = paramVector3.y;
    paramArrayOfFloat[(paramInt + 2)] = paramVector3.z;
    paramArrayOfFloat[(paramInt + 3)] = paramFloat;
  }

  public final void a()
  {
    if (!this.f)
    {
      this.f = true;
      this.k = ad.a("attribute vec2 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n  v_color = a_color;\n  gl_Position = vec4(a_position.xy * 2.0 - 1.0, 1, 1);\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvoid main() {\n  gl_FragColor = v_color;\n}\n", "VertexShader2D");
      this.l = ad.a("uniform mat4 u_modelViewProject;\nattribute vec3 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n  v_color = a_color;\n  gl_Position = u_modelViewProject * vec4(a_position.xyz, 1.0);\n}\n", "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvoid main() {\n  gl_FragColor = v_color;\n}\n", "VertexShader3D");
      VertexAttribute[] arrayOfVertexAttribute1 = new VertexAttribute[2];
      arrayOfVertexAttribute1[0] = new VertexAttribute(0, 3, "a_position");
      arrayOfVertexAttribute1[1] = new VertexAttribute(5, 4, "a_color");
      this.i = new t(128, arrayOfVertexAttribute1);
      VertexAttribute[] arrayOfVertexAttribute2 = new VertexAttribute[2];
      arrayOfVertexAttribute2[0] = new VertexAttribute(0, 3, "a_position");
      arrayOfVertexAttribute2[1] = new VertexAttribute(5, 4, "a_color");
      this.j = new t(128, arrayOfVertexAttribute2);
      int i1 = l.values().length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        t[] arrayOft1 = this.g;
        VertexAttribute[] arrayOfVertexAttribute3 = new VertexAttribute[2];
        arrayOfVertexAttribute3[0] = new VertexAttribute(0, 2, "a_position");
        arrayOfVertexAttribute3[1] = new VertexAttribute(5, 4, "a_color");
        arrayOft1[i2] = new t(128, arrayOfVertexAttribute3);
        t[] arrayOft2 = this.h;
        VertexAttribute[] arrayOfVertexAttribute4 = new VertexAttribute[2];
        arrayOfVertexAttribute4[0] = new VertexAttribute(0, 2, "a_position");
        arrayOfVertexAttribute4[1] = new VertexAttribute(5, 4, "a_color");
        arrayOft2[i2] = new t(128, arrayOfVertexAttribute4);
      }
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.m = paramInt1;
    this.n = paramInt2;
  }

  public final void a(Vector3 paramVector31, Vector3 paramVector32, Color paramColor)
  {
    if (2 * (1 + this.d.size()) < 32767);
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        this.d.add(new i(this, paramVector31, paramVector32, paramColor));
      return;
    }
  }

  public final void a(Vector3 paramVector31, Vector3 paramVector32, Vector3 paramVector33, Color paramColor)
  {
    if (3 * (1 + this.e.size()) < 32767);
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        this.e.add(new k(this, paramVector31, paramVector32, paramVector33, paramColor));
      return;
    }
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.o = paramSkin;
    this.p = paramStage;
    this.q = this.o.getFont("large-font");
    this.r = this.o.getFont("default-font");
  }

  public final void a(f paramf)
  {
    int i1 = 0;
    try
    {
      aj.a("DebugRenderer.onDrawFrame3d");
      GL20 localGL20 = Gdx.gl20;
      localGL20.glEnable(3042);
      localGL20.glDisable(2884);
      Matrix4 localMatrix41 = paramf.e();
      t localt1 = this.j;
      List localList1 = this.e;
      if (!localList1.isEmpty())
      {
        float[] arrayOfFloat2 = localt1.a(3 * localList1.size());
        Iterator localIterator2 = localList1.iterator();
        for (int i2 = 0; localIterator2.hasNext(); i2 += 3)
        {
          k localk = (k)localIterator2.next();
          float f2 = localk.d.toFloatBits();
          a(arrayOfFloat2, 4 * (i2 + 0), (Vector3)localk.a, f2);
          a(arrayOfFloat2, 4 * (i2 + 1), (Vector3)localk.b, f2);
          a(arrayOfFloat2, 4 * (i2 + 2), (Vector3)localk.c, f2);
        }
        a(localMatrix41, this.l, localt1, 4, i2);
      }
      this.e.clear();
      Matrix4 localMatrix42 = paramf.e();
      t localt2 = this.i;
      List localList2 = this.d;
      if (!localList2.isEmpty())
      {
        float[] arrayOfFloat1 = localt2.a(2 * localList2.size());
        Iterator localIterator1 = localList2.iterator();
        while (localIterator1.hasNext())
        {
          i locali = (i)localIterator1.next();
          float f1 = locali.c.toFloatBits();
          a(arrayOfFloat1, 4 * (i1 + 0), (Vector3)locali.a, f1);
          a(arrayOfFloat1, 4 * (i1 + 1), (Vector3)locali.b, f1);
          i1 += 2;
        }
        a(localMatrix42, this.l, localt2, 1, i1);
      }
      this.d.clear();
      localGL20.glDisable(3042);
      localGL20.glEnable(2884);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(l paraml, Vector2 paramVector2, Color paramColor, BitmapFont paramBitmapFont, String paramString)
  {
    ((List)this.c.get(paraml)).add(new j(this, paramVector2, paramString, paramColor, paramBitmapFont));
  }

  public final void a(l paraml, Vector2 paramVector21, Vector2 paramVector22, Vector2 paramVector23, Color paramColor)
  {
    if (3 * (1 + this.b.size()) < 32767);
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        ((List)this.b.get(paraml)).add(new k(this, paramVector21, paramVector22, paramVector23, paramColor));
      return;
    }
  }

  public final void a(l paraml, Vector2[] paramArrayOfVector21, Vector2[] paramArrayOfVector22, Color paramColor)
  {
    for (int i1 = 0; i1 < -1 + paramArrayOfVector21.length; i1++)
    {
      Vector2 localVector21 = paramArrayOfVector21[i1].cpy().sub(paramArrayOfVector22[i1]);
      Vector2 localVector22 = paramArrayOfVector21[i1].cpy().add(paramArrayOfVector22[i1]);
      Vector2 localVector23 = paramArrayOfVector21[(i1 + 1)].cpy().sub(paramArrayOfVector22[(i1 + 1)]);
      Vector2 localVector24 = paramArrayOfVector21[(i1 + 1)].cpy().add(paramArrayOfVector22[(i1 + 1)]);
      a(paraml, localVector21, localVector22, localVector24, paramColor);
      a(paraml, localVector23, localVector24, localVector21, paramColor);
    }
  }

  public final BitmapFont b()
  {
    return this.q;
  }

  public final void c()
  {
    GL20 localGL20;
    while (true)
    {
      int i2;
      List localList1;
      List localList2;
      List localList3;
      SpriteBatch localSpriteBatch;
      try
      {
        aj.a("DebugRenderer.onDrawFrame2d");
        localGL20 = Gdx.gl20;
        localGL20.glEnable(3042);
        localGL20.glDisable(2884);
        localGL20.glDisable(2929);
        localGL20.glDepthMask(false);
        l[] arrayOfl = l.values();
        int i1 = arrayOfl.length;
        i2 = 0;
        if (i2 >= i1)
          break;
        l locall = arrayOfl[i2];
        localList1 = (List)this.c.get(locall);
        localList2 = (List)this.a.get(locall);
        localList3 = (List)this.b.get(locall);
        t localt1 = this.h[locall.ordinal()];
        if (!localList3.isEmpty())
        {
          float[] arrayOfFloat2 = localt1.a(3 * localList3.size());
          Iterator localIterator3 = localList3.iterator();
          int i4 = 0;
          if (localIterator3.hasNext())
          {
            k localk = (k)localIterator3.next();
            float f2 = localk.d.toFloatBits();
            a(arrayOfFloat2, 3 * (i4 + 0), (Vector2)localk.a, f2);
            a(arrayOfFloat2, 3 * (i4 + 1), (Vector2)localk.b, f2);
            a(arrayOfFloat2, 3 * (i4 + 2), (Vector2)localk.c, f2);
            i4 += 3;
            continue;
          }
          a(null, this.k, localt1, 4, i4);
        }
        t localt2 = this.g[locall.ordinal()];
        if (!localList2.isEmpty())
        {
          float[] arrayOfFloat1 = localt2.a(2 * localList2.size());
          Iterator localIterator2 = localList2.iterator();
          int i3 = 0;
          if (localIterator2.hasNext())
          {
            i locali = (i)localIterator2.next();
            float f1 = locali.c.toFloatBits();
            a(arrayOfFloat1, 3 * (i3 + 0), (Vector2)locali.a, f1);
            a(arrayOfFloat1, 3 * (i3 + 1), (Vector2)locali.b, f1);
            i3 += 2;
            continue;
          }
          a(null, this.k, localt2, 1, i3);
        }
        localSpriteBatch = this.p.getSpriteBatch();
        if (localList1.isEmpty())
          break label576;
        localSpriteBatch.begin();
        Iterator localIterator1 = localList1.iterator();
        if (localIterator1.hasNext())
        {
          j localj = (j)localIterator1.next();
          Color localColor = localj.a.getColor();
          localj.a.setColor(localj.c);
          localj.a.draw(localSpriteBatch, localj.b, localj.d.x * this.m, localj.d.y * this.n + localj.a.getCapHeight());
          localj.a.setColor(localColor);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      localSpriteBatch.end();
      label576: localList3.clear();
      localList2.clear();
      localList1.clear();
      i2++;
    }
    localGL20.glDisable(3042);
    localGL20.glEnable(2884);
    localGL20.glEnable(2929);
    localGL20.glDepthMask(true);
    aj.b();
  }

  public final void dispose()
  {
    int i1 = 0;
    if (this.f)
    {
      this.f = false;
      ac.a(this.k);
      this.k = null;
      ac.a(this.l);
      this.l = null;
      ac.a(this.i);
      this.i = null;
      ac.a(this.j);
      this.j = null;
      int i2 = l.values().length;
      while (i1 < i2)
      {
        t[] arrayOft1 = this.g;
        ac.a(this.g[i1]);
        arrayOft1[i1] = null;
        t[] arrayOft2 = this.h;
        ac.a(this.h[i1]);
        arrayOft2[i1] = null;
        i1++;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.h
 * JD-Core Version:    0.6.2
 */