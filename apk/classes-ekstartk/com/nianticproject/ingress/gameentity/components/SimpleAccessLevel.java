package com.nianticproject.ingress.gameentity.components;

import org.codehaus.jackson.annotate.JsonProperty;

public final class SimpleAccessLevel
  implements AccessLevel
{
  private static final AccessLevel.RestrictedUsageResult SUCCESS = new AccessLevel.RestrictedUsageResult(true, -1);

  @JsonProperty
  private final AccessLevel.RestrictedUsageResult failure;

  @JsonProperty
  private final int requiredLevel;

  private SimpleAccessLevel()
  {
    this.requiredLevel = 0;
    this.failure = null;
  }

  public SimpleAccessLevel(int paramInt)
  {
    this.requiredLevel = paramInt;
    this.failure = new AccessLevel.RestrictedUsageResult(false, paramInt);
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.requiredLevel);
    arrayOfObject[1] = this.failure;
    return String.format("requiredLevel: %s, failure: %s", arrayOfObject);
  }

  public final AccessLevel.RestrictedUsageResult usage(int paramInt)
  {
    if (paramInt < this.requiredLevel)
      return this.failure;
    return SUCCESS;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleAccessLevel
 * JD-Core Version:    0.6.2
 */