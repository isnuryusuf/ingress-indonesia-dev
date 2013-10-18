package com.nianticproject.ingress.gameentity.components;

import com.google.a.d.u;

public abstract interface RifleWeapon extends Weapon
{
  public abstract q calculateDamage(u paramu1, u paramu2);

  public abstract int getTargetingRangeInMeters();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.RifleWeapon
 * JD-Core Version:    0.6.2
 */