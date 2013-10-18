package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.InputMultiplexer;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.model.i;
import com.nianticproject.ingress.shared.aj;

final class y
{
  final m a;
  final boolean b;
  private final InputMultiplexer c;
  private final w d;
  private boolean e = false;
  private GameState f;
  private boolean g = false;

  y(m paramm, boolean paramBoolean, InputMultiplexer paramInputMultiplexer, w paramw)
  {
    this.a = ((m)an.a(paramm));
    this.b = paramBoolean;
    this.c = ((InputMultiplexer)an.a(paramInputMultiplexer));
    this.d = ((w)an.a(paramw));
  }

  final void a()
  {
    if ((this.e) && (!this.g))
    {
      this.c.addProcessor(this.a);
      this.g = true;
    }
    try
    {
      aj.a(this.a.g_(), ".onEnterForeground");
      this.a.h_();
      aj.b();
      this.d.a(this.a);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  final void a(float paramFloat)
  {
    if (this.g);
    try
    {
      aj.a(this.a.g_(), ".onUpdate");
      this.a.a_(paramFloat);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  final void a(int paramInt1, int paramInt2)
  {
    if (this.e)
      this.a.b(paramInt1, paramInt2);
  }

  final void a(Skin paramSkin, x paramx, int paramInt1, int paramInt2)
  {
    if (!this.e);
    try
    {
      aj.a(this.a.g_(), " initializeActivity");
      this.a.a(paramSkin, paramx, paramInt1, paramInt2);
      this.e = true;
      b(paramInt1, paramInt2);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  final void a(GameState paramGameState1, GameState paramGameState2)
  {
    if (!this.e)
      return;
    try
    {
      aj.a(this.a.g_(), ".updateActivityGameState");
      if (this.f == paramGameState1)
        this.a.a(paramGameState2);
      while (true)
      {
        this.f = paramGameState2;
        return;
        this.a.a(i.a(this.f, paramGameState2));
      }
    }
    finally
    {
      aj.b();
    }
  }

  final void b()
  {
    if (this.g)
    {
      this.g = false;
      this.c.removeProcessor(this.a);
      this.a.i_();
      this.d.b(this.a);
    }
  }

  final void b(int paramInt1, int paramInt2)
  {
    if (this.e)
      this.a.a(paramInt1, paramInt2);
  }

  final void c()
  {
    b();
    if (this.e)
    {
      this.a.p_();
      this.e = false;
    }
  }

  public final n d()
  {
    if (this.e)
      return this.a.k_();
    return n.a;
  }

  public final boolean e()
  {
    if (this.e)
      return this.a.l_();
    return false;
  }

  public final void f()
  {
    if (this.e);
    try
    {
      aj.a(this.a.g_(), ".onRender");
      this.a.j_();
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.y
 * JD-Core Version:    0.6.2
 */