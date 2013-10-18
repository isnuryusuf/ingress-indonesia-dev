package com.nianticproject.ingress.common.inventory.ui;

import com.google.a.a.ao;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class al
{
  private final List<q> a;

  public al(k paramk, Collection<f> paramCollection)
  {
    this.a = q.a(paramk, paramCollection);
  }

  public final List<q> a(ao<af> paramao)
  {
    if (paramao != null)
    {
      ArrayList localArrayList = eq.a(this.a.size());
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        q localq = (q)localIterator.next();
        if (paramao.a(localq.a()))
          localArrayList.add(localq);
      }
      return localArrayList;
    }
    return eq.a(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.al
 * JD-Core Version:    0.6.2
 */