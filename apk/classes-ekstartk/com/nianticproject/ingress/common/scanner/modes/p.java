package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.ui.e.d;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.gameentity.components.FlipCard;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;
import java.util.Set;

public final class p extends a
  implements com.nianticproject.ingress.common.ui.e.a
{
  private final y f;
  private final f g;
  private af h;
  private com.nianticproject.ingress.common.ui.elements.a i;

  public p(com.nianticproject.ingress.common.scanner.k paramk, l paraml, com.nianticproject.ingress.common.j.h paramh, com.nianticproject.ingress.common.model.k paramk1, ed paramed, y paramy, f paramf)
  {
    super(paramk, paraml, paramh, paramk1, paramed, paramy);
    this.f = paramy;
    this.g = paramf;
  }

  private void a(String paramString)
  {
    o.a().a(bs.aN);
    this.h.a(paramString);
    i.a().a(new q(this), 3000L);
  }

  public final d a()
  {
    return new d(false, false);
  }

  public final void a(as paramas)
  {
    super.a(paramas);
    this.h = new af(paramas);
    this.a.a(this.h);
    this.h.a("Choose Target Portal");
    this.i = new r(this);
    this.a.a(this.i);
  }

  public final boolean a(ej paramej)
  {
    if (paramej == null)
      return false;
    f localf = paramej.e();
    if (localf == null)
      return false;
    if ((Portal)localf.getComponent(Portal.class) == null)
      return false;
    ai localai = b.a(localf);
    FlipCard localFlipCard = (FlipCard)this.g.getComponent(FlipCard.class);
    switch (t.a[localFlipCard.getFlipCardType().ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (this.b.g().a(paramej.c()) > 40.0D)
    {
      a("Out of Range");
      return false;
      if (localai != ai.b)
      {
        a("Choose Enlightened Portal");
        return false;
        if (localai != ai.a)
        {
          a("Choose Resistance Portal");
          return false;
        }
      }
    }
    o.a().a(bs.aO);
    this.f.a(this.g, paramej);
    return true;
  }

  public final boolean a(bt parambt)
  {
    return false;
  }

  public final void b()
  {
    this.a.b(this.h);
    this.h = null;
    this.a.b(this.i);
    this.i = null;
    super.b();
  }

  protected final Set<h> c()
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.p
 * JD-Core Version:    0.6.2
 */