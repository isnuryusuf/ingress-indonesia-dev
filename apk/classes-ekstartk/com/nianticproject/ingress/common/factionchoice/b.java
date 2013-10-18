package com.nianticproject.ingress.common.factionchoice;

import com.nianticproject.ingress.common.missions.a.j;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.b.s;
import com.nianticproject.ingress.common.ui.widget.ProgressBar;
import com.nianticproject.ingress.common.ui.widget.an;
import com.nianticproject.ingress.common.ui.widget.ao;

public final class b extends s
  implements ao
{
  private ProgressBar a;
  private j b = new j(-0.05F, 0.4F);
  private final c c;

  public b(ad paramad, az paramaz)
  {
    super(paramad, new ac[0]);
    this.b.b(2.0F);
    this.b.a();
    a(this.b);
    this.c = new c(paramaz);
    a(this.c);
  }

  public final void a()
  {
    super.a();
    this.a = c.a(this.c);
    this.a.a().a(0.0F, false);
    this.a.a(this);
    this.a.a().a(0.666F, true);
  }

  public final void a(float paramFloat)
  {
    if (paramFloat >= 0.666F)
    {
      this.a.a(null);
      c.b(this.c);
    }
  }

  public final void b()
  {
    this.a.a(null);
    this.a = null;
    super.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.b
 * JD-Core Version:    0.6.2
 */