package com.nianticproject.ingress.common.itemupgrade;

import com.google.a.a.an;
import com.nianticproject.ingress.common.scanner.modes.bf;
import com.nianticproject.ingress.common.ui.widget.at;
import com.nianticproject.ingress.shared.r;

final class f
  implements at
{
  f(c paramc)
  {
  }

  public final void a(r paramr, com.nianticproject.ingress.gameentity.f paramf)
  {
    boolean bool1 = true;
    boolean bool2;
    if ((paramf == null) || (paramr != null))
    {
      bool2 = bool1;
      an.a(bool2);
      c.a(this.a, paramf);
      c.a(this.a, paramr);
      c.b(this.a);
      this.a.b();
      c.e(this.a);
      if (paramr != null)
        break label94;
    }
    while (true)
    {
      c.a(this.a, c.f(this.a), bool1);
      this.a.d.a(paramf);
      return;
      bool2 = false;
      break;
      label94: bool1 = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.f
 * JD-Core Version:    0.6.2
 */