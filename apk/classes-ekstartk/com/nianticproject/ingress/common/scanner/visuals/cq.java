package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Matrix4;
import com.google.a.a.an;
import com.nianticproject.ingress.common.gameentity.e;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.j.f;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.scanner.ej;

public final class cq extends y
{
  protected final ej d;
  private final Matrix4 e = new Matrix4();
  private final e f;

  public cq(ej paramej)
  {
    this.d = ((ej)an.a(paramej));
    this.f = g.g(paramej.e());
  }

  public final void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    float f1 = 2.0F;
    if (this.f == null)
      return;
    float f2 = 120.0F * Math.max(0.0F, this.c - 0.5F);
    float f3 = c();
    float f4 = 0.5F + 0.5F * (float)Math.cos(6.283186F * this.c);
    if (this.a)
      f1 *= f4 * d();
    this.e.set(paramMatrix4).rotate(0.0F, 1.0F, 0.0F, f2).translate(0.0F, f1, 0.0F).scale(f3, f3, f3);
    this.f.a(this.e, paramf);
    paramn.a(g.d, this.f);
  }

  public final void dispose()
  {
    super.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cq
 * JD-Core Version:    0.6.2
 */