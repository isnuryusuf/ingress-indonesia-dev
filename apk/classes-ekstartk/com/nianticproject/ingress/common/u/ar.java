package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.ae;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.model.d;
import com.nianticproject.ingress.shared.rpc.CollectItemsFromPortalResult;
import com.nianticproject.ingress.shared.rpc.DischargePowerCubeResult;
import com.nianticproject.ingress.shared.rpc.SingleItemParams;
import com.nianticproject.ingress.shared.rpc.c;

public final class ar
{
  public static t<Void, ae> a(String paramString)
  {
    try
    {
      aj.a("ResourceRpcRequests.pickUp");
      SingleItemParams localSingleItemParams = new SingleItemParams(paramString);
      t localt = new t(aa.a(Void.class, ae.class), "gameplay", "pickUp", localSingleItemParams, d.a.a());
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<Integer, ae> a(String paramString, long paramLong)
  {
    try
    {
      aj.a("ResourceRpcRequests.recycleItem");
      SingleItemParams localSingleItemParams = new SingleItemParams(paramString);
      t localt = new t(aa.a(Integer.class, ae.class), "gameplay", "recycleItem", localSingleItemParams, -paramLong);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<Void, ae> b(String paramString)
  {
    try
    {
      aj.a("ResourceRpcRequests.dropItem");
      SingleItemParams localSingleItemParams = new SingleItemParams(paramString);
      t localt = new t(aa.a(Void.class, ae.class), "gameplay", "dropItem", localSingleItemParams, d.b.a());
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<CollectItemsFromPortalResult, ae> b(String paramString, long paramLong)
  {
    try
    {
      aj.a("ResourceRpcRequests.collectItemsFromPortal");
      SingleItemParams localSingleItemParams = new SingleItemParams(paramString);
      t localt = new t(aa.a(CollectItemsFromPortalResult.class, ae.class), "gameplay", "collectItemsFromPortal", localSingleItemParams, paramLong);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<DischargePowerCubeResult, c> c(String paramString)
  {
    SingleItemParams localSingleItemParams = new SingleItemParams(paramString);
    return new t(aa.a(DischargePowerCubeResult.class, c.class), "gameplay", "dischargePowerCube", localSingleItemParams, 0L);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ar
 * JD-Core Version:    0.6.2
 */