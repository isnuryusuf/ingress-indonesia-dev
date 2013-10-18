package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.InputProcessor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.ak;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.w.ac;
import java.util.LinkedList;

public final class z
{
  private final f a;
  private final InputProcessor b;
  private Stage c;
  private Skin d;
  private final LinkedList<ak<com.nianticproject.ingress.common.ui.widget.t, ? extends Runnable>> e = eq.b();
  private com.nianticproject.ingress.common.ui.widget.t f;
  private final Runnable g = new aa(this);

  public z(f paramf, InputProcessor paramInputProcessor)
  {
    this.a = paramf;
    this.b = paramInputProcessor;
    paramf.a(paramInputProcessor);
  }

  public final void a()
  {
    t.a(this.c);
  }

  public final void a(float paramFloat)
  {
    if ((this.f != null) && (!this.f.a(paramFloat)))
    {
      this.f.dispose();
      this.f = null;
    }
    if (this.f == null)
    {
      ak localak = (ak)this.e.poll();
      if (localak != null)
      {
        this.f = ((com.nianticproject.ingress.common.ui.widget.t)localak.a);
        this.f.a(this.d, this.c);
        ((Runnable)localak.b).run();
      }
    }
    this.c.act(paramFloat);
  }

  public final void a(float paramFloat, Runnable paramRunnable)
  {
    if (this.f != null)
    {
      this.f.dispose();
      this.f = null;
    }
    this.e.clear();
    this.e.offer(ak.a(new com.nianticproject.ingress.common.ui.widget.t(0.0F, 0.8F, paramFloat), this.g));
    this.e.offer(ak.a(new com.nianticproject.ingress.common.ui.widget.t(0.8F, 0.0F, 0.2F), new ab(this, paramRunnable)));
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.c.setViewport(paramInt1, paramInt2, false);
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.d = paramSkin;
    this.c = paramStage;
  }

  public final void b()
  {
    this.c.dispose();
    ac.a(this.f);
    this.e.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.z
 * JD-Core Version:    0.6.2
 */