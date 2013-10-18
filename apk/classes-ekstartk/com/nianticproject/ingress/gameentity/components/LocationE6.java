package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.DynamicComponent;

public abstract interface LocationE6 extends DynamicComponent, CachingPointIndex
{
  public abstract int getLatE6();

  public abstract u getLatLng();

  public abstract int getLngE6();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.LocationE6
 * JD-Core Version:    0.6.2
 */