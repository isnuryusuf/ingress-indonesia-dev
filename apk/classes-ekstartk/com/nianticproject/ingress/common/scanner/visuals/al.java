package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.bq;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.q;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.scanner.visuals.b.l;
import com.nianticproject.ingress.common.scanner.visuals.b.t;

public final class al extends q
  implements Disposable, com.nianticproject.ingress.common.j.o
{
  public static boolean e = false;
  private static final float f = new t().d();
  private k g;
  private final com.nianticproject.ingress.common.gameentity.e h;
  private final eo i;
  private final eo j;
  private an k = null;
  private float l = 0.0F;
  private Matrix4 m = new Matrix4();
  private float n;
  private float o;
  private float p;
  private float q = (float)(3.141592653589793D * (2.0D * Math.random()));
  private Vector3 r = new Vector3(0.0F, 1.0F, 0.0F);
  private Vector3 s = new Vector3(0.0F, 0.0F, 0.0F);
  private Vector3 t = new Vector3(0.0F, 0.0F, 0.0F);
  private float u;
  private boolean v = false;
  private l w;
  private t x = new t();
  private float y = an.a();

  public al(k paramk, com.nianticproject.ingress.common.gameentity.e parame, eo parameo1, eo parameo2)
  {
    this.g = ((k)com.google.a.a.an.a(paramk));
    this.h = ((com.nianticproject.ingress.common.gameentity.e)com.google.a.a.an.a(parame));
    this.i = parameo1;
    this.j = parameo2;
    e();
  }

  private float a(an paraman1, an paraman2)
  {
    float f1 = paraman1.b();
    if (paraman2 != null);
    for (float f2 = paraman2.b(); this.l < f1; f2 = this.y)
      return 0.0F;
    if (this.l > f2)
      return 1.0F;
    return (this.l - f1) / (f2 - f1);
  }

  public static float c()
  {
    return an.a();
  }

  private void e()
  {
    bn localbn;
    if (this.k == null)
    {
      this.k = an.values()[0];
      if (this.k != null)
      {
        int i2 = am.a[this.k.ordinal()];
        localbn = null;
        switch (i2)
        {
        default:
        case 1:
        case 2:
        }
      }
    }
    while (true)
    {
      if (localbn != null)
        com.nianticproject.ingress.common.c.o.a().a(localbn);
      return;
      int i1 = 1 + this.k.ordinal();
      if (i1 < an.values().length)
      {
        this.k = an.values()[i1];
        break;
      }
      this.k = null;
      break;
      bo localbo2 = new bo();
      ba[] arrayOfba2 = new ba[1];
      arrayOfba2[0] = ba.H;
      localbn = localbo2.a(arrayOfba2).a(bq.a).f();
      continue;
      bo localbo1 = new bo();
      ba[] arrayOfba1 = new ba[1];
      arrayOfba1[0] = ba.I;
      localbn = localbo1.a(arrayOfba1).a(bq.a).f();
    }
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    super.a(paramMatrix4, paramf, paramn);
    Vector2 localVector21 = this.i.b();
    Vector2 localVector22 = this.j.b();
    this.s.set(localVector21.x, this.n, localVector21.y);
    if (this.w != null)
    {
      this.t.set(localVector22.x, 0.0F, localVector22.y);
      this.w.a(this.s, this.t);
    }
    this.m.setToTranslation(this.s).rotate(this.r, this.p + this.q).scale(this.o, this.o, this.o);
    this.h.a(this.m, paramf);
    paramn.a(g.c, this.h);
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    super.a(paramFloat);
    if (this.k == null)
      return false;
    switch (am.a[this.k.ordinal()])
    {
    default:
    case 1:
    case 3:
    case 4:
    case 2:
    }
    while (true)
    {
      this.l = (paramFloat + this.l);
      this.u = (paramFloat + this.u);
      if (this.u > this.k.e)
      {
        this.u = 0.0F;
        e();
      }
      if ((e) && (this.k == null))
      {
        e();
        this.l = 0.0F;
      }
      if (this.k == null)
        break;
      return true;
      float f2 = 1.0F - (float)Math.pow(1.0F - a(an.a, an.b), 2.0D);
      this.n = (f2 * 48.0F);
      this.o = (f2 * 13.5F);
      this.p = 0.0F;
      float f3 = a(an.a, an.c);
      float f4 = (float)Math.pow(f3, 0.5D);
      this.p = (1400.0F * f4);
      float f5 = (float)Math.pow(f3, 0.5D);
      float f6 = f4 * 1.0F;
      float f7 = f5 * 0.15F;
      this.r.set(f7 * (float)Math.sin(f6), 1.0F, f7 * (float)Math.cos(f6)).nor();
      continue;
      this.n = 48.0F;
      this.v = false;
      this.p += 15.0F * paramFloat;
      continue;
      if (!this.v)
      {
        this.v = true;
        this.w = new l(this.x);
        this.g.a(new com.nianticproject.ingress.common.scanner.visuals.b.e(this.w));
      }
      float f1 = this.u;
      t localt = this.x;
      if (f1 > 0.4F * (0.0F + localt.h + localt.d))
        this.o = 0.0F;
    }
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.al
 * JD-Core Version:    0.6.2
 */