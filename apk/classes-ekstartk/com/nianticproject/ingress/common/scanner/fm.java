package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.Matrix4;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.m;
import com.nianticproject.ingress.common.j.n;

final class fm extends fj
{
  public final m f = new fn(this);
  private float h;
  private float i;

  public fm(fk paramfk, ai paramai)
  {
    super(paramfk, paramai);
    b();
    c();
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    an.a(paramn, "PortalDrawable requires DeferredRenderer");
    this.a.set(paramf.e());
    Matrix4.mul(this.a.val, paramMatrix4.val);
    this.h = this.g.m();
    this.i = fk.e(this.g);
    paramn.a(this.g.k(), this.f);
  }

  protected final boolean d()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fm
 * JD-Core Version:    0.6.2
 */