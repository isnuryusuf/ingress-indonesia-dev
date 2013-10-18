package com.nianticproject.ingress.gameentity.components;

public abstract interface CachingSpatialIndex extends SpatialIndex
{
  public static final int MAX_COVERING_CELL_LEVEL = 18;

  public abstract void computeCovering();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.CachingSpatialIndex
 * JD-Core Version:    0.6.2
 */