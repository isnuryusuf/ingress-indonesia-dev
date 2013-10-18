package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.ui.g.f;
import com.nianticproject.ingress.common.ui.g.s;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.n;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ak
  implements f
{
  ak(ah paramah)
  {
  }

  public final void a(Collection<q> paramCollection, Map<q, n> paramMap)
  {
    if ((paramCollection == null) || (paramMap == null))
    {
      ah.c().b("onPageComplete: ERROR usableKeys=%s failedKeysMap=%s", new Object[] { paramCollection, paramMap });
      return;
    }
    try
    {
      Iterator localIterator1 = paramCollection.iterator();
      while (localIterator1.hasNext())
      {
        q localq = (q)localIterator1.next();
        ah.m(this.a).a(localq);
      }
    }
    catch (Throwable localThrowable)
    {
      ah.c().b(localThrowable, "onPageCompleteListener caught unexpected exception");
      throw new IllegalStateException(localThrowable);
    }
    if (paramCollection.size() > 0)
      ah.a(this.a, paramCollection);
    Iterator localIterator2 = paramMap.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      if (((n)localEntry.getValue()).equals(n.B))
        ah.m(this.a).b((q)localEntry.getKey());
      else
        ah.m(this.a).a((q)localEntry.getKey(), (n)localEntry.getValue());
    }
    i.a().a(new al(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.ak
 * JD-Core Version:    0.6.2
 */