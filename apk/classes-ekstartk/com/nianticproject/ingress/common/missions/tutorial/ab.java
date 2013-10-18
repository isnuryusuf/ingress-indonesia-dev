package com.nianticproject.ingress.common.missions.tutorial;

import com.nianticproject.ingress.common.c.ak;
import com.nianticproject.ingress.common.h;
import com.nianticproject.ingress.common.model.l;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.w.d;
import com.nianticproject.ingress.common.w.f;
import com.nianticproject.ingress.common.w.g;

final class ab extends g
{
  static final d a = new f("XM_COLLECTED_EVENT");
  private final u b;
  private final m c;
  private final ak d;
  private final h e;
  private l f;

  public ab(u paramu, m paramm, ak paramak, h paramh)
  {
    super("XmCollectingState");
    this.b = paramu;
    this.c = paramm;
    this.d = paramak;
    this.e = paramh;
  }

  public final void a()
  {
    this.d.a(false);
    this.e.a(true);
    this.f = new ac(this, c());
    this.c.a(this.f);
  }

  public final void u_()
  {
    this.d.a(true);
    this.c.b(this.f);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.ab
 * JD-Core Version:    0.6.2
 */