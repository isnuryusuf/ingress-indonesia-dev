package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.ui.widget.z;

final class e extends com.nianticproject.ingress.common.w.g
{
  private final z b = new f(this);
  private final cn c = new g(this);

  e(a parama, String paramString)
  {
    super(paramString);
  }

  public final void a()
  {
    if (this.a.c != null)
      this.a.j.c(du.b(this.a.c.getGuid()));
    this.a.i.s_().a(this.c);
    this.a.i.s_().a(this.b);
    this.a.a_("Identify a potential Portal. Use your Scanner map to tag a Portal.");
    this.a.n.a(bs.K);
    this.a.a("Place Portal", du.a("Tap the Scanner map", "Touch CHOOSE"), du.g(), 2147483647, 2147483647);
  }

  public final void u_()
  {
    this.a.a(du.g());
    if (this.a.c != null)
      this.a.j.c(du.b(this.a.c.getGuid()));
    this.a.i.s_().t_();
    this.a.i.s_().b(this.c);
    this.a.i.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.e
 * JD-Core Version:    0.6.2
 */