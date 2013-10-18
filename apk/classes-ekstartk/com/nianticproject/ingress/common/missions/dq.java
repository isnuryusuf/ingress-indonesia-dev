package com.nianticproject.ingress.common.missions;

import com.google.a.c.jc;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.gameentity.f;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class dq extends ab
{
  dq(dl paramdl, String paramString)
  {
    super(paramdl, paramString, 6);
  }

  public final void a()
  {
    super.a();
    HashSet localHashSet = jc.a();
    Iterator localIterator = this.a.L.values().iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      if (localf != dl.h(this.a))
        localHashSet.add(localf.getGuid());
    }
    this.a.j.c(localHashSet);
    this.a.a(dl.h(this.a), this.a.Q, "third_hacked_key_guid");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.dq
 * JD-Core Version:    0.6.2
 */