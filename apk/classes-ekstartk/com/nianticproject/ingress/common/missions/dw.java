package com.nianticproject.ingress.common.missions;

import com.google.a.d.u;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.w.b;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class dw
  implements com.nianticproject.ingress.common.scanner.f
{
  dw(dl paramdl)
  {
  }

  public final void a(ej paramej)
  {
    Iterator localIterator = this.a.L.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (localEntry.getValue() == paramej.e())
      {
        this.a.Q = ((u)localEntry.getKey());
        dl.a(this.a, (com.nianticproject.ingress.gameentity.f)localEntry.getValue());
        a.a(this.a, "SelectedThirdPortal");
        this.a.t().a(this.a.z);
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.dw
 * JD-Core Version:    0.6.2
 */