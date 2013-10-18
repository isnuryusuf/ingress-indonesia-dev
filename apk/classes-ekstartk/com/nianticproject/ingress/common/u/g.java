package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.FireEmpResult;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.e;
import com.nianticproject.ingress.shared.rpc.SingleItemParams;

public final class g
{
  public static t<FireEmpResult, e> a(String paramString, int paramInt)
  {
    try
    {
      aj.a("CombatRpcRequests.fireUntargetedRadialWeapon");
      SingleItemParams localSingleItemParams = new SingleItemParams(paramString);
      t localt = new t(aa.a(FireEmpResult.class, e.class), "gameplay", "fireUntargetedRadialWeapon", localSingleItemParams, paramInt);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.g
 * JD-Core Version:    0.6.2
 */