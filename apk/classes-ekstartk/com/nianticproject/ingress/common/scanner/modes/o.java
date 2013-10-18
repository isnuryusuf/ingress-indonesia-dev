package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.ui.widget.s;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;

final class o
  implements s
{
  private o(l paraml)
  {
  }

  public final void a()
  {
    f localf = l.f(this.a);
    if (localf != null)
    {
      Resource localResource = (Resource)localf.getComponent(Resource.class);
      if (localResource != null)
      {
        int i = g.b(localf);
        if (i != 0)
        {
          c.c(i);
          c.c(localResource.getResourceType());
        }
      }
    }
  }

  public final void a(f paramf)
  {
    l.b(this.a, paramf);
    l.a(l.d(this.a));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.o
 * JD-Core Version:    0.6.2
 */