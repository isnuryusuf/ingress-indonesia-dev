package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public final class GameUpdateParams$GameUpdateResult
{

  @JsonProperty
  private final long cellsTimestamp = -1L;

  @JsonProperty
  private final long inventorySequenceNumber = -1L;

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(this.inventorySequenceNumber);
    arrayOfObject[1] = Long.valueOf(this.cellsTimestamp);
    return String.format("inventorySequenceNumber: %s, cellsTimestamp: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.GameUpdateParams.GameUpdateResult
 * JD-Core Version:    0.6.2
 */