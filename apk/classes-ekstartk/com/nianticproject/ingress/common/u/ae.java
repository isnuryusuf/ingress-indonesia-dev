package com.nianticproject.ingress.common.u;

import com.nianticproject.ingress.shared.AddModParams;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.p;

public final class ae
{
  public static t<Void, p> a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    try
    {
      aj.a("ModRpcRequests.addMod");
      AddModParams localAddModParams = new AddModParams(paramString2, paramString1, paramInt1);
      t localt = new t(aa.a(Void.class, p.class), "gameplay", "addMod", localAddModParams, paramInt2);
      return localt;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.ae
 * JD-Core Version:    0.6.2
 */