package com.nianticproject.ingress.common.scanner.visuals;

import com.nianticproject.ingress.common.j.d;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ez;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.shared.ai;

public final class cv extends cr
{
  private final cw g = (cw)this.f;
  private d h = null;
  private float i = 1.0F;
  private float j = 0.0F;

  public cv(h paramh, k paramk, ed paramed1, fp paramfp, ed paramed2, ez paramez)
  {
    super(paramk, paramed1, paramfp, new cw(paramh, paramed1, paramed2, paramez));
  }

  public final void a(int paramInt)
  {
    this.g.b(paramInt);
  }

  public final void a(d paramd)
  {
    if (this.h != null)
      this.h.d();
    this.h = paramd;
    this.g.k();
  }

  final void a(cy paramcy)
  {
    this.g.a(paramcy);
  }

  public final void a(ai paramai)
  {
    this.g.a(paramai);
  }

  public final boolean a(float paramFloat)
  {
    if ((this.h != null) && (this.h.a()) && (!this.g.i()))
    {
      this.g.a(this.h.b());
      this.g.j();
    }
    if (this.j < this.i)
    {
      this.j += paramFloat / 0.25F;
      if (this.j > this.i)
        this.j = this.i;
    }
    while (true)
    {
      cw.a(this.g, this.j);
      if ((!super.a(paramFloat)) || (g()))
        break;
      return true;
      if (this.j > this.i)
      {
        this.j -= paramFloat / 0.25F;
        if (this.j < this.i)
          this.j = this.i;
      }
    }
    return false;
  }

  public final void dispose()
  {
    if (this.h != null)
      this.h.d();
    this.e.b();
    super.dispose();
  }

  public final void e()
  {
    this.i = 1.0F;
  }

  public final void f()
  {
    this.i = 0.0F;
  }

  public final boolean g()
  {
    return (this.i == 0.0F) && (this.j == 0.0F);
  }

  public final double h()
  {
    return this.e.d();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cv
 * JD-Core Version:    0.6.2
 */