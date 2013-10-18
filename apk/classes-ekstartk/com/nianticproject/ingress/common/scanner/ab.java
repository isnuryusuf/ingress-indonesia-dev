package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.math.collision.Ray;
import com.nianticproject.ingress.common.j.g;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.ui.d.e;
import com.nianticproject.ingress.common.ui.e.b;

final class ab extends e
{
  private ab(k paramk)
  {
  }

  public final boolean tap(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    Ray localRay = g.a(k.m(this.a), paramFloat1 / k.n(this.a), 1.0F - paramFloat2 / k.o(this.a));
    if ((localRay != null) && (k.p(this.a).a(localRay) != null))
      return k.l(this.a).a(k.p(this.a));
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ab
 * JD-Core Version:    0.6.2
 */