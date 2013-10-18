package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public final class PlayerAndBoundsParams
{

  @JsonProperty
  public final int maxLatE6 = 0;

  @JsonProperty
  public final int maxLngE6 = 0;

  @JsonProperty
  public final int minLatE6 = 0;

  @JsonProperty
  public final int minLngE6 = 0;

  @JsonProperty
  public final String playerGuid = null;

  @JsonProperty
  public final long timestampMs = 0L;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.PlayerAndBoundsParams
 * JD-Core Version:    0.6.2
 */