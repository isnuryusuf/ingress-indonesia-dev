package com.nianticproject.ingress.knobs;

import org.codehaus.jackson.annotate.JsonProperty;

public final class ScannerKnobs
  implements g
{
  private static final ScannerKnobs a = new ScannerKnobs();

  @JsonProperty
  private final int rangeM = 300;

  @JsonProperty
  private final int updateDistanceM = 10;

  @JsonProperty
  private final int updateIntervalMs = 30000;

  public final int a()
  {
    return this.updateIntervalMs;
  }

  public final int b()
  {
    return this.updateDistanceM;
  }

  public final int c()
  {
    return this.rangeM;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.ScannerKnobs
 * JD-Core Version:    0.6.2
 */