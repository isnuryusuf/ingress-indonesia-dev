package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.c.eq;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.ui.g.g;
import com.nianticproject.ingress.common.ui.g.s;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

final class aj
  implements g
{
  aj(ah paramah)
  {
  }

  public final Collection<q> a()
  {
    ArrayList localArrayList = eq.b(32);
    for (int i = 0; i < 32; i++)
    {
      q localq = ah.m(this.a).a();
      if (localq == null)
        break;
      localArrayList.add(localq);
    }
    return localArrayList;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.aj
 * JD-Core Version:    0.6.2
 */