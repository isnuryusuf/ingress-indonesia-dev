package com.nianticproject.ingress.common.missions.tutorial;

import com.nianticproject.ingress.gameentity.DynamicComponent;

public abstract interface TutorialConstraints extends DynamicComponent
{
  public abstract boolean permits(t paramt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.TutorialConstraints
 * JD-Core Version:    0.6.2
 */