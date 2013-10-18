package com.nianticproject.ingress.common.scanner;

import com.nianticproject.ingress.common.ui.e.b;
import com.nianticproject.ingress.gameentity.f;

final class t
  implements eg
{
  t(k paramk, f paramf)
  {
  }

  public final void a()
  {
    this.b.c.b(this);
    if (this.b.c.a())
    {
      ej localej = this.b.b(this.a.getGuid());
      if (localej != null)
        this.b.B().a(localej);
    }
    else
    {
      return;
    }
    this.b.c.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.t
 * JD-Core Version:    0.6.2
 */