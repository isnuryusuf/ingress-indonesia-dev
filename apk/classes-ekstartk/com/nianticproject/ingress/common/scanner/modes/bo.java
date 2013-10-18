package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.c.jc;
import com.nianticproject.ingress.common.ui.widget.z;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.f;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class bo
  implements z
{
  bo(bn parambn)
  {
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    if (bj.a(this.a.a) != null)
    {
      HashSet localHashSet = jc.a();
      Iterator localIterator = bj.b(this.a.a).values().iterator();
      while (localIterator.hasNext())
      {
        Resonator localResonator = (Resonator)((f)localIterator.next()).getComponent(Resonator.class);
        if (localResonator != null)
          localHashSet.add(localResonator);
      }
      bj.f(this.a.a).a(bj.a(this.a.a), (Portal)bj.c(this.a.a).getComponent(Portal.class), bj.d(this.a.a), localHashSet, bj.e(this.a.a));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bo
 * JD-Core Version:    0.6.2
 */