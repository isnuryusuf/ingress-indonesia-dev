package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public class PaginatedPlextParams
{

  @JsonProperty
  public final boolean ascendingTimestampOrder = false;

  @JsonProperty
  public final int categories = -1;

  @JsonProperty
  public final int desiredNumItems = -1;

  @JsonProperty
  public final boolean factionOnly = false;

  @JsonProperty
  public final boolean includeRecipientBoundPlexts = true;

  @JsonProperty
  public final int maxLatE6 = 0;

  @JsonProperty
  public final int maxLngE6 = 0;

  @JsonProperty
  public final long maxTimestampMs = -1L;

  @JsonProperty
  public final int minLatE6 = 0;

  @JsonProperty
  public final int minLngE6 = 0;

  @JsonProperty
  public final long minTimestampMs = -1L;

  @JsonProperty
  public final String playerGuid = null;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PaginatedPlextParams
 * JD-Core Version:    0.6.2
 */