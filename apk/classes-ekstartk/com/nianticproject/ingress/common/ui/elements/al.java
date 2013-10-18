package com.nianticproject.ingress.common.ui.elements;

import com.google.a.c.jc;
import com.nianticproject.ingress.common.model.ab;
import com.nianticproject.ingress.common.ui.widget.z;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.f;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class al
  implements z
{
  al(PortalInfoDialog paramPortalInfoDialog)
  {
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    if (PortalInfoDialog.l(this.a) != ab.a)
    {
      HashSet localHashSet = jc.a();
      Iterator localIterator = PortalInfoDialog.m(this.a).values().iterator();
      while (localIterator.hasNext())
      {
        Resonator localResonator = (Resonator)((f)localIterator.next()).getComponent(Resonator.class);
        if (localResonator != null)
          localHashSet.add(localResonator);
      }
      PortalInfoDialog.f(this.a).a(PortalInfoDialog.j(this.a), PortalInfoDialog.e(this.a), PortalInfoDialog.l(this.a), localHashSet, PortalInfoDialog.n(this.a));
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.al
 * JD-Core Version:    0.6.2
 */