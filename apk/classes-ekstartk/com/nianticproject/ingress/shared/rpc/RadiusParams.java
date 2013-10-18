package com.nianticproject.ingress.shared.rpc;

import org.codehaus.jackson.annotate.JsonProperty;

public final class RadiusParams
{

  @JsonProperty
  public final long dateMs = 0L;

  @JsonProperty
  public final int latE6 = 0;

  @JsonProperty
  public final int lngE6 = 0;

  @JsonProperty
  public final int radius = 0;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.RadiusParams
 * JD-Core Version:    0.6.2
 */