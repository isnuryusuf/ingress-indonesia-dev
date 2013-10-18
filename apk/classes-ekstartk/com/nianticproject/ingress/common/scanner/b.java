package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.scanner.modes.p;
import com.nianticproject.ingress.common.ui.e.a;
import com.nianticproject.ingress.common.ui.m;
import com.nianticproject.ingress.common.ui.n;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.x;

public final class b extends com.nianticproject.ingress.common.ui.f
  implements m
{
  private final k a;
  private final r b;
  private final com.nianticproject.ingress.common.model.k c;
  private final com.nianticproject.ingress.gameentity.f d;
  private final l e;
  private t f;
  private a g;

  public b(k paramk, r paramr, l paraml, com.nianticproject.ingress.common.model.k paramk1, com.nianticproject.ingress.gameentity.f paramf)
  {
    this.a = paramk;
    this.b = paramr;
    this.e = paraml;
    this.c = paramk1;
    this.d = ((com.nianticproject.ingress.gameentity.f)an.a(paramf));
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2);
  }

  public final void a(Skin paramSkin, x paramx, int paramInt1, int paramInt2)
  {
    this.a.B().b();
    com.nianticproject.ingress.common.ui.e.b localb = this.a.B();
    k localk = this.a;
    l locall = this.e;
    h localh = this.a.a;
    com.nianticproject.ingress.common.model.k localk1 = this.c;
    ed localed = this.a.c;
    ey localey = this.a.b;
    this.g = localb.c(new p(localk, locall, localh, localk1, localed, localey, this.d));
    a(this.a);
  }

  public final void a(GameState paramGameState)
  {
    this.a.a(paramGameState);
  }

  public final void a(t paramt)
  {
    this.f = paramt;
  }

  public final void a_(float paramFloat)
  {
    this.a.a_(paramFloat);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    this.a.b(paramInt1, paramInt2);
  }

  public final void b(Skin paramSkin)
  {
  }

  public final String g_()
  {
    return "FlipChoosePortal";
  }

  public final void h_()
  {
    this.a.h_();
  }

  public final void i_()
  {
    this.a.i_();
  }

  public final void j_()
  {
    this.a.j_();
  }

  public final n k_()
  {
    return n.a;
  }

  public final boolean l_()
  {
    return this.a.l_();
  }

  public final boolean m_()
  {
    return false;
  }

  public final void p_()
  {
    this.a.B().b();
    this.a.B().c(this.g);
  }

  public final void q_()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.b
 * JD-Core Version:    0.6.2
 */