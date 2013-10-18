package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.DynamicComponent;

public abstract interface Captured extends DynamicComponent
{
  public abstract long getCapturedTime();

  public abstract String getCapturingPlayerId();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Captured
 * JD-Core Version:    0.6.2
 */