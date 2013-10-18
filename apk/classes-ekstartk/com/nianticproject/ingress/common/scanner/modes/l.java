package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.a.aj;
import com.google.a.c.du;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.ui.e.d;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.f;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class l extends z
{
  private static final aa g = new aa(l.class);
  private as h;
  private boolean i = true;
  private float j;
  private m k;
  private af l;
  private com.nianticproject.ingress.common.ui.widget.q m;
  private Collection<f> n;
  private List<com.nianticproject.ingress.common.inventory.ui.q> o;
  private n p = new n(this, "FireXmpMode", (byte)0);
  private f q;
  private boolean r;

  public l(com.nianticproject.ingress.common.scanner.k paramk, com.nianticproject.ingress.common.h.l paraml, h paramh, com.nianticproject.ingress.common.model.k paramk1, ed paramed, g paramg)
  {
    super(paramk, paraml, paramh, paramk1, paramed, paramg);
  }

  public final d a()
  {
    return new d();
  }

  public final void a(as paramas)
  {
    g();
    this.j = this.a.y().f();
    this.a.y().c(Math.max(this.j, 1.0F));
    super.a(paramas);
    this.n = ((Collection)com.nianticproject.ingress.common.gameentity.a.a(this.b, du.a(com.nianticproject.ingress.shared.af.b, com.nianticproject.ingress.shared.af.m)).a(Collections.emptyList()));
    this.o = null;
    this.k = new m(this);
    this.a.a(this.k);
    this.h = paramas;
  }

  public final void a(f paramf)
  {
    this.q = paramf;
  }

  public final boolean a(float paramFloat)
  {
    if (this.i)
    {
      this.i = false;
      if (this.k != null)
        this.k.d();
    }
    return super.a(paramFloat);
  }

  public final void b()
  {
    c(this.j);
    super.b();
    if (this.k != null)
    {
      this.k.e();
      this.k = null;
    }
    if (this.l != null)
    {
      this.l.e();
      this.l = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.l
 * JD-Core Version:    0.6.2
 */