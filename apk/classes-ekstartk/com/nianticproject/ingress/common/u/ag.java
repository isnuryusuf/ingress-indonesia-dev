package com.nianticproject.ingress.common.u;

import com.google.a.c.dc;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.rpc.InventoryParams;
import com.nianticproject.ingress.shared.rpc.ModifiedGuidsParams;
import com.nianticproject.ingress.shared.rpc.ac;
import com.nianticproject.ingress.shared.rpc.m;
import com.nianticproject.ingress.shared.rpc.n;
import java.util.List;

public final class ag
{
  public static t<Void, m> a(List<String> paramList, List<Long> paramList1)
  {
    try
    {
      aj.a("NemesisRpcRequests.getModifiedEntitiesByGuid");
      ModifiedGuidsParams localModifiedGuidsParams = new ModifiedGuidsParams(paramList, paramList1);
      t localt = new t(aa.a(Void.class, m.class), "gameplay", "getModifiedEntitiesByGuid", localModifiedGuidsParams, 0L);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static ac<InventoryParams, Long, Void> a(long paramLong)
  {
    try
    {
      aj.a("NemesisRpcRequests.getInventory");
      dc.a(Long.valueOf(paramLong));
      ac localac = new ac(aa.a(Long.class, Void.class), "playerUndecorated", "getInventory", new InventoryParams(Long.valueOf(paramLong)));
      return localac;
    }
    finally
    {
      aj.b();
    }
  }

  public static n a(long[] paramArrayOfLong1, long[] paramArrayOfLong2)
  {
    try
    {
      aj.a("NemesisRpcRequests.getObjectsInCells");
      n localn = new n(paramArrayOfLong1, paramArrayOfLong2, aa.a(Long.class, Void.class));
      return localn;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ag
 * JD-Core Version:    0.6.2
 */