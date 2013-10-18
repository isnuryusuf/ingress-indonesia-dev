package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.server.flip.FlipParams;
import com.nianticproject.ingress.server.flip.a;
import com.nianticproject.ingress.shared.aj;

public final class d
{
  public static t<Void, a> a(Portal paramPortal, String paramString)
  {
    try
    {
      aj.a("CardRpcRequests.flipPortal");
      String str = paramPortal.getEntityGuid();
      int i = paramPortal.getLevel();
      int j = q.h().g(i);
      FlipParams localFlipParams = new FlipParams(str, paramString);
      t localt = new t(aa.a(Void.class, a.class), "gameplay", "flipPortal", localFlipParams, j);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.d
 * JD-Core Version:    0.6.2
 */