package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.DynamicComponent;

public abstract interface PortalCoupler extends DynamicComponent
{
  public abstract String getPortalAddress();

  public abstract String getPortalGuid();

  public abstract u getPortalLocation();

  public abstract String getPortalTitle();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.PortalCoupler
 * JD-Core Version:    0.6.2
 */