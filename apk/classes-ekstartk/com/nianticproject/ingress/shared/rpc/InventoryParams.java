package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public class InventoryParams
{

  @JsonProperty
  private final Long lastQueryTimestamp;

  private InventoryParams()
  {
    this.lastQueryTimestamp = null;
  }

  public InventoryParams(Long paramLong)
  {
    this.lastQueryTimestamp = paramLong;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.InventoryParams
 * JD-Core Version:    0.6.2
 */