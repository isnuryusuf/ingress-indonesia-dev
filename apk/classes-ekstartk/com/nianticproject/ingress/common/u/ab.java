package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.model.d;
import com.nianticproject.ingress.shared.n;
import com.nianticproject.ingress.shared.rpc.LinkPortalsParams;
import com.nianticproject.ingress.shared.rpc.LinkResult;
import com.nianticproject.ingress.shared.rpc.LinkabilityParams;
import com.nianticproject.ingress.shared.w;
import java.util.Map;
import java.util.Set;

public final class ab
{
  public static t<LinkResult, n> a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      aj.a("LinkRpcRequests.createLink");
      t localt = new t(aa.a(LinkResult.class, n.class), "gameplay", "createLink", new LinkPortalsParams(paramString1, paramString2, paramString3), d.h.a());
      return localt;
    }
    finally
    {
      aj.b();
    }
  }

  public static t<Map<String, n>, w> a(String paramString, Set<String> paramSet)
  {
    try
    {
      aj.a("LinkRpcRequests.getLinkabilityImpediment");
      t localt = new t(aa.a(new ac(), w.class), "gameplay", "getLinkabilityImpediment", new LinkabilityParams(paramString, paramSet), 0L);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ab
 * JD-Core Version:    0.6.2
 */