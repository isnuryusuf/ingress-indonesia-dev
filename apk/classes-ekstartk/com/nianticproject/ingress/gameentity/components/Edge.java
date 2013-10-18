package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.gameentity.i;

public abstract interface Edge extends a, RegionIndex, i
{
  public abstract double computeMapAreaBoundM2();

  public abstract String getDestinationPortalGuid();

  public abstract LocationE6 getDestinationPortalLocation();

  public abstract String getOriginPortalGuid();

  public abstract LocationE6 getOriginPortalLocation();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Edge
 * JD-Core Version:    0.6.2
 */