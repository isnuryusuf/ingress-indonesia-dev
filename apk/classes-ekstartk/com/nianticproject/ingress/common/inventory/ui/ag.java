package com.nianticproject.ingress.common.inventory.ui;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.ui.widget.d;

final class ag extends d
{
  private final u b;
  private boolean c;
  private boolean d;

  ag(v paramv, q paramq)
  {
    super((Button.ButtonStyle)v.g(paramv).get("inventory-card", Button.ButtonStyle.class));
    setWidth(0.6F * v.h(paramv).getWidth());
    setHeight(0.57F * v.h(paramv).getHeight());
    addListener(new ah(this, paramv, paramq));
    v.g(paramv).get("inventory-header", Label.LabelStyle.class);
    int i = v.a(v.h(paramv));
    switch (aa.b[paramq.a().ordinal()])
    {
    default:
      this.b = new h(paramq, new ad(paramv, paramq), i);
    case 1:
    case 2:
    }
    while (true)
    {
      d();
      return;
      this.b = new h(paramq, new ak(paramv, paramq), i);
      continue;
      this.b = new ar(paramq, new ak(paramv, paramq), v.j(paramv), v.k(paramv), v.l(paramv), new ai(this, paramv), i);
    }
  }

  private void d()
  {
    e locale1 = e.b(0.01F);
    e locale2 = e.b(0.02F);
    reset();
    Actor localActor1 = this.b.b(v.g(this.a));
    if (localActor1 != null)
    {
      add(localActor1).o().g().d(locale1);
      row();
    }
    Actor localActor2 = this.b.a(v.g(this.a));
    if (localActor2 != null)
    {
      add(localActor2).i().n().f().d(locale1);
      row();
    }
    Actor localActor3 = this.b.c(v.g(this.a));
    if (localActor3 != null)
      add(localActor3).o().g().f(locale2).h(locale2);
  }

  public final void a()
  {
    this.b.a(false);
    this.b.dispose();
    remove();
  }

  public final void a(boolean paramBoolean)
  {
    this.b.a(paramBoolean);
  }

  public final void b()
  {
    if ((this.d) || ((this.c) && (this.b.c())))
    {
      d();
      this.d = false;
    }
    this.b.d();
  }

  public final void b(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final void c()
  {
    this.b.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.ag
 * JD-Core Version:    0.6.2
 */