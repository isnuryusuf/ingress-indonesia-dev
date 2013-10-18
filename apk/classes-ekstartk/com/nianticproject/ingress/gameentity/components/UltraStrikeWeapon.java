package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.an;
import com.nianticproject.ingress.knobs.ClientWeaponKnobBundle;
import com.nianticproject.ingress.server.EmpDamageSpec;
import com.nianticproject.ingress.server.EmpWeaponDamageKnobBundle;
import org.codehaus.jackson.annotate.JsonProperty;

public class UltraStrikeWeapon
  implements EmpWeapon
{

  @JsonProperty
  private int ammo;

  @JsonProperty
  private final int level;

  private UltraStrikeWeapon()
  {
    this.level = 0;
  }

  public UltraStrikeWeapon(int paramInt)
  {
    an.a(a.a(paramInt));
    this.level = paramInt;
    this.ammo = 1;
  }

  public boolean canBeFired()
  {
    return this.ammo > 0;
  }

  public Float getAverageRange(ClientWeaponKnobBundle paramClientWeaponKnobBundle)
  {
    return Float.valueOf(paramClientWeaponKnobBundle.a());
  }

  public int getCurrentAmmo()
  {
    return this.ammo;
  }

  public EmpDamageSpec getDamageSpec(EmpWeaponDamageKnobBundle paramEmpWeaponDamageKnobBundle)
  {
    return paramEmpWeaponDamageKnobBundle.a(this);
  }

  public int getLevel()
  {
    return this.level;
  }

  public Integer getMaxRange(ClientWeaponKnobBundle paramClientWeaponKnobBundle)
  {
    return paramClientWeaponKnobBundle.a(this);
  }

  public void spendAmmo()
  {
    this.ammo = (-1 + this.ammo);
  }

  public boolean toBeDestroyed()
  {
    return this.ammo <= 0;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.level);
    arrayOfObject[1] = Integer.valueOf(this.ammo);
    return String.format("level: %s, ammo: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.UltraStrikeWeapon
 * JD-Core Version:    0.6.2
 */