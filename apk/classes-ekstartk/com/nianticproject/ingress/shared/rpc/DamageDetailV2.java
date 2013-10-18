package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.ag;
import org.codehaus.jackson.annotate.JsonProperty;

public final class DamageDetailV2
{

  @JsonProperty
  private final boolean criticalHit = false;

  @JsonProperty
  private final long damageAmount = 0L;

  @JsonProperty
  private final String responsibleGuid = null;

  @JsonProperty
  private final boolean targetDestroyed = false;

  @JsonProperty
  private final String targetGuid = null;

  @JsonProperty
  private int targetSlot = -1;

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    DamageDetailV2 localDamageDetailV2;
    do
    {
      return true;
      if (!(paramObject instanceof DamageDetailV2))
        return false;
      localDamageDetailV2 = (DamageDetailV2)paramObject;
    }
    while ((this.damageAmount == localDamageDetailV2.damageAmount) && (this.criticalHit == localDamageDetailV2.criticalHit) && (this.targetDestroyed == localDamageDetailV2.targetDestroyed) && (this.targetSlot == localDamageDetailV2.targetSlot) && (ag.a(this.responsibleGuid, localDamageDetailV2.responsibleGuid)) && (ag.a(this.targetGuid, localDamageDetailV2.targetGuid)));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = this.responsibleGuid;
    arrayOfObject[1] = this.targetGuid;
    arrayOfObject[2] = Integer.valueOf(this.targetSlot);
    arrayOfObject[3] = Long.valueOf(this.damageAmount);
    arrayOfObject[4] = Boolean.valueOf(this.criticalHit);
    arrayOfObject[5] = Boolean.valueOf(this.targetDestroyed);
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[6];
    arrayOfObject[0] = this.responsibleGuid;
    arrayOfObject[1] = this.targetGuid;
    arrayOfObject[2] = Integer.valueOf(this.targetSlot);
    arrayOfObject[3] = Long.valueOf(this.damageAmount);
    arrayOfObject[4] = this.criticalHit;
    arrayOfObject[5] = this.targetDestroyed;
    return String.format("responsibleGuid: %s, targetGuid: %s, targetSlot: %d, damageAmount: %d, critical: %s, destroyed: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.DamageDetailV2
 * JD-Core Version:    0.6.2
 */