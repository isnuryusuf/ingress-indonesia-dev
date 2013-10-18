package com.nianticproject.ingress.gameentity.components;

import org.codehaus.jackson.annotate.JsonProperty;

public final class AccessLevel$RestrictedUsageResult
{

  @JsonProperty
  private final boolean isAllowed;

  @JsonProperty
  private final int requiredLevel;

  private AccessLevel$RestrictedUsageResult()
  {
    this.isAllowed = false;
    this.requiredLevel = 0;
  }

  public AccessLevel$RestrictedUsageResult(boolean paramBoolean, int paramInt)
  {
    this.isAllowed = paramBoolean;
    this.requiredLevel = paramInt;
  }

  public final boolean a()
  {
    return this.isAllowed;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(this.isAllowed);
    arrayOfObject[1] = Integer.valueOf(this.requiredLevel);
    return String.format("isAllowed: %s, requiredLevel: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.AccessLevel.RestrictedUsageResult
 * JD-Core Version:    0.6.2
 */