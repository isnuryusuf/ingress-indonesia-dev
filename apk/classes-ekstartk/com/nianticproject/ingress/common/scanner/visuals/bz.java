package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Matrix4;
import com.google.a.a.an;
import com.google.a.d.u;
import com.nianticproject.ingress.common.j.af;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;

final class bz
  implements m, o
{
  private final Matrix4 b = new Matrix4();
  private final Matrix4 c = new Matrix4();
  private final eo d;
  private final float e;
  private float f = 5.0F;

  public bz(bt parambt, fp paramfp, u paramu, float paramFloat)
  {
    an.a(paramu);
    this.d = paramfp.a(paramu);
    this.e = paramFloat;
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    this.b.set(paramf.e()).mul(this.d.a(this.c)).rotate(0.0F, 1.0F, 0.0F, -this.e).scale(0.5F * bt.n(this.a), 0.5F * bt.n(this.a), 0.5F * bt.n(this.a));
    paramn.a(bt.e, this);
  }

  public final void a(af paramaf)
  {
    ai.k();
    bt.o(this.a).a(this.b);
    ai.a(bt.p(this.a), this.f / 2.0F / 5.0F);
    bt.o(this.a).h();
    bt.o(this.a).j();
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(float paramFloat)
  {
    this.f -= paramFloat;
    return this.f > 0.0F;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bz
 * JD-Core Version:    0.6.2
 */