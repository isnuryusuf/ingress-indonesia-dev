package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.s;
import com.nianticproject.ingress.common.j.t;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.w.i;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.common.w.z;
import com.nianticproject.ingress.gameentity.components.ControllingTeam;
import com.nianticproject.ingress.gameentity.components.Edge;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.k;
import com.nianticproject.ingress.shared.aj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ch
  implements Disposable, o
{
  private static final Color a = new Color(0.46F, 0.18F, 0.18F, 1.0F);
  private static final float[] b = new float[9];
  private static final float[] c = new float[9];
  private static final float[] d = new float[9];
  private final Matrix4 e = new Matrix4();
  private final Vector3 f = new Vector3();
  private final Vector3 g = new Vector3();
  private final Vector3 h = new Vector3();
  private final Vector3 i = new Vector3();
  private final Vector3 j = new Vector3();
  private final Vector3 k = new Vector3();
  private final Color l = new Color();
  private final fp m;
  private final bc n;
  private final Texture o;
  private final t p;
  private final s q;
  private final Map<String, cj> r = hc.b();
  private final Set<String> s = jc.a();
  private GameState t;
  private float u;
  private boolean v;

  static
  {
    for (int i1 = 0; i1 < 9; i1++)
    {
      float f1 = i1 / 8.0F;
      b[i1] = f1;
      d[i1] = (3.0F + -1.5F * (float)Math.pow(y.a(2.0F * Math.abs(f1 - 0.5F)), 4.0D));
      c[i1] = y.a(1.0F - 2.0F * Math.abs(f1 - 0.5F));
    }
  }

  public ch(fp paramfp)
  {
    this.m = ((fp)an.a(paramfp));
    this.o = ag.ap;
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[3];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 4, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(3, 4, "a_texCoord0");
    arrayOfVertexAttribute[2] = new VertexAttribute(5, 4, "a_color");
    this.p = new t(0, arrayOfVertexAttribute);
    this.q = new s();
    com.nianticproject.ingress.common.j.ai localai = (com.nianticproject.ingress.common.j.ai)ag.au.get(0);
    Vector3 localVector31 = localai.e();
    Vector3 localVector32 = localai.d();
    this.k.set(0.5F * (localVector32.x + localVector31.x), localVector32.y, 0.5F * (localVector32.z + localVector31.z)).mul(6.0F);
    this.n = new ci(this, paramfp);
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
    int i1;
    int i5;
    int i8;
    int i6;
    while (true)
    {
      int i2;
      try
      {
        aj.a("PortalLinkVisuals.draw");
        boolean bool = this.r.isEmpty();
        if (bool)
          return;
        if (this.v)
        {
          this.v = false;
          this.n.b();
          this.s.clear();
          i1 = this.r.size();
          float[] arrayOfFloat = this.p.a(i1 * 54);
          i2 = 0;
          Iterator localIterator = this.r.values().iterator();
          if (localIterator.hasNext())
          {
            cj localcj = (cj)localIterator.next();
            this.s.add(localcj.c);
            this.s.add(localcj.d);
            Vector2 localVector22 = localcj.a.b();
            Vector2 localVector23 = localcj.b.b();
            float f1 = this.k.y;
            float f2 = f1 + Math.min(30.0F, 0.08F * localcj.f);
            float f3 = k.a(localcj.c, this.t);
            float f4 = k.a(localcj.d, this.t);
            float f5 = (f3 + f4) / 2.0F;
            float f6 = 0.01F * localcj.f;
            float f7 = 0.1F + f5 * 0.3F;
            Color localColor = ea.a(localcj.e);
            this.i.set(localVector23.x, 0.0F, localVector23.y).sub(localVector22.x, 0.0F, localVector22.y);
            this.j.set(this.i).crs(Vector3.Y).nor();
            int i9 = i2 + 18;
            int i10 = i9 + 18;
            int i11 = 0;
            int i12 = i10;
            int i13 = i9;
            int i14 = i2;
            if (i11 > 8)
              break label1124;
            float f8 = b[i11];
            float f9 = f3 + f8 * (f4 - f3);
            float f10 = 0.6F + 0.35F * f9;
            i.a(this.l, a, localColor, 0.25F + f9 * 0.75F);
            float f11 = Color.toFloatBits(this.l.r, this.l.g, this.l.b, f10);
            float f12 = f8 * f6;
            float f13 = localVector22.x + f8 * this.i.x;
            float f14 = localVector22.y + f8 * this.i.z;
            float f15 = f1 + c[i11] * (f2 - f1);
            float f16 = d[i11];
            a(arrayOfFloat, i14 + 0, f13 + f16 * this.j.x, f15, f14 + f16 * this.j.z, 0.0F, f12, Vector3.Y, f7, f11);
            a(arrayOfFloat, i14 + 1, f13 - f16 * this.j.x, f15, f14 - f16 * this.j.z, 0.5F, f12, Vector3.Y, f7, f11);
            int i15 = i14 + 2;
            a(arrayOfFloat, i13 + 0, f13, f15 + f16, f14, 0.0F, f12, this.j, f7, f11);
            a(arrayOfFloat, i13 + 1, f13, f15 - f16, f14, 0.5F, f12, this.j, f7, f11);
            int i16 = i13 + 2;
            a(arrayOfFloat, i12 + 0, f13, f15 - f16, f14, 0.5F, f12, this.j, f7, f11);
            a(arrayOfFloat, i12 + 1, f13, 0.0F, f14, 1.0F, f12, this.j, f7, f11);
            int i17 = i12 + 2;
            i11++;
            i12 = i17;
            i13 = i16;
            i14 = i15;
            continue;
          }
          int i3 = this.q.a();
          int i4 = i1 * 144;
          if (i4 > i3)
          {
            short[] arrayOfShort = this.q.a(i4);
            i5 = i3 / 144;
            break;
            if (i8 >= 8)
              break label1159;
            arrayOfShort[(i3 + 0)] = ((short)(i6 + 1));
            arrayOfShort[(i3 + 1)] = ((short)(i6 + 0));
            arrayOfShort[(i3 + 2)] = ((short)(i6 + 2));
            arrayOfShort[(i3 + 3)] = ((short)(i6 + 1));
            arrayOfShort[(i3 + 4)] = ((short)(i6 + 2));
            arrayOfShort[(i3 + 5)] = ((short)(i6 + 3));
            i6 += 2;
            i3 += 6;
            i8++;
            continue;
          }
        }
        label896: GL20 localGL20 = Gdx.gl20;
        localGL20.glDisable(2884);
        localGL20.glEnable(3042);
        localGL20.glDepthMask(false);
        Vector2 localVector21 = this.n.c();
        this.e.set(paramf.e()).translate(localVector21.x, 0.0F, localVector21.y);
        z.a(paramf.d(), this.f, this.g, this.h);
        ShaderProgram localShaderProgram = ag.aE;
        this.o.bind(0);
        localShaderProgram.begin();
        localShaderProgram.setUniformMatrix("u_modelViewProject", this.e);
        localShaderProgram.setUniformf("u_cameraFwd", this.h);
        localShaderProgram.setUniformf("u_elapsedTime", this.u % 300.0F);
        this.q.a(54 * this.r.size(), 144 * this.r.size(), this.p, localShaderProgram);
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
      label1124: i2 += 54;
    }
    while (true)
    {
      if (i5 >= i1)
        break label896;
      i6 = i5 * 54;
      for (int i7 = 0; ; i7++)
      {
        if (i7 >= 3)
          break label1168;
        i8 = 0;
        break;
        label1159: i6 += 2;
      }
      label1168: i5++;
    }
  }

  public final void a(GameState paramGameState)
  {
    while (true)
    {
      try
      {
        aj.a("PortalLinkVisuals.setGameState");
        this.t = ((GameState)an.a(paramGameState));
        Iterator localIterator1 = paramGameState.disappeared.iterator();
        if (!localIterator1.hasNext())
          break;
        String str4 = (String)localIterator1.next();
        boolean bool1 = this.v;
        if (this.r.remove(str4) != null)
        {
          bool2 = true;
          this.v = (bool2 | bool1);
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      boolean bool2 = false;
    }
    Iterator localIterator2 = paramGameState.changedEntities.iterator();
    while (localIterator2.hasNext())
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator2.next();
      Edge localEdge = (Edge)localf.getComponent(Edge.class);
      if (localEdge != null)
      {
        u localu1 = localEdge.getOriginPortalLocation().getLatLng();
        u localu2 = localEdge.getDestinationPortalLocation().getLatLng();
        eo localeo1 = this.m.a(localu1);
        eo localeo2 = this.m.a(localu2);
        ControllingTeam localControllingTeam = (ControllingTeam)localf.getComponent(ControllingTeam.class);
        Map localMap = this.r;
        String str1 = localf.getGuid();
        String str2 = localEdge.getOriginPortalGuid();
        String str3 = localEdge.getDestinationPortalGuid();
        float f1 = (float)localu1.a(localu2);
        if (localControllingTeam != null);
        for (com.nianticproject.ingress.shared.ai localai = localControllingTeam.getTeam(); ; localai = com.nianticproject.ingress.shared.ai.c)
        {
          localMap.put(str1, new cj(str2, localeo1, str3, localeo2, f1, localai));
          this.v = true;
          break;
        }
      }
      Resonator localResonator = (Resonator)localf.getComponent(Resonator.class);
      if (localResonator != null)
        this.v |= this.s.contains(localResonator.getLinkedPortalGuid());
      else
        this.v |= this.s.contains(localf.getGuid());
    }
    aj.b();
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.u = (paramFloat + this.u);
    return true;
  }

  public final void dispose()
  {
    this.o.dispose();
    this.p.dispose();
    this.q.dispose();
    this.n.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.ch
 * JD-Core Version:    0.6.2
 */