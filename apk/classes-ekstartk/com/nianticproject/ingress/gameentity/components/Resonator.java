package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.i;

public abstract interface Resonator extends a, d, i
{
  public static final String DISPLAY_NAME = "Resonator";

  public abstract int getEnergyCapacity();

  public abstract String getLinkedPortalGuid();

  public abstract String getOwnerId();

  public abstract boolean hasLinkedPortal();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Resonator
 * JD-Core Version:    0.6.2
 */