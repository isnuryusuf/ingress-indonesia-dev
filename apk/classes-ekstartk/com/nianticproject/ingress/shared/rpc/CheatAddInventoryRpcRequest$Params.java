package com.nianticproject.ingress.shared.rpc;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.af;
import java.util.Map;
import org.codehaus.jackson.annotate.JsonProperty;

public class CheatAddInventoryRpcRequest$Params
{

  @JsonProperty
  private final Map<af, Integer> itemsToAdd;

  @JsonProperty
  private final int level;

  private CheatAddInventoryRpcRequest$Params()
  {
    this.level = 1;
    this.itemsToAdd = null;
  }

  public CheatAddInventoryRpcRequest$Params(Map<af, Integer> paramMap, int paramInt)
  {
    this.itemsToAdd = ((Map)an.a(paramMap));
    this.level = Math.min(Math.max(paramInt, 1), 8);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.CheatAddInventoryRpcRequest.Params
 * JD-Core Version:    0.6.2
 */