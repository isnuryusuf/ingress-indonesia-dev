package com.nianticproject.ingress.common.u;

import com.google.a.c.dc;
import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.CheatAddInventoryResult;
import com.nianticproject.ingress.shared.rpc.CheatAddInventoryRpcRequest;
import com.nianticproject.ingress.shared.rpc.ab;
import java.util.Map;

public final class e
{
  public static ab<Void, Void> a()
  {
    try
    {
      aj.a("CheatRpcRequests.cheatFillEnergy");
      be localbe = new be("devCheat", "cheatFillEnergy", dc.d());
      return localbe;
    }
    finally
    {
      aj.b();
    }
  }

  public static ab<Void, Void> a(int paramInt)
  {
    try
    {
      aj.a("CheatRpcRequests.cheatSetPlayerLevel");
      be localbe = new be("devCheat", "cheatSetPlayerLevel", dc.a(Integer.valueOf(paramInt)));
      return localbe;
    }
    finally
    {
      aj.b();
    }
  }

  public static ab<CheatAddInventoryResult, ae> a(Map<af, Integer> paramMap, int paramInt)
  {
    try
    {
      aj.a("CheatRpcRequests.cheatAddInventory");
      CheatAddInventoryRpcRequest localCheatAddInventoryRpcRequest = new CheatAddInventoryRpcRequest(paramMap, paramInt, aa.a(CheatAddInventoryResult.class, ae.class));
      return localCheatAddInventoryRpcRequest;
    }
    finally
    {
      aj.b();
    }
  }

  public static ab<Void, Void> b()
  {
    try
    {
      aj.a("CheatRpcRequests.cheatEmptyEnergy");
      be localbe = new be("devCheat", "cheatEmptyEnergy", dc.d());
      return localbe;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.e
 * JD-Core Version:    0.6.2
 */