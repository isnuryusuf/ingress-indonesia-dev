package com.nianticproject.ingress.shared.rpc;

import com.nianticproject.ingress.shared.af;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public class AddPlayerInventoryParams
{

  @JsonProperty
  private final Map<af, Integer> itemsToAdd = null;

  @JsonProperty
  private final int level = 1;

  @JsonProperty
  private String playerGuid = null;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.AddPlayerInventoryParams
 * JD-Core Version:    0.6.2
 */