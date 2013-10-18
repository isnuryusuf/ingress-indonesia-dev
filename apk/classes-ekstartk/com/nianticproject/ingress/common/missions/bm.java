package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.gameentity.components.Portal;
import java.util.Set;
import java.util.concurrent.TimeUnit;

final class bm
  implements eg
{
  bm(bd parambd)
  {
  }

  public final Set<String> a(Portal paramPortal1, Portal paramPortal2, String paramString)
  {
    bd.y();
    new Object[] { paramPortal1, paramPortal2, paramString };
    a.a(this.a, "MadeFirstLink");
    this.a.a(this.a.D, 10, TimeUnit.SECONDS);
    return du.g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bm
 * JD-Core Version:    0.6.2
 */