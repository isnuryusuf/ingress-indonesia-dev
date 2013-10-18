package com.nianticproject.ingress.common.scanner.modes;

import a;
import com.google.a.a.an;
import com.nianticproject.ingress.common.g.e;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ed;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.ui.elements.PortalInfoDialog;
import com.nianticproject.ingress.shared.aj;

public final class bh extends ag
{
  private final com.nianticproject.ingress.common.j.av g;
  private final e h;
  private final h i;
  private final l j;
  private final com.nianticproject.ingress.common.model.k k;
  private final ed l;
  private final com.nianticproject.ingress.common.ui.elements.av m;
  private PortalInfoDialog n;
  private GameState o;
  private boolean p;

  public bh(com.nianticproject.ingress.common.scanner.k paramk, h paramh, com.nianticproject.ingress.common.j.av paramav, e parame, l paraml, com.nianticproject.ingress.common.model.k paramk1, j paramj, ej paramej, ed paramed, com.nianticproject.ingress.common.ui.elements.av paramav1)
  {
    super(paramk, paramj, paramej);
    this.i = ((h)an.a(paramh));
    this.k = ((com.nianticproject.ingress.common.model.k)an.a(paramk1));
    this.j = ((l)an.a(paraml));
    this.g = ((com.nianticproject.ingress.common.j.av)an.a(paramav));
    this.h = ((e)an.a(parame));
    this.l = ((ed)an.a(paramed));
    this.m = ((com.nianticproject.ingress.common.ui.elements.av)an.a(paramav1));
    this.p = true;
  }

  public final void a(as paramas)
  {
    try
    {
      aj.a("PortalZoomMode.onStart");
      if (this.p);
      for (float f = a.z(0.75F); ; f = 0.0F)
      {
        this.p = false;
        this.n = new PortalInfoDialog(this.c, this.i, this.g, this.h, this.k, this.e, this.o, this.j, this.l, this.m, f);
        this.n.a(new bi(this));
        this.c.a(this.n);
        super.a(paramas);
        return;
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(GameState paramGameState)
  {
    try
    {
      aj.a("PortalZoomMode.setGameState");
      super.a(paramGameState);
      this.o = paramGameState;
      if (this.n != null)
        this.n.a(paramGameState);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void b()
  {
    if (this.n != null)
    {
      this.n.g();
      this.c.b(this.n);
      this.n = null;
    }
    super.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bh
 * JD-Core Version:    0.6.2
 */