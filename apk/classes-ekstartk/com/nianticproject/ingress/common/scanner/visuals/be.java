package com.nianticproject.ingress.common.scanner.visuals;

import a;
import a.a.a.a.b.bl;
import a.a.a.a.b.bw;
import a.a.a.a.b.cj;
import a.a.a.a.b.cl;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.cm;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.google.a.c.jb;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.j.am;
import com.nianticproject.ingress.common.j.au;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.t.b;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.ab;
import com.nianticproject.ingress.gameentity.components.EnergyGlob;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.shared.aj;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class be
  implements Disposable, au, o
{
  private static final aa a = new aa(be.class);
  private static final b b = com.nianticproject.ingress.common.t.c.a("Particle XM Update");
  private static final b c = com.nianticproject.ingress.common.t.c.a("Particle XM Render");
  private static final float[] e = { 0.0F, 0.0F, 1.0F, 1.0F };
  private static final float[] f = { 1.0F, 0.0F, 1.0F, 0.0F };
  private String d = "u_globParams";
  private final ab<bh> g = new bf(this);
  private final Matrix4 h = new Matrix4();
  private final Vector3 i = new Vector3();
  private final Vector2 j = new Vector2();
  private final fp k;
  private final bc l;
  private final com.nianticproject.ingress.common.j.an m;
  private final am n;
  private long o = 0L;
  private final Map<String, bh> p = hc.b();
  private final jb<Long, bh> q = cm.i();
  private final Set<String> r = jc.a();
  private final Set<bh> s = jc.a();
  private final bl<float[]> t = new bl((byte)0);
  private final a.a.a.a.b.ag u = new a.a.a.a.b.ag((byte)0);
  private final bl<Vector2> v = new bl((byte)0);
  private final bl<eo> w = new bl((byte)0);
  private bw x;
  private cl y = new cj((byte)0);

  public be(fp paramfp)
  {
    this.k = ((fp)com.google.a.a.an.a(paramfp));
    float[] arrayOfFloat = c();
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[6];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 3, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(3, 2, "a_texCoord0");
    arrayOfVertexAttribute[2] = new VertexAttribute(4, 1, "a_scale");
    arrayOfVertexAttribute[3] = new VertexAttribute(4, 1, "a_speed");
    arrayOfVertexAttribute[4] = new VertexAttribute(4, 1, "a_portalIndex");
    arrayOfVertexAttribute[5] = new VertexAttribute(4, 1, "a_index");
    this.m = new com.nianticproject.ingress.common.j.an(arrayOfFloat, arrayOfVertexAttribute);
    this.n = new am(b());
    this.l = new bg(this, paramfp);
    String[] arrayOfString = com.nianticproject.ingress.common.scanner.ag.aO.getUniforms();
    int i1 = arrayOfString.length;
    for (int i2 = 0; ; i2++)
      if (i2 < i1)
      {
        if (arrayOfString[i2].endsWith("[0]"))
          this.d += "[0]";
      }
      else
        return;
  }

  private static int a(float[] paramArrayOfFloat, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    for (int i1 = 0; i1 < 4; i1++)
    {
      paramArrayOfFloat[(paramInt + 0)] = paramFloat1;
      paramArrayOfFloat[(paramInt + 1)] = paramFloat2;
      paramArrayOfFloat[(paramInt + 2)] = paramFloat3;
      paramArrayOfFloat[(paramInt + 3)] = e[i1];
      paramArrayOfFloat[(paramInt + 4)] = f[i1];
      paramArrayOfFloat[(paramInt + 5)] = paramFloat4;
      paramArrayOfFloat[(paramInt + 6)] = paramFloat5;
      paramArrayOfFloat[(paramInt + 7)] = paramFloat6;
      paramArrayOfFloat[(paramInt + 8)] = paramFloat7;
      paramInt += 9;
    }
    return paramInt;
  }

  private void a(long paramLong, Vector2 paramVector2)
  {
    paramVector2.set(((eo)this.w.e(paramLong)).b()).sub(this.l.c());
  }

  private void a(bh parambh)
  {
    if (this.u.c(bh.a(parambh)));
    float[] arrayOfFloat;
    for (int i1 = (int)this.u.d(bh.a(parambh)); ; i1 = 0)
    {
      if (!bh.b(parambh))
        bh.a(parambh, ((eo)this.w.e(bh.a(parambh))).b());
      arrayOfFloat = (float[])this.t.e(bh.a(parambh));
      if (i1 < 360)
        break;
      aa localaa = a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i1);
      localaa.b("Maximum globs %d reached, skipping rest.", arrayOfObject);
      return;
      this.t.a(bh.a(parambh), new float[1440]);
      Vector2 localVector2 = new Vector2();
      this.w.a(bh.a(parambh), this.k.a(com.nianticproject.ingress.common.q.c.a(bh.a(parambh)).e()));
      a(bh.a(parambh), localVector2);
      this.v.a(bh.a(parambh), localVector2);
    }
    arrayOfFloat[(0 + i1 * 4)] = bh.c(parambh);
    arrayOfFloat[(1 + i1 * 4)] = bh.d(parambh);
    arrayOfFloat[(2 + i1 * 4)] = bh.e(parambh);
    arrayOfFloat[(3 + i1 * 4)] = (bh.f(parambh) + bh.g(parambh));
    bh.a(parambh, i1);
    this.u.a(bh.a(parambh), i1 + 1);
  }

  private boolean a(String paramString, boolean paramBoolean)
  {
    bh localbh = (bh)this.p.remove(paramString);
    if (localbh != null)
    {
      this.s.add(localbh);
      if (!paramBoolean)
        break label43;
      localbh.c();
    }
    while (localbh != null)
    {
      return true;
      label43: if (!localbh.d())
        localbh.e();
    }
    return false;
  }

  private static short[] b()
  {
    short[] arrayOfShort1 = new short[6480];
    short[] arrayOfShort2 = { 0, 1, 2, 1, 3, 2 };
    int i1 = 0;
    int i2 = 0;
    while (i1 < 6480)
    {
      for (int i3 = 0; i3 < 6; i3++)
        arrayOfShort1[(i1 + i3)] = ((short)(i2 + arrayOfShort2[i3]));
      i2 += 4;
      i1 += 6;
    }
    return arrayOfShort1;
  }

  private static float[] c()
  {
    new Random();
    float[] arrayOfFloat1 = new float[38880];
    int i1 = 0;
    float[] arrayOfFloat2 = new float[9];
    float[] arrayOfFloat3 = new float[9];
    float[] arrayOfFloat4 = new float[9];
    float[] arrayOfFloat5 = new float[9];
    float[] arrayOfFloat6 = new float[9];
    for (int i2 = 0; i2 < 9; i2++)
    {
      arrayOfFloat2[i2] = ((float)(Math.random() - 0.5D));
      arrayOfFloat3[i2] = ((float)(0.4D * Math.random() - 0.2D));
      arrayOfFloat4[i2] = ((float)(Math.random() - 0.5D));
      arrayOfFloat5[i2] = ((float)(4.5D * (0.5D + 0.5D * Math.random())));
      arrayOfFloat6[i2] = ((float)(2.5D * (0.5D + 0.5D * Math.random())));
    }
    int i3 = 0;
    while (i3 < 120)
    {
      int i4 = 0;
      int i6;
      for (int i5 = i1; i4 < 9; i5 = i6)
      {
        i6 = a(arrayOfFloat1, i5, arrayOfFloat2[i4], arrayOfFloat3[i4], arrayOfFloat4[i4], arrayOfFloat6[i4], arrayOfFloat5[i4], i3, i4);
        i4++;
      }
      i3++;
      i1 = i5;
    }
    return arrayOfFloat1;
  }

  public final void a(bw parambw)
  {
    this.x = parambw;
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    while (true)
    {
      int i1;
      int i2;
      int i3;
      try
      {
        aj.a("ParticleEnergyGlobVisuals.draw");
        c.b();
        GL20 localGL20 = Gdx.gl20;
        localGL20.glDisable(2884);
        localGL20.glEnable(3042);
        localGL20.glBlendFunc(770, 1);
        localGL20.glDepthMask(false);
        this.i.set(paramf.k());
        ShaderProgram localShaderProgram = com.nianticproject.ingress.common.scanner.ag.aO;
        com.nianticproject.ingress.common.scanner.ag.aX.bind(0);
        localShaderProgram.begin();
        this.n.a();
        this.m.a(localShaderProgram);
        this.h.set(paramf.e());
        localShaderProgram.setUniformMatrix("u_modelViewProject", this.h);
        localShaderProgram.setUniformi("u_texture", 0);
        localShaderProgram.setUniformf("u_timeSec", a.ak((float)this.o / 1000.0F));
        float f1 = 200.0F / paramf.a();
        localShaderProgram.setUniformf("u_scale", f1, f1 * paramf.b());
        i1 = 0;
        if (i1 < this.x.size())
        {
          long l1 = this.x.g(i1);
          if (!this.u.c(l1))
            break label459;
          this.j.set(this.l.c());
          this.j.add((Vector2)this.v.e(l1));
          localShaderProgram.setUniformf("u_mapCenter", this.j);
          i2 = (int)this.u.d(l1);
          i3 = 0;
          break label432;
          float[] arrayOfFloat = (float[])this.t.e(l1);
          localShaderProgram.setUniform4fv(this.d, arrayOfFloat, i3 * 4, 480);
          Gdx.gl20.glDrawElements(4, i4 * 54, 5123, 0);
          i3 += i4;
        }
        else
        {
          this.m.b(localShaderProgram);
          localShaderProgram.end();
          localGL20.glBlendFunc(770, 771);
          localGL20.glEnable(2884);
          localGL20.glDisable(3042);
          localGL20.glDepthMask(true);
          return;
        }
      }
      finally
      {
        aj.b();
        b.c();
      }
      label432: 
      do
      {
        i4 = 120;
        break;
        if (i3 >= i2)
          break label459;
      }
      while (i2 - i3 >= 120);
      int i4 = i2 - i3;
      continue;
      label459: i1++;
    }
  }

  public final void a(GameState paramGameState)
  {
    try
    {
      aj.a("ParticleEnergyGlobVisuals.setGameState");
      System.currentTimeMillis();
      Iterator localIterator1 = paramGameState.disappeared.iterator();
      while (localIterator1.hasNext())
      {
        String str2 = (String)localIterator1.next();
        if (a(str2, false))
          this.r.remove(str2);
      }
    }
    finally
    {
      aj.b();
    }
    Iterator localIterator2 = paramGameState.changedEntities.iterator();
    while (localIterator2.hasNext())
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator2.next();
      String str1 = localf.getGuid();
      if (!this.r.contains(str1))
      {
        EnergyGlob localEnergyGlob = (EnergyGlob)localf.getComponent(EnergyGlob.class);
        LocationE6 localLocationE6 = (LocationE6)localf.getComponent(LocationE6.class);
        if ((localLocationE6 == null) || (localEnergyGlob == null) || (localEnergyGlob.getTotal() == 0))
        {
          a(str1, false);
        }
        else if (this.p.get(str1) == null)
        {
          Math.random();
          bh localbh = ((bh)this.g.b()).a(this.k.b(localLocationE6.getIndexPoint()), (int)(6.0D * Math.random()), (float)Math.random());
          this.p.put(str1, localbh);
          this.s.add(localbh);
          this.q.a(Long.valueOf(bh.a(localbh)), localbh);
          a(localbh);
        }
      }
    }
    aj.b();
  }

  public final void a(Collection<String> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    boolean bool = false;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!this.r.contains(str))
      {
        bool |= a(str, true);
        this.r.add(str);
      }
    }
    if (bool)
      p.a().b().p();
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    int i1 = 0;
    while (true)
    {
      int i5;
      long l1;
      try
      {
        aj.a("ParticleEnergyGlobVisuals.update");
        b.b();
        this.o += ()(1000.0F * paramFloat);
        Iterator localIterator1 = this.s.iterator();
        this.y.clear();
        i2 = 0;
        if (localIterator1.hasNext())
        {
          bh localbh = (bh)localIterator1.next();
          float f1 = localbh.b();
          bi localbi = localbh.a(paramFloat);
          float f2 = localbh.b();
          if ((f1 >= 0.5F) || (f2 < 0.5F))
            break label411;
          i4 = 1;
          i5 = i4 | i2;
          if (localbi == bi.a)
            break label404;
          localIterator1.remove();
          if ((localbi != bi.c) || (!this.q.b(Long.valueOf(bh.a(localbh)), localbh)))
            break label404;
          this.y.d(bh.a(localbh));
          this.g.b(localbh);
          break label404;
        }
        if (i2 != 0)
          p.a().b().q();
        long[] arrayOfLong = this.y.e();
        int i3 = arrayOfLong.length;
        if (i1 >= i3)
          break label392;
        l1 = arrayOfLong[i1];
        if (this.q.a(Long.valueOf(l1)).size() > 0)
        {
          if (this.u.c(l1))
            this.u.a(l1, 0L);
          Iterator localIterator2 = this.q.a(Long.valueOf(l1)).iterator();
          if (!localIterator2.hasNext())
            break label386;
          a((bh)localIterator2.next());
          continue;
        }
      }
      finally
      {
        aj.b();
        b.c();
      }
      this.u.a(l1);
      this.t.a(l1);
      this.v.a(l1);
      this.w.a(l1);
      label386: i1++;
      continue;
      label392: aj.b();
      b.c();
      return true;
      label404: int i2 = i5;
      continue;
      label411: int i4 = 0;
    }
  }

  public void dispose()
  {
    this.m.dispose();
    this.n.dispose();
    this.l.dispose();
    this.g.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.be
 * JD-Core Version:    0.6.2
 */