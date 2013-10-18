package com.nianticproject.ingress.common.missions.a;

import com.google.a.c.eq;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.av;
import com.nianticproject.ingress.common.missions.cl;
import com.nianticproject.ingress.common.missions.cm;
import com.nianticproject.ingress.common.missions.cn;
import com.nianticproject.ingress.common.scanner.ad;
import com.nianticproject.ingress.common.ui.d.d;
import com.nianticproject.ingress.common.ui.elements.ah;
import com.nianticproject.ingress.common.ui.widget.z;
import java.util.List;

public class r extends com.nianticproject.ingress.common.scanner.k
  implements cl
{
  private final com.nianticproject.ingress.common.ui.d.a d = new com.nianticproject.ingress.common.ui.d.a(this.e);
  private final d e = new d();
  private final List<cn> f = eq.a();
  private ah g;
  private cm h;
  private h i;

  public r(com.nianticproject.ingress.common.w.k paramk, l paraml, ac paramac, av paramav, com.nianticproject.ingress.common.model.k paramk1, com.nianticproject.ingress.common.g.e parame, com.nianticproject.ingress.common.q.e parame1, com.nianticproject.ingress.common.r paramr, com.nianticproject.ingress.common.a parama, ad paramad)
  {
    super(paramk, paraml, paramac, paramav, paramk1, parame, parame1, paramr, parama, paramad);
    addProcessor(this.d);
    this.i = new h();
    super.a(this.i);
    this.e.a(new s(this));
  }

  public final void a(cm paramcm)
  {
    this.h = paramcm;
  }

  public final void a(cn paramcn)
  {
    this.f.add(paramcn);
  }

  public final void a(ah paramah)
  {
    super.a(paramah);
    this.g = paramah;
  }

  public final void a(z paramz)
  {
    t_();
    this.i.a(paramz);
    this.i.a(true);
  }

  public final void a(boolean paramBoolean)
  {
    this.g.a(paramBoolean);
  }

  public final void b()
  {
    this.i.a();
  }

  public final void b(cn paramcn)
  {
    this.f.remove(paramcn);
  }

  protected final String d()
  {
    return "MissionScanner";
  }

  public final void j()
  {
    if (this.h != null)
      this.h.a();
  }

  public final void t_()
  {
    this.i.a(null);
    this.i.a(false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.r
 * JD-Core Version:    0.6.2
 */