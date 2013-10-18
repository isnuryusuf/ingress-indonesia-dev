package com.nianticproject.ingress.common.c;

import com.google.a.d.u;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.shared.b.a;

final class av
{
  private bn b = null;
  private u c;
  private double d;
  private double e;
  private double f;

  public av(ao paramao)
  {
  }

  public final void a(u paramu)
  {
    this.c = paramu;
  }

  public final void a(ad paramad, float paramFloat)
  {
    if ((paramad == null) || (this.c == null))
      return;
    this.d = ((float)Math.toRadians(a.b(paramad.a(), this.c)));
    this.e = a.a(paramad.a(), this.c);
    double d1 = Math.atan2(120.0D, this.e);
    double d2 = y.c((float)(this.d - ao.a(this.a).f()));
    double d3;
    float f1;
    if (Math.abs(d2) < d1)
    {
      d3 = Math.max(Math.min(-d2 / d1, 1.0D), -1.0D);
      f1 = 0.1F + 0.9F * (float)Math.max(0.0D, 1.0D - Math.pow(d3, 2.0D));
      if (ao.b(this.a).a());
    }
    for (f1 *= ao.c(this.a); ; f1 = 0.0F)
    {
      switch (at.a[o.a().d().ordinal()])
      {
      case 1:
      default:
      case 2:
      case 3:
      }
      while (f1 > 0.05F)
      {
        double d4 = Math.max(1.5D, Math.min(0.014D * this.e, 20.0D));
        this.f += paramFloat;
        if (this.f < d4)
          break label332;
        this.f = 0.0D;
        bo localbo = new bo();
        ba[] arrayOfba = new ba[1];
        arrayOfba[0] = ba.J;
        this.b = localbo.a(arrayOfba).a(f1).b((float)d3).f();
        o.a().a(this.b);
        return;
        f1 = 0.0F;
        continue;
        f1 *= 0.5F;
      }
      break;
      label332: if (this.b == null)
        break;
      this.b.a(f1, (float)d3);
      return;
      d3 = 0.0D;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.av
 * JD-Core Version:    0.6.2
 */