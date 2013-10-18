package com.nianticproject.ingress.shared.rpc;

import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class CollectItemsFromPortalResult
{

  @JsonProperty
  public final Set<String> addedGuids;

  private CollectItemsFromPortalResult()
  {
    this.addedGuids = null;
  }

  public CollectItemsFromPortalResult(Set<String> paramSet)
  {
    this.addedGuids = paramSet;
  }

  public String toString()
  {
    if (this.addedGuids == null)
      return "null";
    return this.addedGuids.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult
 * JD-Core Version:    0.6.2
 */