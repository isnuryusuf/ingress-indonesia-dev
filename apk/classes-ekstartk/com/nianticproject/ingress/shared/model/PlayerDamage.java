package com.nianticproject.ingress.shared.model;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.nianticproject.ingress.gameentity.JsonConstants.SerializationTag;
import com.nianticproject.ingress.gameentity.components.Weapon;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PlayerDamage
{

  @JsonProperty
  private final String attackerGuid;

  @JsonProperty
  private final long damageAmount;

  @JsonProperty
  private final JsonConstants.SerializationTag weaponSerializationTag;

  private PlayerDamage()
  {
    this.damageAmount = 0L;
    this.attackerGuid = null;
    this.weaponSerializationTag = null;
  }

  public PlayerDamage(long paramLong, String paramString, JsonConstants.SerializationTag paramSerializationTag)
  {
    if (paramLong >= 0L);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Damage amount can not be negative.");
      an.a(paramString, "Attacker guid can not be null.");
      an.a(paramSerializationTag, "Type of attack must be specified.");
      an.a(Weapon.class.isAssignableFrom(paramSerializationTag.getComponentClass()), "Serialization tag must be for Component that extends from Weapons component.");
      this.damageAmount = paramLong;
      this.attackerGuid = paramString;
      this.weaponSerializationTag = paramSerializationTag;
      return;
    }
  }

  public final long a()
  {
    return this.damageAmount;
  }

  public final String b()
  {
    return this.attackerGuid;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PlayerDamage localPlayerDamage;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (!(paramObject instanceof PlayerDamage))
        return false;
      localPlayerDamage = (PlayerDamage)paramObject;
    }
    while ((this.damageAmount == localPlayerDamage.damageAmount) && (ag.a(this.attackerGuid, localPlayerDamage.attackerGuid)) && (ag.a(this.weaponSerializationTag, localPlayerDamage.weaponSerializationTag)));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Long.valueOf(this.damageAmount);
    arrayOfObject[1] = this.attackerGuid;
    arrayOfObject[2] = this.weaponSerializationTag;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Long.valueOf(this.damageAmount);
    arrayOfObject[1] = this.attackerGuid;
    arrayOfObject[2] = this.weaponSerializationTag;
    return String.format("damageAmount: %d, attackerGuid: %s, weaponSerializationTag: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.model.PlayerDamage
 * JD-Core Version:    0.6.2
 */