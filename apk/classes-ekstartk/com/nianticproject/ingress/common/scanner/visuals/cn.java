package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.google.a.c.dh;
import com.google.a.c.du;
import com.google.a.c.eq;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.h.c;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.common.j.s;
import com.nianticproject.ingress.common.j.t;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.scanner.fu;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.i;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.common.w.z;
import com.nianticproject.ingress.gameentity.components.Energy;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.b.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public class cn extends q
{
  private static final aa g = new aa(cn.class);
  private static final Color h = new Color(0.78F, 0.31F, 0.31F, 1.0F);
  private static final int i = Math.min(1365, 1638) / 8;
  private static final float[] j = new float[5];
  private static final float[] k = new float[5];
  private static final float[] l = new float[5];
  final Vector3 e = new Vector3();
  final Vector3 f = new Vector3();
  private final Texture m;
  private final Vector3 n = new Vector3();
  private final Vector3 o = new Vector3();
  private final Vector3 p = new Vector3();
  private final Color q = new Color();
  private final k r;
  private final bc s;
  private final ArrayList<cp> t = eq.a();
  private final Map<String, ej> u;
  private final Matrix4 v = new Matrix4();
  private float w;
  private boolean x;

  static
  {
    for (int i1 = 0; i1 < 5; i1++)
    {
      float f1 = i1 / 4.0F;
      j[i1] = f1;
      l[i1] = (3.5F * Math.max(1.0F - (float)Math.pow(y.a(2.0F * Math.abs(f1 - 0.5F)), 4.0D), 0.2F));
      k[i1] = (1.0F * y.a(1.0F - 2.0F * Math.abs(f1 - 0.5F)));
    }
  }

  public cn(k paramk, fp paramfp)
  {
    this.r = paramk;
    this.u = hc.b();
    this.m = ag.ao;
    this.s = new co(this, paramfp);
  }

  private static void a(float[] paramArrayOfFloat, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, Vector3 paramVector3, float paramFloat6, float paramFloat7)
  {
    paramArrayOfFloat[(0 + paramInt * 9)] = paramFloat1;
    paramArrayOfFloat[(1 + paramInt * 9)] = paramFloat2;
    paramArrayOfFloat[(2 + paramInt * 9)] = paramFloat3;
    paramArrayOfFloat[(3 + paramInt * 9)] = paramFloat6;
    paramArrayOfFloat[(4 + paramInt * 9)] = paramFloat4;
    paramArrayOfFloat[(5 + paramInt * 9)] = paramFloat5;
    paramArrayOfFloat[(6 + paramInt * 9)] = paramVector3.x;
    paramArrayOfFloat[(7 + paramInt * 9)] = paramVector3.z;
    paramArrayOfFloat[(8 + paramInt * 9)] = paramFloat7;
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    int i2;
    int i7;
    int i8;
    int i9;
    int i10;
    int i11;
    label329: float f3;
    label473: int i16;
    int i25;
    int i28;
    int i26;
    label1100: label1113: int i29;
    try
    {
      aj.a("ResonatorLinkVisuals.draw");
      super.a(paramMatrix4, paramf, paramn);
      if (this.x)
        this.x = false;
      try
      {
        aj.a("ResonatorLinkVisuals.rebuildVb");
        this.s.b();
        Iterator localIterator1 = this.u.values().iterator();
        i2 = (-1 + (this.u.size() + i)) / i;
        for (int i3 = 0; ; i3++)
        {
          if (i3 >= i2)
            break label1566;
          if (this.t.size() <= i3)
            this.t.add(new cp());
          cp localcp2 = (cp)this.t.get(i3);
          int i4 = this.u.size() - i3 * i;
          int i5 = Math.min(i, i4);
          int i6 = 20 * (i5 * 8);
          float[] arrayOfFloat = localcp2.a.a(i6);
          i7 = 0;
          i8 = 0;
          i9 = 0;
          if (i9 < i5)
          {
            ej localej = (ej)localIterator1.next();
            Portal localPortal = (Portal)localej.e().getComponent(Portal.class);
            if (localPortal == null)
              break label1452;
            float f1 = 6.0F * ag.a.f().y;
            float f2 = 6.0F * ((ai)ag.au.get(0)).d().y;
            com.nianticproject.ingress.gameentity.f localf1 = localPortal.getEntity();
            LocationE6 localLocationE61 = (LocationE6)localf1.getComponent(LocationE6.class);
            Color localColor1 = ea.a(b.a(localf1));
            Vector2 localVector22 = localej.b();
            i10 = 0;
            Iterator localIterator2 = localPortal.getLinkedResonatorGuids().values().iterator();
            i11 = i7;
            if (!localIterator2.hasNext())
              break label1491;
            String str = (String)localIterator2.next();
            fu localfu = (fu)this.r.b(str);
            if ((localfu == null) || (!localfu.p()))
              break;
            com.nianticproject.ingress.gameentity.f localf2 = localfu.e();
            if (c.a(localf2.getGuid()))
              break;
            Vector2 localVector23 = localfu.b();
            Resonator localResonator = (Resonator)localf2.getComponent(Resonator.class);
            Energy localEnergy = (Energy)localf2.getComponent(Energy.class);
            LocationE6 localLocationE62 = (LocationE6)localf2.getComponent(LocationE6.class);
            if (localEnergy == null)
              break label1463;
            f3 = localEnergy.getTotal() / localResonator.getEnergyCapacity();
            float f4 = 0.0666667F * (float)a.a(localLocationE61, localLocationE62);
            float f5 = 0.9F + 0.1F * f3;
            float f6 = 0.65F + 0.35F * f3;
            float f7 = 0.75F + 0.25F * f3;
            float f8 = 0.1F + 0.3F * f3;
            i.a(this.q, h, localColor1, 0.15F + f3 * 0.85F);
            Color localColor2 = this.q;
            localColor2.a = (f7 * localColor2.a);
            float f9 = this.q.toFloatBits();
            i16 = i10 + 1;
            this.e.set(localVector23.x, 0.0F, localVector23.y).sub(localVector22.x, 0.0F, localVector22.y);
            this.f.set(this.e).crs(Vector3.Y).nor();
            int i17 = i11 + 10;
            float f10 = 5.0F * (localVector23.x + localVector23.y) % 1.0F;
            int i18 = 0;
            int i19 = i17;
            int i21;
            for (int i20 = i11; i18 <= 4; i20 = i21)
            {
              float f11 = j[i18];
              float f12 = localVector22.x + f11 * this.e.x;
              float f13 = localVector22.y + f11 * this.e.z;
              float f14 = f2 + f11 * (f1 - f2) + f5 * k[i18];
              float f15 = f6 * l[i18];
              float f16 = f11 * f4;
              a(arrayOfFloat, i20 + 0, f12 + f15 * this.f.x, f14, f13 + f15 * this.f.z, 0.0F, f16 + f10, Vector3.Y, f8, f9);
              a(arrayOfFloat, i20 + 1, f12 - f15 * this.f.x, f14, f13 - f15 * this.f.z, 1.0F, f16 + f10, Vector3.Y, f8, f9);
              i21 = i20 + 2;
              a(arrayOfFloat, i19 + 0, f12, f14 + f15, f13, 0.0F, f16 + f10, this.f, f8, f9);
              a(arrayOfFloat, i19 + 1, f12, f14 - f15, f13, 1.0F, f16 + f10, this.f, f8, f9);
              int i22 = i19 + 2;
              i18++;
              i19 = i22;
            }
          }
          int i23 = 48 * localcp2.c;
          int i24 = i8 * 48;
          if (i24 > i23)
          {
            short[] arrayOfShort = localcp2.b.a(i24);
            i25 = i23 / 48;
            break label1522;
            while (i28 < 4)
            {
              arrayOfShort[(i23 + 0)] = ((short)(i26 + 1));
              arrayOfShort[(i23 + 1)] = ((short)(i26 + 0));
              arrayOfShort[(i23 + 2)] = ((short)(i26 + 2));
              arrayOfShort[(i23 + 3)] = ((short)(i26 + 1));
              arrayOfShort[(i23 + 4)] = ((short)(i26 + 2));
              arrayOfShort[(i23 + 5)] = ((short)(i26 + 3));
              i26 += 2;
              i23 += 6;
              i28++;
            }
          }
          localcp2.c = i8;
        }
        while (i29 < this.t.size())
        {
          ((cp)this.t.get(i29)).c = 0;
          i29++;
        }
        aj.b();
        boolean bool = this.t.isEmpty();
        if (bool)
          return;
      }
      finally
      {
      }
    }
    finally
    {
      aj.b();
    }
    GL20 localGL20 = Gdx.gl20;
    localGL20.glEnable(3042);
    localGL20.glDepthMask(false);
    localGL20.glDisable(2884);
    Vector2 localVector21 = this.s.c();
    this.v.set(paramf.e()).translate(localVector21.x, 0.0F, localVector21.y);
    z.a(paramf.d(), this.n, this.o, this.p);
    ShaderProgram localShaderProgram = ag.aE;
    localShaderProgram.begin();
    localShaderProgram.setUniformMatrix("u_modelViewProject", this.v);
    localShaderProgram.setUniformf("u_cameraFwd", this.p);
    localShaderProgram.setUniformf("u_elapsedTime", this.w % 300.0F);
    this.m.bind(0);
    localShaderProgram.setUniformi("u_texture", 0);
    for (int i1 = 0; ; i1++)
      if (i1 < this.t.size())
      {
        cp localcp1 = (cp)this.t.get(i1);
        if (localcp1.c > 0)
          localcp1.b.a(20 * localcp1.c, 48 * localcp1.c, localcp1.a, localShaderProgram);
      }
      else
      {
        localGL20.glDisable(3042);
        localGL20.glEnable(2884);
        localGL20.glDepthMask(true);
        aj.b();
        return;
        int i14 = i10;
        int i15 = i11;
        break label1480;
        label1452: int i12 = i8;
        int i13 = i7;
        break label1508;
        label1463: f3 = 0.0F;
        break label473;
        i15 = i11 + 20;
        i14 = i16;
        label1480: i10 = i14;
        i11 = i15;
        break label329;
        label1491: i12 = i8 + i10;
        i13 = i7 + i10 * 20;
        label1508: i9++;
        i8 = i12;
        i7 = i13;
        break;
        while (true)
        {
          label1522: if (i25 >= i8)
            break label1100;
          i26 = i25 * 20;
          for (int i27 = 0; ; i27++)
          {
            if (i27 >= 2)
              break label1560;
            i28 = 0;
            break;
            i26 += 2;
          }
          label1560: i25++;
        }
        label1566: i29 = i2;
        break label1113;
      }
  }

  public final void a(GameState paramGameState)
  {
    while (true)
    {
      try
      {
        aj.a("ResonatorLinkVisuals.setGameState");
        System.currentTimeMillis();
        Iterator localIterator1 = paramGameState.disappeared.iterator();
        if (!localIterator1.hasNext())
          break;
        String str = (String)localIterator1.next();
        boolean bool3 = this.x;
        if (this.u.remove(str) != null)
        {
          bool4 = true;
          this.x = (bool4 | bool3);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      boolean bool4 = false;
    }
    Iterator localIterator2 = paramGameState.changedEntities.iterator();
    while (localIterator2.hasNext())
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator2.next();
      Portal localPortal = (Portal)localf.getComponent(Portal.class);
      if (localPortal != null)
        if (!localPortal.getLinkedResonatorGuids().isEmpty())
        {
          ej localej = this.r.b(localf.getGuid());
          if (localej != null)
          {
            this.x = true;
            this.u.put(localf.getGuid(), localej);
          }
          else
          {
            g.b("Can not find ScannerEntity for portal: " + localf.getGuid());
          }
        }
        else
        {
          boolean bool1 = this.x;
          if (this.u.remove(localf.getGuid()) != null);
          for (boolean bool2 = true; ; bool2 = false)
          {
            this.x = (bool2 | bool1);
            break;
          }
        }
    }
    aj.b();
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.w = (paramFloat + this.w);
    return super.a(paramFloat);
  }

  public final void c()
  {
    this.x = true;
  }

  public void dispose()
  {
    Iterator localIterator = this.t.iterator();
    while (localIterator.hasNext())
      ((cp)localIterator.next()).dispose();
    this.s.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cn
 * JD-Core Version:    0.6.2
 */