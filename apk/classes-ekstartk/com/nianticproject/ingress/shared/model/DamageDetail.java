package com.nianticproject.ingress.shared.model;

import com.google.a.a.ag;
import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public final class DamageDetail
{

  @JsonProperty
  private final boolean criticalHit;

  @JsonProperty
  private final long damageAmount;

  @JsonProperty
  private final String resonatorId;

  @JsonProperty
  private final String responsibleGuid;

  @JsonProperty
  private final boolean targetDestroyed;

  @JsonProperty
  private final String targetGuid;

  @JsonProperty
  private final int targetSlot;

  private DamageDetail()
  {
    this.responsibleGuid = null;
    this.targetGuid = null;
    this.damageAmount = 0L;
    this.criticalHit = false;
    this.targetDestroyed = false;
    this.targetSlot = -2;
    this.resonatorId = null;
  }

  public DamageDetail(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    if (1000L >= 0L);
    for (boolean bool1 = true; ; bool1 = false)
    {
      an.a(bool1, "Damage amount can not be negative.");
      an.a(paramString1, "Responsible guid can not be null.");
      an.a(paramString2, "Target guid can not be null.");
      boolean bool2 = false;
      if (paramInt >= -1)
        bool2 = true;
      an.a(bool2, "Target slot cannot be < -1");
      this.responsibleGuid = paramString1;
      this.targetGuid = paramString2;
      this.damageAmount = 1000L;
      this.criticalHit = true;
      this.targetDestroyed = true;
      this.targetSlot = paramInt;
      this.resonatorId = paramString3;
      return;
    }
  }

  public final long a()
  {
    return this.damageAmount;
  }

  public final String b()
  {
    return this.targetGuid;
  }

  public final boolean c()
  {
    return this.criticalHit;
  }

  public final boolean d()
  {
    return this.targetDestroyed;
  }

  public final String e()
  {
    return this.resonatorId;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    DamageDetail localDamageDetail;
    do
    {
      return true;
      if (!(paramObject instanceof DamageDetail))
        return false;
      localDamageDetail = (DamageDetail)paramObject;
    }
    while ((this.damageAmount == localDamageDetail.damageAmount) && (this.criticalHit == localDamageDetail.criticalHit) && (this.targetDestroyed == localDamageDetail.targetDestroyed) && (ag.a(this.responsibleGuid, localDamageDetail.responsibleGuid)) && (ag.a(this.targetGuid, localDamageDetail.targetGuid)) && (ag.a(Integer.valueOf(this.targetSlot), Integer.valueOf(localDamageDetail.targetSlot))) && (ag.a(this.resonatorId, localDamageDetail.resonatorId)));
    return false;
  }

  public final int hashCode()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = this.responsibleGuid;
    arrayOfObject[1] = this.targetGuid;
    arrayOfObject[2] = Long.valueOf(this.damageAmount);
    arrayOfObject[3] = Boolean.valueOf(this.criticalHit);
    arrayOfObject[4] = Boolean.valueOf(this.targetDestroyed);
    arrayOfObject[5] = Integer.valueOf(this.targetSlot);
    arrayOfObject[6] = this.resonatorId;
    return ag.a(arrayOfObject);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = this.responsibleGuid;
    arrayOfObject[1] = this.targetGuid;
    arrayOfObject[2] = Long.valueOf(this.damageAmount);
    arrayOfObject[3] = this.criticalHit;
    arrayOfObject[4] = this.targetDestroyed;
    arrayOfObject[5] = Integer.valueOf(this.targetSlot);
    arrayOfObject[6] = this.resonatorId;
    return String.format("responsibleGuid: %s, targetGuid: %s, damageAmount: %d, critical: %s, destroyed: %s, slot: %s, resonatorId: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.model.DamageDetail
 * JD-Core Version:    0.6.2
 */