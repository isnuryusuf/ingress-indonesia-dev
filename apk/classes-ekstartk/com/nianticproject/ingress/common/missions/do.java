package com.nianticproject.ingress.common.missions;

import com.google.a.d.u;
import com.nianticproject.ingress.common.w.b;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import java.util.Set;

final class do extends ab
{
  do(dl paramdl, String paramString)
  {
    super(paramdl, paramString, 0);
  }

  public final void a()
  {
    super.a();
    this.a.N = dl.a(this.a);
    double d = this.a.N.a(this.a.b.a);
    com.nianticproject.ingress.shared.b.a.b(this.a.b.a, this.a.N);
    if (Math.abs(d - 35.0D) < 5.0D)
    {
      this.a.w();
      dl.b(this.a).add(this.a.c.getComponent(Portal.class));
      dl.c(this.a);
      this.a.t().a(dl.d(this.a));
      com.nianticproject.ingress.common.a.a.a(this.a, "SkippingFirstLink");
      return;
    }
    this.a.t().a(dl.e(this.a));
    com.nianticproject.ingress.common.a.a.a(this.a, "RepeatingFirstLink");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.do
 * JD-Core Version:    0.6.2
 */