package com.nianticproject.ingress.server;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public final class EmpDamageSpec
{

  @JsonProperty
  private final float criticalHitChance;

  @JsonProperty
  private final int damageSpread;

  @JsonProperty
  private final int minDamage;

  public EmpDamageSpec()
  {
    this.minDamage = 0;
    this.damageSpread = 0;
    this.criticalHitChance = 0.0F;
  }

  public EmpDamageSpec(int paramInt1, int paramInt2, float paramFloat)
  {
    boolean bool2;
    boolean bool3;
    if (paramInt2 > paramInt1)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramFloat < 0.0F)
        break label71;
      bool3 = bool1;
      label31: an.a(bool3);
      if (paramFloat >= 1.0F)
        break label77;
    }
    while (true)
    {
      an.a(bool1);
      this.minDamage = paramInt1;
      this.damageSpread = (paramInt2 - paramInt1);
      this.criticalHitChance = paramFloat;
      return;
      bool2 = false;
      break;
      label71: bool3 = false;
      break label31;
      label77: bool1 = false;
    }
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.minDamage);
    arrayOfObject[1] = Integer.valueOf(this.damageSpread);
    arrayOfObject[2] = Float.valueOf(this.criticalHitChance);
    return String.format("minDamage: %s, damageSpread: %s, criticalHitChance: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.server.EmpDamageSpec
 * JD-Core Version:    0.6.2
 */