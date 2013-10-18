package com.nianticproject.ingress.common.scanner.modes;

import com.google.a.c.du;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.ui.e.d;
import java.util.Set;

public final class k extends a
{
  private boolean f = true;

  public k(com.nianticproject.ingress.common.scanner.k paramk, l paraml, com.nianticproject.ingress.common.j.h paramh, com.nianticproject.ingress.common.model.k paramk1, ed paramed, g paramg)
  {
    super(paramk, paraml, paramh, paramk1, paramed, paramg);
  }

  public final d a()
  {
    return new d();
  }

  public final void a(as paramas)
  {
    if (this.f)
    {
      this.f = false;
      a(paramas, 3.0F);
      return;
    }
    super.a(paramas);
  }

  protected final Set<h> c()
  {
    return du.a(h.values());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.k
 * JD-Core Version:    0.6.2
 */