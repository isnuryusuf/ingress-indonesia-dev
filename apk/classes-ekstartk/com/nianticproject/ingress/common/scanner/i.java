package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.c;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.modes.bj;
import com.nianticproject.ingress.common.u;
import com.nianticproject.ingress.common.ui.x;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.knobs.ScannerKnobs;

public final class i extends ew
  implements c
{
  protected boolean a = false;
  private final r d;
  private final com.nianticproject.ingress.common.model.k e;
  private final f f;
  private final boolean g;
  private final j h;
  private final l i;
  private final com.nianticproject.ingress.common.a j;
  private z k;
  private u l = null;

  public i(k paramk, r paramr, l paraml, com.nianticproject.ingress.common.model.k paramk1, f paramf, j paramj, boolean paramBoolean, com.nianticproject.ingress.common.a parama)
  {
    super(paramk, "PortalKeyScannerActivity");
    this.d = paramr;
    this.i = paraml;
    this.e = paramk1;
    this.f = paramf;
    this.h = ((j)an.a(paramj));
    this.g = paramBoolean;
    this.j = ((com.nianticproject.ingress.common.a)an.a(parama));
  }

  public final void a(Skin paramSkin, x paramx, int paramInt1, int paramInt2)
  {
    k localk = this.b;
    bj localbj = new bj(localk, this.i, this.b.a, this.e, this.b.c, this.f, this.h, this.b.b, this.c, this.g);
    a(localbj);
    localbj.c(0.55F);
    this.k = this.b.C();
    super.a(paramSkin, paramx, paramInt1, paramInt2);
  }

  public final void d()
  {
    this.a = false;
  }

  public final void e()
  {
  }

  public final void h_()
  {
    super.h_();
    if (this.j.e())
    {
      this.a = true;
      this.j.c(false);
    }
    this.j.a(this);
    this.l = this.d.a(q.e().c());
    this.l.a(this.h.b());
    this.d.b();
  }

  public final void i_()
  {
    if (this.l != null)
    {
      this.l.a();
      this.l = null;
    }
    this.j.b(this);
    if (this.a)
    {
      this.j.b(false);
      this.a = false;
    }
    super.i_();
  }

  public final String j()
  {
    return this.h.a();
  }

  public final void p_()
  {
    super.p_();
    this.k.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.i
 * JD-Core Version:    0.6.2
 */