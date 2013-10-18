package com.nianticproject.ingress.shared.rpc;

import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class LinkResult
{

  @JsonProperty
  public final String newLinkGuid;

  @JsonProperty
  public final Set<String> newRegionGuids;

  private LinkResult()
  {
    this.newLinkGuid = null;
    this.newRegionGuids = null;
  }

  public LinkResult(String paramString, Set<String> paramSet)
  {
    this.newLinkGuid = paramString;
    this.newRegionGuids = paramSet;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.LinkResult
 * JD-Core Version:    0.6.2
 */