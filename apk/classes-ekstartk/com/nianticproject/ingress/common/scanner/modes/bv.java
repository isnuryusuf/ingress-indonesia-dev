package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.gameentity.a;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.gameentity.components.PlayerActionRange;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ae;

final class bv extends n
{
  bv(bu parambu, ej paramej)
  {
  }

  public final String a()
  {
    return "ResourceZoomMode:playerListener";
  }

  public final void a(ad paramad)
  {
    PlayerActionRange localPlayerActionRange;
    if ((this.b.a) && (bu.a(this.b) != null))
    {
      localPlayerActionRange = (PlayerActionRange)this.a.e().getComponent(PlayerActionRange.class);
      if ((!p.a().G()) && (paramad.c() > 1000.0F))
        bw.a(bu.a(this.b)).b().a("Inaccurate Location");
    }
    else
    {
      return;
    }
    if (a.a(bu.b(this.b)))
    {
      bw.a(bu.a(this.b)).b().a(com.nianticproject.ingress.common.ui.c.a().a(ae.x));
      return;
    }
    if ((localPlayerActionRange == null) || (localPlayerActionRange.inRange(paramad.a())))
    {
      bw.a(bu.a(this.b)).b(true);
      return;
    }
    bw.a(bu.a(this.b)).b().a(com.nianticproject.ingress.common.ui.c.a().a(ae.d));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bv
 * JD-Core Version:    0.6.2
 */