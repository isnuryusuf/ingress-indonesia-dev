package com.nianticproject.ingress;

import com.google.a.c.dc;
import com.nianticproject.ingress.b.b;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.u.ah;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.promotioncodes.Reward;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import com.nianticproject.ingress.shared.rpc.ad;
import com.nianticproject.ingress.shared.rpc.y;

final class da extends b<Void, RpcResult<Reward, com.nianticproject.ingress.shared.aa>>
{
  da(PasscodeActivity paramPasscodeActivity, String paramString)
  {
  }

  private RpcResult<Reward, com.nianticproject.ingress.shared.aa> j()
  {
    try
    {
      aj.a("RedeemRewardTask");
      a.a("Passcode", "submit");
      ad localad = new ad(com.nianticproject.ingress.common.u.aa.a(Reward.class, com.nianticproject.ingress.shared.aa.class), "playerUndecorated", "redeemReward", dc.a(this.a));
      try
      {
        RpcResult localRpcResult2 = PasscodeActivity.c(this.b).a(localad);
        return localRpcResult2;
      }
      catch (y localy)
      {
        RpcResult localRpcResult1 = RpcResult.a(com.nianticproject.ingress.shared.aa.f.toString(), null);
        return localRpcResult1;
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.da
 * JD-Core Version:    0.6.2
 */