package com.nianticproject.ingress.common.scanner;

import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.ui.e.b;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.ScannerKnobs;
import com.nianticproject.ingress.shared.ai;

public class em
{
  private final aa a = new aa(em.class);
  private final k b;
  private final en c;
  private final r d;
  private com.nianticproject.ingress.common.u e;
  private String f;
  private boolean g;
  private z h;

  public em(k paramk, en paramen, r paramr)
  {
    this.b = paramk;
    this.c = paramen;
    this.d = paramr;
    this.g = false;
  }

  private void c()
  {
    this.f = null;
    if (this.e != null)
    {
      this.e.a();
      this.e = null;
    }
    if (this.h != null)
    {
      this.h.a();
      this.h = null;
    }
  }

  public final void a()
  {
    this.c.a(this.f);
  }

  public final void a(PortalCoupler paramPortalCoupler)
  {
    if (paramPortalCoupler == null)
      c();
    while (paramPortalCoupler.getPortalGuid().equals(this.f))
      return;
    this.f = paramPortalCoupler.getPortalGuid();
    com.google.a.d.u localu = paramPortalCoupler.getPortalLocation();
    if (this.b.E().a(localu) > 200.0D)
    {
      new StringBuilder("Centering scanner to ").append(localu.toString()).toString();
      if (this.h != null)
        this.h.a();
      this.h = this.b.C();
      if (this.e == null)
        this.e = this.d.a(q.e().c());
      this.e.a(localu);
      this.d.b();
      this.b.b(localu);
      this.c.b(localu);
    }
    this.c.a(localu);
  }

  public final void a(f paramf1, f paramf2, ai paramai)
  {
    this.b.a(paramf1, paramf2, ea.a(paramai));
  }

  public final void a(boolean paramBoolean)
  {
    if (this.g);
    do
    {
      return;
      c();
      this.g = true;
    }
    while (!paramBoolean);
    this.b.B().b();
  }

  public final String b()
  {
    return this.f;
  }

  public final void b(boolean paramBoolean)
  {
    en localen = this.c;
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      localen.a(bool);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.em
 * JD-Core Version:    0.6.2
 */