package com.nianticproject.ingress.common.k;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.bp;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.f;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.j.ac;
import com.nianticproject.ingress.common.model.a.i;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.model.l;
import com.nianticproject.ingress.common.u.b;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class s extends com.nianticproject.ingress.common.ui.a
{
  public static final bs[] a = arrayOfbs;
  private static final aa b = new aa(s.class);
  private static float c = 0.15F;
  private static float d = 0.4F;
  private static final Vector3 e = new Vector3(0.0F, 0.0F, 5.0F);
  private static final Vector3 f = new Vector3(0.0F, 0.0F, 0.0F);
  private static final Vector3 g = new Vector3(0.0F, 1.0F, 0.0F);
  private final a A;
  private final q B;
  private final z C;
  private final Vector3 D = new Vector3();
  private final Vector3 E = new Vector3();
  private final y F;
  private ab G;
  private com.nianticproject.ingress.common.ui.elements.a H;
  private boolean I = true;
  private bn J;
  private final ac h;
  private final k i;
  private final com.nianticproject.ingress.common.model.a.e j;
  private final com.nianticproject.ingress.common.c.e k;
  private final boolean l;
  private float m;
  private float n;
  private float o;
  private boolean p;
  private boolean q;
  private float r;
  private float s;
  private float t;
  private float u;
  private float v;
  private float w;
  private Vector3 x = new Vector3();
  private boolean y;
  private final l z = new t(this);

  static
  {
    bs[] arrayOfbs = new bs[4];
    arrayOfbs[0] = bs.aY;
    arrayOfbs[1] = bs.bb;
    arrayOfbs[2] = bs.bc;
    arrayOfbs[3] = bs.aZ;
  }

  public s(k paramk, com.nianticproject.ingress.common.c.ak paramak, com.nianticproject.ingress.common.model.a.e parame, boolean paramBoolean, y paramy)
  {
    super("Space2FaceActivity");
    this.i = paramk;
    this.j = parame;
    this.l = paramBoolean;
    this.F = paramy;
    this.C = new z(paramak);
    this.k = o.a();
    this.h = new ac(e, f, g);
    this.h.a(45.0F);
    this.B = new q();
    this.A = new a(this.h, new u(this));
    com.nianticproject.ingress.common.y localy = com.nianticproject.ingress.common.s.c.f();
    if (localy != null)
      this.n = ((float)(localy.c / 1000000.0D - 100.0D));
  }

  private void a(float paramFloat1, float paramFloat2)
  {
    float f1 = 360.0F;
    this.v = paramFloat1;
    this.w = paramFloat2;
    r.a(this.v, this.w, 1.0F, this.x);
    if (this.q)
      return;
    this.k.a(bs.bc);
    this.B.a(this.v, this.w);
    this.t = (this.v - this.m);
    this.u = (this.w - this.n);
    float f2 = this.u;
    float f3;
    float f4;
    if (this.u < 0.0F)
    {
      f3 = f1;
      this.u = (f3 + f2);
      f4 = this.u;
      if (this.u >= 30.0F)
        break label154;
    }
    while (true)
    {
      this.u = (f4 + f1);
      this.p = true;
      return;
      f3 = 0.0F;
      break;
      label154: f1 = 0.0F;
    }
  }

  public static void a(b paramb, String paramString)
  {
    while (true)
    {
      int i1;
      try
      {
        aj.a("Space2Face.downloadAndReplaceFactionTexture");
        i1 = 0;
        if (i1 >= 2)
          break;
        try
        {
          c.a(com.nianticproject.ingress.common.z.a(URI.create(paramString + "/globalRegionMap"), paramb.b()));
          return;
        }
        catch (com.nianticproject.ingress.shared.rpc.y localy)
        {
          if (i1 != 1)
            break label66;
        }
        throw localy;
      }
      finally
      {
        aj.b();
      }
      label66: i1++;
    }
    aj.b();
  }

  private boolean a(Vector3 paramVector3)
  {
    return this.E.dot(paramVector3) > d;
  }

  private static float b(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      float f1 = (float)Math.log(6.0D);
      float f2 = (float)Math.log(1.899999976158142D);
      return (float)(Math.exp(f1 + (float)Math.pow(paramFloat, 3.0D) * (f2 - f1)) - 1.0D);
    }
  }

  private void j()
  {
    if (this.q)
    {
      this.q = false;
      this.H.e();
    }
    this.G = new ab();
    K().a(this.G);
    a("Scanning to acquire user location...");
    if (this.y)
    {
      a(this.v, this.w);
      return;
    }
    this.k.a(bs.aZ);
  }

  private void k()
  {
    ArrayList localArrayList;
    long l1;
    if (!this.l)
    {
      localArrayList = eq.a();
      l1 = (System.currentTimeMillis() - com.nianticproject.ingress.common.s.c.o()) / 3600000L;
      localArrayList.add(ba.ef);
      if (l1 <= 168L)
        break label98;
      localArrayList.add(ba.ei);
    }
    while (true)
    {
      bo localbo = new bo();
      localbo.a(localArrayList);
      localbo.a(bp.c);
      localbo.a(true);
      this.k.a(localbo.f());
      return;
      label98: if (l1 > 2L)
      {
        localArrayList.add(ba.eg);
        localArrayList.addAll(com.nianticproject.ingress.common.w.ak.a((int)l1));
        localArrayList.add(ba.eh);
        if (l1 > 72L)
          localArrayList.add(ba.ee);
        else if (l1 > 12L)
          localArrayList.add(ba.ej);
      }
    }
  }

  public final void a()
  {
    this.C.b();
  }

  public final void a(float paramFloat)
  {
    boolean bool1 = true;
    while (true)
    {
      try
      {
        aj.a("Space2Face.onUpdate");
        if (this.q)
        {
          this.A.a(false);
          this.s = (paramFloat + this.s);
          if (this.s > this.r)
            j();
        }
        this.B.a(paramFloat);
        if (!this.q)
        {
          this.A.a(paramFloat);
          this.A.a(true);
        }
        float f3;
        float f4;
        float f5;
        if ((this.q) || (this.I) || (!this.p))
        {
          this.n = ((30.0F * paramFloat + this.n) % 360.0F);
          float f1 = this.m;
          float f2 = this.n;
          f3 = b(0.0F);
          f4 = f2;
          f5 = f1;
          z localz = this.C;
          if (this.k.d() != f.c)
          {
            bool2 = bool1;
            localz.a(paramFloat, bool2);
            r.a(f5, f4, 1.0F, this.E);
            this.D.set(this.E);
            ac localac = this.h;
            Vector3 localVector31 = this.D;
            Vector3 localVector32 = f;
            Vector3 localVector33 = g;
            if (f3 <= 0.0F)
              break label527;
            bool3 = bool1;
            an.a(bool3);
            localVector31.mul(f3);
            localac.a(localVector31, localVector32, localVector33);
            localac.a(Math.max(0.01F * (f3 - 1.0F), 0.01F), 1.05F * f3);
            float f6 = f3 / 5.0F;
            this.B.b(f6);
            if ((!this.y) || (!a(this.x)))
              break label533;
            this.B.a(bool1);
          }
        }
        else
        {
          this.o = Math.min(paramFloat + this.o, 2.5F);
          float f7 = MathUtils.clamp(this.o / 2.5F, 0.0F, 1.0F);
          if (f7 >= 1.0F)
          {
            f8 = this.v;
            f9 = this.w;
            f10 = b(1.0F);
            this.o = 0.0F;
            this.p = false;
            k();
            if (this.F != null)
              this.F.a();
            this.A.b(1.0F - f7);
            f3 = f10;
            f4 = f9;
            f5 = f8;
            continue;
          }
          float f11 = (float)Math.pow(MathUtils.sin(3.141593F * MathUtils.clamp(f7 / 0.9F, 0.0F, 1.0F) / 2.0F), 3.0D);
          float f9 = this.n + f11 * this.u;
          float f8 = this.m + f11 * this.t;
          float f10 = b(f7);
          this.C.d();
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      boolean bool2 = false;
      continue;
      label527: boolean bool3 = false;
      continue;
      label533: bool1 = false;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    super.a(paramInt1, paramInt2);
    this.h.a(paramInt1, paramInt2);
    this.A.a(paramInt1, paramInt2);
  }

  public final void a(Skin paramSkin)
  {
    try
    {
      aj.a("Space2Face.onCreate");
      this.B.b();
      this.i.a(this.z);
      if (!this.j.a(i.g))
      {
        this.j.a(i.g, true);
        this.q = true;
        this.J = bs.bb.a();
        int i1 = this.J.r().a().d();
        this.r = ((i1 + 5000) / 1000.0F);
        this.s = 0.0F;
        this.k.a(this.J);
        this.H = new v(this, "\n\n\n\n\nNot long ago at the CERN Lab, as a by-product of the Higgs-Boson research, a new substance called Exotic Matter was discovered.\n\nWhat was particularly disturbing about XM, is that it is believed to be ordered, intelligent data.\n\nFurther, in sufficient quantities it is capable of influencing, even controlling human thought.\n\nWhat is clear, is that whoever controls the XM, controls the destiny of mankind.\n\n\n\n\n\n\n\n\n\n\n", i1 / 1000.0F, c);
        K().a(this.H);
      }
      while (true)
      {
        return;
        j();
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(String paramString)
  {
    if (this.G != null)
      this.G.a(paramString);
  }

  public final void b(Skin paramSkin)
  {
    super.b(paramSkin);
  }

  protected final String d()
  {
    return "Space2Face";
  }

  public final void e()
  {
    if (this.J != null)
      this.J.n();
    this.C.c();
    this.C.a();
    while (true)
    {
      int i2;
      try
      {
        aj.a("DisposeSpace2FaceAssets");
        bs[] arrayOfbs = a;
        int i1 = arrayOfbs.length;
        i2 = 0;
        if (i2 >= i1)
          break;
        Iterator localIterator = arrayOfbs[i2].a().a().iterator();
        if (localIterator.hasNext())
        {
          bi localbi = (bi)localIterator.next();
          this.k.a(localbi.a());
          continue;
        }
      }
      finally
      {
        aj.b();
      }
      i2++;
    }
    aj.b();
  }

  protected final boolean f()
  {
    return true;
  }

  public final void g()
  {
    try
    {
      aj.a("Space2Face.onRender");
      this.B.a(com.nianticproject.ingress.common.w.z.a, this.h, null);
      if (a(this.A.c()))
        this.A.a();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void i()
  {
    this.I = false;
  }

  public final boolean l_()
  {
    if (!this.I)
      k();
    return this.I;
  }

  public final void q_()
  {
    super.q_();
    c.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.s
 * JD-Core Version:    0.6.2
 */