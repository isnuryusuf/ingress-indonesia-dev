package com.nianticproject.ingress.common.missions;

import com.google.a.c.jc;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.g.ad;
import com.nianticproject.ingress.gameentity.f;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class bh extends ab
{
  bh(bd parambd, String paramString)
  {
    super(parambd, paramString, 2);
  }

  public final void a()
  {
    super.a();
    this.a.n.a(bs.Y);
    HashSet localHashSet = jc.a();
    Iterator localIterator = this.a.L.values().iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      if (localf != this.a.O)
        localHashSet.add(localf.getGuid());
    }
    this.a.j.c(localHashSet);
    this.a.a(this.a.O, this.a.N, "second_hacked_key_guid");
  }

  public final void u_()
  {
    super.u_();
    this.a.P.add(this.a.O);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bh
 * JD-Core Version:    0.6.2
 */