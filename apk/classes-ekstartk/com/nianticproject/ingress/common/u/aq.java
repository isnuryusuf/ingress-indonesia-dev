package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.ad;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.model.d;
import com.nianticproject.ingress.shared.rpc.DeployResonatorV2Params;
import com.nianticproject.ingress.shared.rpc.RechargeResonatorsV2Params;
import com.nianticproject.ingress.shared.rpc.UpgradeResonatorV2Params;
import java.util.Set;

public final class aq
{
  public static t<String, ad> a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    try
    {
      aj.a("ResonatorRpcRequests.deployResonatorV2");
      DeployResonatorV2Params localDeployResonatorV2Params = new DeployResonatorV2Params(paramString1, paramString2, paramInt1);
      t localt = new t(aa.a(String.class, ad.class), "gameplay", "deployResonatorV2", localDeployResonatorV2Params, paramInt2);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<Void, ad> a(String paramString, Set<Integer> paramSet)
  {
    try
    {
      aj.a("ResonatorRpcRequests.rechargeResonatorsV2");
      RechargeResonatorsV2Params localRechargeResonatorsV2Params = new RechargeResonatorsV2Params(null, paramString, paramSet);
      int i = d.e.a();
      t localt = new t(aa.a(Void.class, ad.class), "gameplay", "rechargeResonatorsV2", localRechargeResonatorsV2Params, i);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<Void, ad> b(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    try
    {
      aj.a("ResonatorRpcRequests.upgradeResonatorV2");
      UpgradeResonatorV2Params localUpgradeResonatorV2Params = new UpgradeResonatorV2Params(paramString1, paramString2, paramInt1);
      t localt = new t(aa.a(Void.class, ad.class), "gameplay", "upgradeResonatorV2", localUpgradeResonatorV2Params, paramInt2);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<Void, ad> b(String paramString, Set<Integer> paramSet)
  {
    try
    {
      aj.a("ResonatorRpcRequests.remoteRechargeResonatorsV2");
      RechargeResonatorsV2Params localRechargeResonatorsV2Params = new RechargeResonatorsV2Params(paramString, null, paramSet);
      int i = d.f.a();
      t localt = new t(aa.a(Void.class, ad.class), "gameplay", "remoteRechargeResonatorsV2", localRechargeResonatorsV2Params, i);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.aq
 * JD-Core Version:    0.6.2
 */