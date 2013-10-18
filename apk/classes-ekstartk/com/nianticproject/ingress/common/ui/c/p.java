package com.nianticproject.ingress.common.ui.c;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector2;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.scanner.visuals.u;
import com.nianticproject.ingress.common.scanner.visuals.w;
import com.nianticproject.ingress.common.w.i;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.shared.model.DamageDetail;

public final class p
  implements q
{
  private final DamageDetail a;
  private final ej b;

  public p(DamageDetail paramDamageDetail, ej paramej)
  {
    this.a = paramDamageDetail;
    this.b = paramej;
  }

  public final boolean a()
  {
    return this.a.d();
  }

  public final boolean a(k paramk, h paramh, Vector2 paramVector2, float paramFloat)
  {
    float f1 = 1.0F + paramFloat;
    if (this.b == null)
      return true;
    long l2;
    float f2;
    int i;
    ba localba1;
    ba localba2;
    if (this.b.b().tmp().sub(paramVector2).len2() <= f1 * f1)
    {
      if (this.a.d())
      {
        Color localColor = this.b.g();
        this.b.b(new w(paramh, 4.0F, 10, 5.0F, 0.2F, i.a));
        this.b.b(new w(paramh, 2.0F, 20, 5.0F, 0.3F, localColor));
        this.b.b(new w(paramh, 1.25F, 40, 5.0F, 0.4F, Color.BLACK));
        this.b.b(new u(paramh, this.b.f(), 3.0F, 10, 1.0F, 5.0F, localColor));
        this.b.i();
        o.a().a(bs.i);
      }
      com.nianticproject.ingress.gameentity.f localf;
      do
      {
        if (this.a.c())
        {
          this.b.b(new w(paramh, 4.0F, 10, 5.0F, 0.2F, i.f));
          o.a().a(bs.d);
        }
        return true;
        localf = this.b.e();
      }
      while (localf == null);
      long l1 = ((Resonator)localf.getComponent(Resonator.class)).getEnergyCapacity();
      l2 = Math.max(1L, 100L * this.a.a() / l1);
      paramk.a(this.b, new com.nianticproject.ingress.common.ui.hud.f(l2, this.a.c()));
      f2 = 10.0F;
      i = 20;
      localba1 = ba.O;
      if (l2 < 5L)
      {
        i = 5;
        f2 = 3.0F;
        localba2 = ba.Q;
      }
    }
    while (true)
    {
      this.b.b(new w(paramh, 4.0F, i, f2, 0.2F, i.d));
      o.a().a(new bo().a(new ba[] { localba2 }).b().f());
      break;
      if (l2 < 25L)
      {
        i = 10;
        f2 = 5.0F;
        localba2 = ba.P;
        continue;
        return false;
      }
      else
      {
        localba2 = localba1;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c.p
 * JD-Core Version:    0.6.2
 */