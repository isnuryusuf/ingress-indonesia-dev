package com.nianticproject.ingress.common.scanner.visuals.a;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.visuals.aj;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.gameentity.components.Modable;
import com.nianticproject.ingress.shared.ai;

public final class a extends k
{
  private static final e u = new e(f.a);
  private static final e v = new e(f.b);
  private static final e w = new e(f.c);
  private aj A = new aj(ag.x, new Vector3(0.0F, 10.0F, 0.0F), 0.93F, 0.11F, 0.14F, 0.3F);
  private final Matrix4 a = new Matrix4();
  private final Matrix4 b = new Matrix4();
  private final float c = (float)(90.0D * Math.random());
  private Color d;
  private Color e;
  private float f;
  private float g = 9.0F * (float)Math.random();
  private float h = 1.0F;
  private float i;
  private final Vector3 j = new Vector3();
  private final Vector3 k = new Vector3();
  private boolean l = false;
  private boolean m = false;
  private float n = 0.0F;
  private float o = -0.5F;
  private float p = 0.0F;
  private float q = 0.0F;
  private float r = 1.0F;
  private long s;
  private long t;
  private final com.nianticproject.ingress.common.j.m x = new d(this, true);
  private final com.nianticproject.ingress.common.j.m y = new g(this);
  private final com.nianticproject.ingress.common.j.m z = new c(this);

  private boolean g()
  {
    return (this.m) || (this.n > 0.0F);
  }

  private void h()
  {
    this.t = this.s;
    this.i = y.b((float)(this.t - 6L) / 34.0F);
    this.f = (9.0F + -3.0F * this.i);
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    float f1 = e();
    if (this.l)
    {
      this.l = false;
      this.a.set(paramMatrix4).rotate(0.0F, 1.0F, 0.0F, this.c).scale(f1, f1, f1).inv();
      this.j.mul(this.a);
      this.p = 0.0F;
      this.k.set(this.j).nor();
      this.j.set(this.k).mul(1.0F);
    }
    this.b.set(paramf.e()).mul(paramMatrix4).rotate(0.0F, 1.0F, 0.0F, this.c).scale(f1, f1, f1);
    if ((this.m) && (!w.f()))
      paramn.a(w, this.z);
    while (true)
    {
      if (this.m)
        this.A.a(paramMatrix4, paramf, paramn);
      return;
      if ((this.q > 0.0F) && (!v.f()))
        paramn.a(v, this.y);
      else
        paramn.a(u, this.x);
    }
  }

  public final void a(Vector2 paramVector2, float paramFloat)
  {
    this.q = 2.0F;
    this.p = paramFloat;
    this.j.set(paramVector2.x, 0.5F, paramVector2.y);
    this.l = true;
  }

  public final void a(Modable paramModable, ai paramai)
  {
    this.d = ea.a(paramai);
    this.e = new Color(this.d).mul(0.9F);
    if (paramModable == null)
    {
      this.s = 0L;
      if (!g())
        break label62;
    }
    label62: 
    do
    {
      return;
      this.s = com.nianticproject.ingress.gameentity.components.g.a(paramModable, com.nianticproject.ingress.gameentity.components.m.b, q.j());
      break;
      if ((this.q <= 0.0F) || (this.s >= this.t))
        break label96;
    }
    while (g());
    this.n = 2.0F;
    return;
    label96: h();
  }

  public final boolean a(float paramFloat)
  {
    if (this.g > this.f)
    {
      this.g = (-paramFloat);
      this.h = (0.25F + 0.75F * (float)Math.random());
    }
    this.g = (paramFloat + this.g);
    if (this.n > 0.0F)
    {
      this.n -= paramFloat;
      if (this.n <= 0.0F)
      {
        this.m = true;
        o.a().a(bs.ai);
      }
    }
    if (this.m)
    {
      this.o += 0.7F * paramFloat;
      float f2 = 2.0F * (float)(Math.max(0.0D, Math.min(3.141592653589793D, this.o)) / 3.141592653589793D) - 1.0F;
      float f3 = 1.0F - (float)Math.pow(f2, 2.0D);
      float f4 = 1.0F - (float)Math.pow(f2, 6.0D);
      this.A.b(2.5F + f3 * 1.0F);
      this.A.c(0.0F + f4 * 0.3F);
      if (this.o > 3.641593F)
      {
        if (this.s == 0L)
          return false;
        this.m = false;
        this.q = 0.0F;
        this.o = -0.5F;
        c();
        h();
      }
    }
    if (g())
      this.q = 2.0F;
    if (this.q > 0.0F)
    {
      float f1 = (2.0F - this.q) / 2.0F;
      this.r = (1.0F - f1 * f1);
      this.r = ((float)Math.pow(this.r, 4.0D));
      this.q -= paramFloat;
      if (!this.l)
        this.p += paramFloat * 2.0F;
    }
    if (g())
      this.r = ((float)(this.r + 0.0D * Math.abs(Math.sin(3.0F * (2.0F - this.n)))));
    return super.a(paramFloat);
  }

  public final boolean b()
  {
    return g();
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.a.a
 * JD-Core Version:    0.6.2
 */