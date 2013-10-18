package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.w;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.shared.RegionPoint;

public abstract interface CapturedRegion extends a, RegionIndex
{
  public abstract double computeActualAreaOfRegion();

  public abstract double computeMapAreaBoundM2();

  public abstract w getIndexRegion();

  public abstract RegionPoint getVertexA();

  public abstract RegionPoint getVertexB();

  public abstract RegionPoint getVertexC();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.CapturedRegion
 * JD-Core Version:    0.6.2
 */