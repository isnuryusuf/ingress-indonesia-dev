package com.nianticproject.ingress.gameentity.components;

import java.util.Map;

public abstract interface ModResource extends Resource
{
  public abstract ModResource copy();

  public abstract String getDisplayName();

  public abstract Map<m, Long> getStatModifiers();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ModResource
 * JD-Core Version:    0.6.2
 */