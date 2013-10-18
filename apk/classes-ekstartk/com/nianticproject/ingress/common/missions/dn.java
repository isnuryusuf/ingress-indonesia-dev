package com.nianticproject.ingress.common.missions;

import com.google.a.c.jc;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

final class dn
  implements eg
{
  dn(dl paramdl)
  {
  }

  public final Set<String> a(Portal paramPortal1, Portal paramPortal2, String paramString)
  {
    HashSet localHashSet = jc.a();
    dl.b(this.a).add(paramPortal2);
    dl.b(this.a).add(paramPortal1);
    dl.c(this.a);
    if ((dl.b(this.a).size() == 3) && (dl.j(this.a) == 3))
    {
      localHashSet.add(this.a.j.a(this.a.k.h(), dl.b(this.a), 500L).getGuid());
      a.a(this.a, "FormedRegion");
    }
    if ((this.a.c != null) && (paramPortal2.getEntityGuid().equals(this.a.c.getGuid())))
      a.a(this.a, "MadeFirstLink");
    while (true)
    {
      this.a.a(this.a.D, 6, TimeUnit.SECONDS);
      return localHashSet;
      if ((this.a.O != null) && (paramPortal2.getEntityGuid().equals(this.a.O.getGuid())))
        a.a(this.a, "MadeSecondLink");
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.dn
 * JD-Core Version:    0.6.2
 */