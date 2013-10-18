package com.nianticproject.ingress.knobs;

import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.de;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.nianticproject.ingress.server.FindNearbyPortalsParams;
import com.nianticproject.ingress.server.flip.FlipParams;
import com.nianticproject.ingress.shared.AddModParams;
import com.nianticproject.ingress.shared.rpc.CellParams;
import com.nianticproject.ingress.shared.rpc.DeployResonatorV2Params;
import com.nianticproject.ingress.shared.rpc.GameplayRpcParams;
import com.nianticproject.ingress.shared.rpc.LinkPortalsParams;
import com.nianticproject.ingress.shared.rpc.LinkabilityParams;
import com.nianticproject.ingress.shared.rpc.ModifiedGuidsParams;
import com.nianticproject.ingress.shared.rpc.NotificationSettingsParams;
import com.nianticproject.ingress.shared.rpc.PaginatedCellPlextParams;
import com.nianticproject.ingress.shared.rpc.RechargeResonatorsV2Params;
import com.nianticproject.ingress.shared.rpc.SayParams;
import com.nianticproject.ingress.shared.rpc.SingleItemParams;
import com.nianticproject.ingress.shared.rpc.UpgradeResonatorV2Params;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e
{
  public static final long a = ((Long)localdh.get(AddModParams.class)).longValue() | ((Long)c.get(CellParams.class)).longValue() | ((Long)c.get(DeployResonatorV2Params.class)).longValue() | ((Long)c.get(FlipParams.class)).longValue() | ((Long)c.get(LinkPortalsParams.class)).longValue() | ((Long)c.get(RechargeResonatorsV2Params.class)).longValue() | ((Long)c.get(SingleItemParams.class)).longValue() | ((Long)c.get(UpgradeResonatorV2Params.class)).longValue();
  private static final List<Class<? extends GameplayRpcParams>> b = dc.h().c(AddModParams.class).c(CellParams.class).c(DeployResonatorV2Params.class).c(FindNearbyPortalsParams.class).c(FlipParams.class).c(LinkabilityParams.class).c(LinkPortalsParams.class).c(ModifiedGuidsParams.class).c(NotificationSettingsParams.class).c(PaginatedCellPlextParams.class).c(RechargeResonatorsV2Params.class).c(SayParams.class).c(SingleItemParams.class).c(UpgradeResonatorV2Params.class).a();
  private static final Map<Class<? extends GameplayRpcParams>, Long> c;

  static
  {
    di localdi = dh.j();
    Iterator localIterator = b.iterator();
    for (long l = 1L; localIterator.hasNext(); l <<= 1)
      localdi.a((Class)localIterator.next(), Long.valueOf(l));
    dh localdh = localdi.a();
    c = localdh;
  }

  public static boolean a(Class<? extends GameplayRpcParams> paramClass, long paramLong)
  {
    Long localLong = (Long)c.get(paramClass);
    an.a(localLong);
    return (paramLong & localLong.longValue()) != 0L;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.e
 * JD-Core Version:    0.6.2
 */