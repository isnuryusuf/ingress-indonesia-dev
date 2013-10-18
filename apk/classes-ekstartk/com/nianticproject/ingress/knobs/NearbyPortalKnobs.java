package com.nianticproject.ingress.knobs;

import org.codehaus.jackson.annotate.JsonProperty;

public class NearbyPortalKnobs
  implements g
{

  @JsonProperty
  private final float repopulateDistanceMeters = 500.0F;

  @JsonProperty
  private final long repopulateTimeMilliseconds = 30000L;

  public final float a()
  {
    return this.repopulateDistanceMeters;
  }

  public final long b()
  {
    return this.repopulateTimeMilliseconds;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.NearbyPortalKnobs
 * JD-Core Version:    0.6.2
 */