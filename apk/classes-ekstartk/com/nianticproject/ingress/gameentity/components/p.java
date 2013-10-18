package com.nianticproject.ingress.gameentity.components;

import com.google.a.c.dh;
import com.google.a.c.du;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.r;
import java.util.ArrayList;
import java.util.Iterator;

public final class p
  implements Iterable<Integer>
{
  private final ArrayList<Integer> a;

  public p(f paramf)
  {
    this(paramf, null, null);
  }

  public p(f paramf, Integer paramInteger, r paramr)
  {
    dh localdh = ((Portal)paramf.getComponent(Portal.class)).getLinkedResonatorLevels();
    this.a = new ArrayList(8);
    if (paramInteger != null)
      this.a.add(paramInteger);
    Iterator localIterator = localdh.g().iterator();
    while (localIterator.hasNext())
    {
      r localr = (r)localIterator.next();
      if (!localr.equals(paramr))
        this.a.add(localdh.get(localr));
    }
  }

  public final Iterator<Integer> iterator()
  {
    return this.a.iterator();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.p
 * JD-Core Version:    0.6.2
 */