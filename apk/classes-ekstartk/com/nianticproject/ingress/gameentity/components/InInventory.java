package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;

public abstract interface InInventory extends a
{
  public abstract long getAcquisitionTimestampMs();

  public abstract String getPlayerId();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.InInventory
 * JD-Core Version:    0.6.2
 */