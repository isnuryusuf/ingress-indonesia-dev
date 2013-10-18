package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;

public abstract interface Weapon extends a
{
  public abstract boolean canBeFired();

  public abstract int getCurrentAmmo();

  public abstract void spendAmmo();

  public abstract boolean toBeDestroyed();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.Weapon
 * JD-Core Version:    0.6.2
 */