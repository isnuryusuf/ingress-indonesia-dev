package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
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
import com.nianticproject.ingress.common.scanner.visuals.b.t;
import com.nianticproject.ingress.common.scanner.visuals.b.v;

public final class p extends q
  implements Disposable, com.nianticproject.ingress.common.j.o
{
  public static boolean e = false;
  private static final float f = new v(0.0F).c() - 0.05F;
  private k g;
  private final com.nianticproject.ingress.common.gameentity.e h;
  private final eo i;
  private final eo j;
  private r k = null;
  private float l = 0.0F;
  private Matrix4 m = new Matrix4();
  private float n;
  private float o;
  private float p;
  private float q;
  private float r = (float)(3.141592653589793D * (2.0D * Math.random()));
  private Vector3 s = new Vector3(0.0F, 1.0F, 0.0F);
  private Vector3 t = new Vector3(0.0F, 0.0F, 0.0F);
  private Vector3 u = new Vector3(0.0F, 0.0F, 0.0F);
  private float v;
  private float w = r.a();

  public p(k paramk, com.nianticproject.ingress.common.gameentity.e parame, eo parameo1, eo parameo2, float paramFloat)
  {
    this.g = ((k)an.a(paramk));
    this.h = ((com.nianticproject.ingress.common.gameentity.e)an.a(parame));
    this.j = parameo2;
    this.i = parameo1;
    this.l = Math.max(0.0F, r.a.e - paramFloat);
    this.v = this.l;
    d();
  }

  private void d()
  {
    bn localbn;
    if (this.k == null)
    {
      this.k = r.values()[0];
      if (this.k != null)
      {
        int i1 = q.a[this.k.ordinal()];
        localbn = null;
        switch (i1)
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
      this.k = this.k.b();
      break;
      bo localbo2 = new bo();
      ba[] arrayOfba2 = new ba[1];
      arrayOfba2[0] = ba.I;
      localbn = localbo2.a(arrayOfba2).a(bq.a).f();
      continue;
      bo localbo1 = new bo();
      ba[] arrayOfba1 = new ba[1];
      arrayOfba1[0] = ba.k;
      localbn = localbo1.a(arrayOfba1).a(bq.a).f();
    }
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    super.a(paramMatrix4, paramf, paramn);
    Vector2 localVector21 = this.j.b();
    Vector2 localVector22 = this.i.b();
    this.u.set(localVector22.x, 0.0F, localVector22.y);
    this.t.set(localVector21.x, this.n, localVector21.y).lerp(this.u, this.p);
    this.m.setToTranslation(this.t).rotate(this.s, this.q + this.r).scale(this.o, this.o, this.o);
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
    switch (q.a[this.k.ordinal()])
    {
    case 3:
    default:
    case 1:
      while (true)
      {
        this.l = (paramFloat + this.l);
        this.v = (paramFloat + this.v);
        if (this.v > this.k.e)
        {
          this.v = 0.0F;
          d();
        }
        if ((e) && (this.k == null))
        {
          d();
          this.l = 0.0F;
        }
        if (this.k == null)
          break;
        return true;
        this.n = 24.0F;
        this.o = 13.5F;
        this.q = 0.0F;
      }
    case 2:
    }
    r localr1 = r.d;
    r localr2 = localr1.b();
    float f1 = localr1.c();
    float f2;
    label175: float f3;
    if (localr2 != null)
    {
      f2 = localr2.c();
      if (this.l >= f1)
        break label295;
      f3 = 0.0F;
    }
    while (true)
    {
      float f4 = (float)Math.pow(f3, 2.0D);
      this.p = f4;
      this.o = (13.5F * (1.0F - f4));
      this.q = (1000.0F * f4);
      float f5 = (float)Math.pow(f3, 0.5D);
      float f6 = f4 * 1.0F;
      float f7 = f5 * 0.15F;
      this.s.set(f7 * (float)Math.sin(f6), 1.0F, f7 * (float)Math.cos(f6)).nor();
      break;
      f2 = this.w;
      break label175;
      label295: if (this.l > f2)
        f3 = 1.0F;
      else
        f3 = (this.l - f1) / (f2 - f1);
    }
    return false;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.p
 * JD-Core Version:    0.6.2
 */