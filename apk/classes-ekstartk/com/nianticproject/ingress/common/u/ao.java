package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.server.FindNearbyPortalsFail;
import com.nianticproject.ingress.server.FindNearbyPortalsParams;
import java.util.Set;

public final class ao
{
  public static t<Set<f>, FindNearbyPortalsFail> a(String paramString, int paramInt)
  {
    return new t(aa.a(new ap(), FindNearbyPortalsFail.class), "gameplay", "findNearbyPortals", new FindNearbyPortalsParams(paramString, paramInt), 0L);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ao
 * JD-Core Version:    0.6.2
 */