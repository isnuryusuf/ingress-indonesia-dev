package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.shared.ai;

public abstract interface ControllingTeam extends DynamicComponent
{
  public abstract ai getTeam();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ControllingTeam
 * JD-Core Version:    0.6.2
 */