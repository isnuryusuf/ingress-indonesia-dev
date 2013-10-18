package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Frustum;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.ct;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.dx;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.am;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.t.c;
import com.nianticproject.ingress.gameentity.components.Energy;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.b.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;

public final class bj
  implements Disposable, o
{
  public static boolean a = true;
  private static final Color b = new Color(0.33F, 0.19F, 0.19F, 1.0F);
  private static final Color c = new Color(0.0F, 0.0F, 0.0F, 1.0F);
  private static final Color d = new Color(0.0F, 0.3F, 0.7F, 1.0F);
  private static final Color e = new Color(0.0F, 0.7F, 0.1F, 1.0F);
  private static final Color f = new Color(0.93F, 0.67F, 1.0F, 0.1F);
  private static final com.nianticproject.ingress.common.t.b g = c.a("Portal Particle Render");
  private static final float[] l = { 0.0F, 0.0F, 1.0F, 1.0F };
  private static final float[] m = { 1.0F, 0.0F, 1.0F, 0.0F };
  private boolean A = false;
  private float[] B = new float[' '];
  private float[] C = new float[' '];
  private float[] D = new float[' '];
  private final List<bm> E = eq.a();
  private final SortedMap<Float, Color> h = dx.a(Float.valueOf(0.6F), c, Float.valueOf(0.05F), b);
  private String i = "u_params";
  private String j = "u_color";
  private String k = "u_position";
  private int n;
  private final Matrix4 o = new Matrix4();
  private final Vector3 p = new Vector3();
  private final Vector3 q = new Vector3();
  private final fp r;
  private final bc s;
  private final com.nianticproject.ingress.common.j.an t;
  private final am u;
  private long v = 0L;
  private final Map<String, bm> w = hc.b();
  private final List<bm> x = eq.a();
  private final Set<bm> y = jc.a();
  private final bn z;

  public bj(fp paramfp, bn parambn)
  {
    this.r = ((fp)com.google.a.a.an.a(paramfp));
    float[] arrayOfFloat = d();
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[6];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 3, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(3, 2, "a_texCoord0");
    arrayOfVertexAttribute[2] = new VertexAttribute(4, 1, "a_scale");
    arrayOfVertexAttribute[3] = new VertexAttribute(4, 1, "a_speed");
    arrayOfVertexAttribute[4] = new VertexAttribute(4, 1, "a_portalIndex");
    arrayOfVertexAttribute[5] = new VertexAttribute(4, 1, "a_index");
    this.t = new com.nianticproject.ingress.common.j.an(arrayOfFloat, arrayOfVertexAttribute);
    this.u = new am(c());
    com.nianticproject.ingress.common.j.ai localai = (com.nianticproject.ingress.common.j.ai)ag.au.get(0);
    Vector3 localVector31 = localai.e();
    Vector3 localVector32 = localai.d();
    this.q.set(0.5F * (localVector32.x + localVector31.x), localVector32.y, 0.5F * (localVector32.z + localVector31.z)).mul(6.0F);
    this.s = new bk(this, paramfp, paramfp);
    String[] arrayOfString = ag.aN.getUniforms();
    int i1 = arrayOfString.length;
    for (int i2 = 0; ; i2++)
      if (i2 < i1)
      {
        if (arrayOfString[i2].endsWith("[0]"))
        {
          this.i += "[0]";
          this.j += "[0]";
          this.k += "[0]";
        }
      }
      else
      {
        this.z = parambn;
        return;
      }
  }

  private Color a(com.nianticproject.ingress.shared.ai paramai, float paramFloat)
  {
    Color localColor = (Color)this.h.get(Float.valueOf(paramFloat));
    if (localColor.equals(c))
    {
      if (paramai == com.nianticproject.ingress.shared.ai.b)
        localColor = e;
    }
    else
      return localColor;
    if (paramai == com.nianticproject.ingress.shared.ai.a)
      return d;
    return f;
  }

  private void b()
  {
    u localu = this.r.a();
    this.x.clear();
    if (localu == null)
      this.A = true;
    while (true)
    {
      return;
      this.A = false;
      this.x.addAll(this.w.values());
      Collections.sort(this.x, new bl(this, localu));
      this.n = 0;
      for (int i1 = -1 + this.x.size(); (i1 >= 0) && (a.a(bm.a((bm)this.x.get(i1)), localu) < 200.0D); i1--)
        this.n = (1 + this.n);
    }
  }

  private static short[] c()
  {
    short[] arrayOfShort1 = new short[23040];
    short[] arrayOfShort2 = { 0, 1, 2, 1, 3, 2 };
    int i1 = 0;
    int i2 = 0;
    while (i1 < 23040)
    {
      for (int i3 = 0; i3 < 6; i3++)
        arrayOfShort1[(i1 + i3)] = ((short)(i2 + arrayOfShort2[i3]));
      i2 += 4;
      i1 += 6;
    }
    return arrayOfShort1;
  }

  private static float[] d()
  {
    float[] arrayOfFloat1 = new float[138240];
    int i1 = 0;
    float[] arrayOfFloat2 = new float[96];
    float[] arrayOfFloat3 = new float[96];
    float[] arrayOfFloat4 = new float[96];
    float[] arrayOfFloat5 = new float[96];
    float[] arrayOfFloat6 = new float[96];
    for (int i2 = 0; i2 < 96; i2++)
    {
      arrayOfFloat2[i2] = ((float)(Math.random() - 0.5D));
      arrayOfFloat3[i2] = ((float)(0.4D * Math.random() - 0.2D));
      arrayOfFloat4[i2] = ((float)(Math.random() - 0.5D));
      arrayOfFloat5[i2] = ((float)(10.0D * (0.1D + 0.9D * Math.random())));
      arrayOfFloat6[i2] = ((float)(6.0D * (0.5D + 0.5D * Math.random())));
    }
    for (int i3 = 0; i3 < 40; i3++)
      for (int i4 = 0; i4 < 96; i4++)
      {
        float f1 = arrayOfFloat2[i4];
        float f2 = arrayOfFloat3[i4];
        float f3 = arrayOfFloat4[i4];
        float f4 = arrayOfFloat6[i4];
        float f5 = arrayOfFloat5[i4];
        float f6 = i3;
        float f7 = i4;
        for (int i5 = 0; i5 < 4; i5++)
        {
          arrayOfFloat1[(i1 + 0)] = f1;
          arrayOfFloat1[(i1 + 1)] = f2;
          arrayOfFloat1[(i1 + 2)] = f3;
          arrayOfFloat1[(i1 + 3)] = l[i5];
          arrayOfFloat1[(i1 + 4)] = m[i5];
          arrayOfFloat1[(i1 + 5)] = f4;
          arrayOfFloat1[(i1 + 6)] = f5;
          arrayOfFloat1[(i1 + 7)] = f6;
          arrayOfFloat1[(i1 + 8)] = f7;
          i1 += 9;
        }
      }
    return arrayOfFloat1;
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    GL20 localGL20;
    ShaderProgram localShaderProgram;
    Frustum localFrustum;
    while (true)
    {
      bm localbm2;
      try
      {
        aj.a("ParticleVisuals.draw");
        g.b();
        localGL20 = Gdx.gl20;
        localGL20.glDisable(2884);
        localGL20.glEnable(3042);
        localGL20.glBlendFunc(770, 1);
        localGL20.glDepthMask(false);
        Vector2 localVector2 = this.s.c();
        this.o.set(paramf.e());
        this.p.set(paramf.k());
        localShaderProgram = ag.aN;
        ag.aX.bind(0);
        localShaderProgram.begin();
        this.u.a();
        this.t.a(localShaderProgram);
        localShaderProgram.setUniformMatrix("u_modelViewProject", this.o);
        localShaderProgram.setUniformf("u_cameraPos", this.p);
        localFrustum = paramf.f();
        this.E.clear();
        Iterator localIterator1 = this.x.iterator();
        if (!localIterator1.hasNext())
          break;
        localbm2 = (bm)localIterator1.next();
        bm.d(localbm2).set(bm.b(localbm2).x + localVector2.x, bm.c(localbm2), bm.b(localbm2).y + localVector2.y);
        if (!localFrustum.sphereInFrustum(bm.d(localbm2), 12.0F))
          continue;
        this.E.add(localbm2);
        if (this.y.contains(localbm2))
          continue;
        if ((this.n > 4) && (a.a(bm.a(localbm2), this.r.a()) < 200.0D) && (!bm.e(localbm2).equals(f)))
        {
          float f2 = 1.0F - (-4 + this.n) / 8;
          if (f2 < 0.4F)
            f2 = 0.4F;
          bm.a(localbm2, (int)(f2 * bm.f(localbm2)));
          if (bm.g(localbm2) >= 16)
            continue;
          bm.a(localbm2, 16);
          continue;
        }
      }
      finally
      {
        aj.b();
        com.nianticproject.ingress.common.t.b.c();
      }
      bm.a(localbm2, bm.f(localbm2));
    }
    this.y.clear();
    this.y.addAll(this.E);
    boolean bool;
    if (this.z != null)
    {
      Iterator localIterator2 = this.x.iterator();
      do
        if (!localIterator2.hasNext())
          break;
      while (!localFrustum.pointInFrustum(bm.d((bm)localIterator2.next())));
      bool = true;
      this.z.a(bool);
    }
    int i1;
    int i2;
    if (a)
    {
      i1 = 0;
      i2 = 0;
    }
    while (true)
    {
      int i3;
      if (i2 < this.E.size())
      {
        bm localbm1 = (bm)this.E.get(i2);
        Vector3 localVector3 = bm.d(localbm1);
        Color localColor = bm.e(localbm1);
        this.B[(0 + i1 * 4)] = localColor.r;
        this.B[(1 + i1 * 4)] = localColor.g;
        this.B[(2 + i1 * 4)] = localColor.b;
        this.B[(3 + i1 * 4)] = bm.g(localbm1);
        this.C[(0 + i1 * 4)] = localVector3.x;
        this.C[(1 + i1 * 4)] = localVector3.y;
        this.C[(2 + i1 * 4)] = localVector3.z;
        this.C[(3 + i1 * 4)] = bm.h(localbm1);
        localVector3.sub(this.p);
        float f1 = (float)Math.pow(localVector3.len(), 0.2000000029802322D);
        this.D[(0 + i1 * 4)] = ((float)this.v / 1000.0F + bm.i(localbm1) * bm.j(localbm1));
        this.D[(1 + i1 * 4)] = bm.j(localbm1);
        this.D[(2 + i1 * 4)] = bm.k(localbm1);
        this.D[(3 + i1 * 4)] = f1;
        i3 = i1 + 1;
        if ((i3 == 40) || (i2 == -1 + this.E.size()))
        {
          localShaderProgram.setUniform4fv(this.i, this.D, 0, 160);
          localShaderProgram.setUniform4fv(this.j, this.B, 0, 160);
          localShaderProgram.setUniform4fv(this.k, this.C, 0, 160);
          Gdx.gl20.glDrawElements(4, i3 * 576, 5123, 0);
          i3 = 0;
        }
      }
      else
      {
        this.t.b(localShaderProgram);
        localShaderProgram.end();
        localGL20.glBlendFunc(770, 771);
        localGL20.glEnable(2884);
        localGL20.glDisable(3042);
        localGL20.glDepthMask(true);
        aj.b();
        com.nianticproject.ingress.common.t.b.c();
        return;
        bool = false;
        break;
      }
      i2++;
      i1 = i3;
    }
  }

  public final void a(GameState paramGameState)
  {
    while (true)
    {
      try
      {
        aj.a("ParticleVisuals.setGameState");
        i1 = 0;
        Iterator localIterator1 = paramGameState.changedEntities.iterator();
        if (localIterator1.hasNext())
        {
          com.nianticproject.ingress.gameentity.f localf1 = (com.nianticproject.ingress.gameentity.f)localIterator1.next();
          Portal localPortal = (Portal)localf1.getComponent(Portal.class);
          if (localPortal == null)
            break label678;
          u localu = ((LocationE6)localf1.getComponent(LocationE6.class)).getLatLng();
          com.nianticproject.ingress.shared.ai localai = com.nianticproject.ingress.gameentity.components.b.a(localf1);
          f1 = 0.0F;
          f2 = 0.0F;
          Iterator localIterator2 = localPortal.getLinkedResonatorGuids().d_().iterator();
          if (localIterator2.hasNext())
          {
            String str = (String)localIterator2.next();
            com.nianticproject.ingress.gameentity.f localf2 = (com.nianticproject.ingress.gameentity.f)paramGameState.gameEntities.get(str);
            if (localf2 == null)
              break label667;
            Resonator localResonator = (Resonator)localf2.getComponent(Resonator.class);
            if (localResonator == null)
              break label667;
            Energy localEnergy = (Energy)localf2.getComponent(Energy.class);
            if (localEnergy == null)
              break label667;
            float f10 = f1 + localEnergy.getTotal();
            f11 = f2 + localResonator.getEnergyCapacity();
            f12 = f10;
            break label684;
          }
          if (f2 == 0.0F)
            break label661;
          f3 = f1 / f2;
          SortedMap localSortedMap1 = this.h.tailMap(Float.valueOf(f3));
          SortedMap localSortedMap2 = this.h.headMap(Float.valueOf(f3));
          if (localSortedMap1.isEmpty())
          {
            localColor3 = a(localai, ((Float)localSortedMap2.lastKey()).floatValue());
            float f7 = Math.abs(localPortal.getEntityGuid().hashCode() / 2.147484E+09F);
            int i2 = localPortal.getLevel();
            int i3 = 12 + i2 * 84 / 8;
            float f8 = 1.35F + 0.65F * i2 / 8.0F;
            float f9 = 7.5F + 12.5F * i2 / 8.0F;
            if (localai == com.nianticproject.ingress.shared.ai.c)
            {
              i3 = 2;
              f8 = 0.6F;
            }
            bm localbm = new bm(this, localu, localColor3, i3, f8, f9, 30.0F + 58.0F * i2 / 8.0F, f7);
            this.w.put(localf1.getGuid(), localbm);
            i4 = 1;
            break label695;
          }
          if (localSortedMap2.isEmpty())
          {
            localColor3 = a(localai, ((Float)localSortedMap1.firstKey()).floatValue());
            continue;
          }
          Color localColor1 = a(localai, ((Float)localSortedMap1.firstKey()).floatValue());
          Color localColor2 = a(localai, ((Float)localSortedMap2.lastKey()).floatValue());
          float f4 = ((Float)localSortedMap1.firstKey()).floatValue() - f3;
          float f5 = f3 - ((Float)localSortedMap2.lastKey()).floatValue();
          float f6 = f4 + f5;
          Color localColor3 = new Color((f5 * localColor1.r + f4 * localColor2.r) / f6, (f5 * localColor1.g + f4 * localColor2.g) / f6, (f5 * localColor1.b + f4 * localColor2.b) / f6, 1.0F);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      if (i1 != 0)
        b();
      aj.b();
      return;
      label661: float f3 = 1.0F;
      continue;
      label667: float f11 = f2;
      float f12 = f1;
      break label684;
      label678: int i4 = i1;
      break label695;
      label684: float f2 = f11;
      float f1 = f12;
      continue;
      label695: int i1 = i4;
    }
  }

  public final void a(Set<String> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      this.w.remove(str);
    }
    if (paramSet.size() > 0)
      b();
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    this.v += ()(1000.0F * paramFloat);
    if ((this.A) && (this.r.a() != null))
      b();
    return true;
  }

  public final void dispose()
  {
    this.t.dispose();
    this.u.dispose();
    this.s.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bj
 * JD-Core Version:    0.6.2
 */