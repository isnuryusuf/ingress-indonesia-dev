package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.a.c;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.shared.aj;

public abstract class a extends InputMultiplexer
  implements m
{
  private final String a;
  private final ad b = new ad();
  private t c;
  private boolean d = false;

  public a(String paramString)
  {
    this.a = paramString;
  }

  protected final t J()
  {
    return this.c;
  }

  public final ad K()
  {
    return this.b;
  }

  public final boolean L()
  {
    return this.d;
  }

  protected void a()
  {
  }

  protected void a(float paramFloat)
  {
  }

  public void a(int paramInt1, int paramInt2)
  {
  }

  protected void a(Skin paramSkin)
  {
  }

  public final void a(Skin paramSkin, x paramx, int paramInt1, int paramInt2)
  {
    this.b.a(paramSkin, paramx.a(paramInt1, paramInt2));
    addProcessor(0, this.b.a());
    a(paramSkin);
  }

  public void a(GameState paramGameState)
  {
  }

  public final void a(t paramt)
  {
    this.c = paramt;
  }

  public final void a_(float paramFloat)
  {
    try
    {
      aj.a("AbstractSubActivity.doUpdate");
      a(paramFloat);
      aj.b();
      if (this.d)
        this.b.a(paramFloat);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void b(int paramInt1, int paramInt2)
  {
    this.b.a(paramInt1, paramInt2);
  }

  public void b(Skin paramSkin)
  {
  }

  protected abstract String d();

  protected void e()
  {
  }

  protected boolean f()
  {
    return false;
  }

  protected void g()
  {
  }

  public final String g_()
  {
    return this.a;
  }

  public final void h_()
  {
    if (f())
      com.nianticproject.ingress.common.a.a.a(d());
    this.d = true;
    a();
  }

  public final void i_()
  {
    if (f())
      c.c();
    e();
    this.d = false;
  }

  public final void j_()
  {
    g();
    this.b.b();
  }

  public n k_()
  {
    return n.a;
  }

  public boolean l_()
  {
    return false;
  }

  public boolean m_()
  {
    return false;
  }

  public void p_()
  {
    this.b.dispose();
  }

  public void q_()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.a
 * JD-Core Version:    0.6.2
 */