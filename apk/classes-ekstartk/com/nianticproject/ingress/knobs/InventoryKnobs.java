package com.nianticproject.ingress.knobs;

import org.codehaus.jackson.annotate.JsonProperty;

public final class InventoryKnobs
  implements g
{
  public static final InventoryKnobs a = new InventoryKnobs();

  @JsonProperty
  private final int maxInventoryItems = 10000;

  @JsonProperty
  private boolean useLimit = true;

  @JsonProperty
  private boolean useMax = true;

  public final int a()
  {
    return this.maxInventoryItems;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.InventoryKnobs
 * JD-Core Version:    0.6.2
 */