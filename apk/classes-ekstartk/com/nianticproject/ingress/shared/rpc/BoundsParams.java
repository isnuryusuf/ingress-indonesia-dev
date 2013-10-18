package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public class BoundsParams
{

  @JsonProperty
  public final String id = null;

  @JsonProperty
  public final int maxLatE6 = 0;

  @JsonProperty
  public final int maxLngE6 = 0;

  @JsonProperty
  public final int minLatE6 = 0;

  @JsonProperty
  public final int minLngE6 = 0;

  @JsonProperty
  public final long timestampMs = 0L;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.BoundsParams
 * JD-Core Version:    0.6.2
 */