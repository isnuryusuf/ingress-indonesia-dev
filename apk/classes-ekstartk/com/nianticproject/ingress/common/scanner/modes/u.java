package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.a.an;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.gf;
import com.nianticproject.ingress.common.ui.elements.PortalInfoDialog;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.hud.PortalInfoHud;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment;
import com.nianticproject.ingress.gameentity.components.LocationE6;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.m;

public final class u extends ag
{
  private final com.nianticproject.ingress.common.model.k g;
  private final h h;
  private final y i;
  private final f j;
  private af k;
  private a l;
  private SelectableHudFragment m;
  private PortalInfoHud n;

  public u(com.nianticproject.ingress.common.model.k paramk, com.nianticproject.ingress.common.scanner.k paramk1, h paramh, j paramj, ej paramej, y paramy, f paramf)
  {
    super(paramk1, paramj, paramej);
    this.g = ((com.nianticproject.ingress.common.model.k)an.a(paramk));
    this.h = ((h)an.a(paramh));
    this.i = ((y)an.a(paramy));
    this.j = ((f)an.a(paramf));
  }

  public final void a(as paramas)
  {
    super.a(paramas);
    this.k = new af(paramas);
    this.c.a(this.k);
    this.k.a("CONFIRM DEPLOYMENT");
    this.l = new v(this);
    this.c.a(this.l);
    this.m = new SelectableHudFragment(this.h);
    PortalInfoDialog.a(this.m.b());
    this.c.a(this.e, this.m);
    f localf = this.e.e();
    LocationE6 localLocationE6 = (LocationE6)localf.getComponent(LocationE6.class);
    Portal localPortal = (Portal)localf.getComponent(Portal.class);
    if ((localLocationE6 != null) && (localPortal != null))
    {
      String str = localPortal.getDescriptiveText(m.a);
      if (str == null)
        str = "";
      gf localgf = new gf(localf.getGuid(), localLocationE6.getLatLng(), str, null);
      this.n = new PortalInfoHud(this.h, this.g, localf, localgf, null, null);
      this.c.a(this.e, this.n);
    }
  }

  public final void b()
  {
    if (this.m != null)
    {
      this.m.a();
      this.m = null;
    }
    if (this.n != null)
    {
      this.n.a();
      this.n = null;
    }
    this.c.b(this.k);
    this.k = null;
    this.c.b(this.l);
    this.l = null;
    super.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.u
 * JD-Core Version:    0.6.2
 */