package com.nianticproject.ingress.shared.rpc;

import java.util.Collection;
import org.codehaus.jackson.annotate.JsonProperty;

public class ThinnedEntitiesParams
{

  @JsonProperty
  public final Collection<BoundsParams> boundsParamsList = null;

  @JsonProperty
  public final int minLevelOfDetail = -1;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.ThinnedEntitiesParams
 * JD-Core Version:    0.6.2
 */