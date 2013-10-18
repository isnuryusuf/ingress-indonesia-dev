package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.DynamicComponent;
import com.nianticproject.ingress.shared.ai;

public abstract interface FactionChoiceHint extends DynamicComponent
{
  public abstract String getInviterGuid();

  public abstract ai getTeamHint();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.FactionChoiceHint
 * JD-Core Version:    0.6.2
 */