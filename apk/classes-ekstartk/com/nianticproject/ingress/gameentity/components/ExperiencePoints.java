package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;

public abstract interface ExperiencePoints extends a
{
  public abstract int getTotal();

  public abstract void incrementBy(int paramInt);

  public abstract void setTotal(int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.ExperiencePoints
 * JD-Core Version:    0.6.2
 */