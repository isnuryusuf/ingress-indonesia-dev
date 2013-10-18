package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.w.y;

final class fw extends fj
{
  protected float f;
  private final Matrix4 h = new Matrix4();
  private final Vector3 i = new Vector3();
  private final m j = new fx(this);
  private final m k = new fy(this);
  private final m l = new fz(this);

  public fw(fu paramfu)
  {
    super(paramfu, ag.c);
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    if ((fu.e(this.g)) || (fu.f(this.g)));
    do
    {
      return;
      an.a(paramn, "ResonatorDrawable requires DeferredRenderer");
      this.f = this.g.m();
      if (fu.g(this.g) != null)
        this.f = 1.0F;
      this.a.set(paramf.e());
      Matrix4.mul(this.a.val, paramMatrix4.val);
      if ((fu.h(this.g) < fu.i(this.g)) && (!fu.j(this.g)))
      {
        float f1 = y.a(fu.k(this.g), fu.i(this.g), fu.h(this.g));
        this.a.scale(f1, f1, f1);
      }
      paramn.a(ag.c.a(), this.j);
      paramn.a(ag.d.a(), this.k);
    }
    while (fu.d(this.g) > 1.0F);
    this.i.set(paramf.h());
    this.i.y = 0.0F;
    Matrix4 localMatrix4 = paramMatrix4.cpy();
    localMatrix4.rotate(0.0F, 1.0F, 0.0F, 90.0F * -fu.d(this.g));
    localMatrix4.scale(0.75F, 3.0F, 0.75F);
    this.h.set(paramf.e());
    this.h.translate(0.0F, -5.0F, 0.0F);
    Matrix4.mul(this.h.val, localMatrix4.val);
    paramn.a(fu.q(), this.l);
  }

  protected final boolean d()
  {
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fw
 * JD-Core Version:    0.6.2
 */