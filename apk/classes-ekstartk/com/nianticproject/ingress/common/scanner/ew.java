package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.ui.e.a;
import com.nianticproject.ingress.common.ui.e.b;
import com.nianticproject.ingress.common.ui.e.d;
import com.nianticproject.ingress.common.ui.f;
import com.nianticproject.ingress.common.ui.m;
import com.nianticproject.ingress.common.ui.n;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.x;

public class ew extends f
  implements m
{
  private final String a;
  protected final k b;
  protected t c;
  private a d;
  private a e;

  public ew(k paramk, String paramString)
  {
    this.b = paramk;
    this.a = paramString;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.b.a(paramInt1, paramInt2);
  }

  public void a(Skin paramSkin, x paramx, int paramInt1, int paramInt2)
  {
    an.a(this.d);
    this.b.B().b();
    ex localex = new ex(this.d, this.c);
    this.e = this.b.B().c(localex);
    a(this.b);
  }

  public final void a(GameState paramGameState)
  {
    this.b.a(paramGameState);
  }

  public final void a(a parama)
  {
    this.d = parama;
  }

  public final void a(t paramt)
  {
    this.c = paramt;
  }

  public final void a_(float paramFloat)
  {
    this.b.a_(paramFloat);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    this.b.b(paramInt1, paramInt2);
  }

  public final void b(Skin paramSkin)
  {
  }

  public final String g_()
  {
    return this.a;
  }

  public void h_()
  {
    this.b.h_();
  }

  public void i_()
  {
    this.b.i_();
  }

  public final void j_()
  {
    this.b.j_();
  }

  public final n k_()
  {
    return this.b.k_();
  }

  public final boolean l_()
  {
    return this.b.l_();
  }

  public final boolean m_()
  {
    return this.d.a().b;
  }

  public void p_()
  {
    this.b.B().b();
    this.b.B().c(this.e);
  }

  public final void q_()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ew
 * JD-Core Version:    0.6.2
 */