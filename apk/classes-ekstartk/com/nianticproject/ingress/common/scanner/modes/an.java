package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.d.u;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.f;

final class an
{
  public final double a;
  public final q b;

  public an(ah paramah, u paramu, q paramq)
  {
    this.b = paramq;
    this.a = paramu.a(((PortalCoupler)paramq.h().getComponent(PortalCoupler.class)).getPortalLocation());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.an
 * JD-Core Version:    0.6.2
 */