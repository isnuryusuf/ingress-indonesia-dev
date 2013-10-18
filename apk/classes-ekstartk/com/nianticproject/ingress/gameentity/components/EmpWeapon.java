package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.knobs.ClientWeaponKnobBundle;
import com.nianticproject.ingress.server.EmpDamageSpec;
import com.nianticproject.ingress.server.EmpWeaponDamageKnobBundle;

public abstract interface EmpWeapon extends Weapon
{
  public abstract Float getAverageRange(ClientWeaponKnobBundle paramClientWeaponKnobBundle);

  public abstract EmpDamageSpec getDamageSpec(EmpWeaponDamageKnobBundle paramEmpWeaponDamageKnobBundle);

  public abstract int getLevel();

  public abstract Integer getMaxRange(ClientWeaponKnobBundle paramClientWeaponKnobBundle);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.EmpWeapon
 * JD-Core Version:    0.6.2
 */