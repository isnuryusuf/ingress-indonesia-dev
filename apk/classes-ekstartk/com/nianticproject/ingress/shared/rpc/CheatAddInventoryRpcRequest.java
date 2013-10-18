package com.nianticproject.ingress.shared.rpc;

import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.af;
import java.util.Map;

public final class CheatAddInventoryRpcRequest extends ac<Object, CheatAddInventoryResult, ae>
{
  public CheatAddInventoryRpcRequest(Map<af, Integer> paramMap, int paramInt, ah<RpcResult<CheatAddInventoryResult, ae>> paramah)
  {
    super(paramah, "devCheat", "cheatAddInventory", new CheatAddInventoryRpcRequest.Params(paramMap, paramInt));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.CheatAddInventoryRpcRequest
 * JD-Core Version:    0.6.2
 */