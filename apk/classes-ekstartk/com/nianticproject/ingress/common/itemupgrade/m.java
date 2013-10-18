package com.nianticproject.ingress.common.itemupgrade;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.nianticproject.ingress.common.ui.widget.bc;

final class m
  implements bc
{
  Actor a = null;

  m(l paraml)
  {
  }

  public final void a()
  {
    l.b(this.b);
  }

  public final void a(Actor paramActor, boolean paramBoolean)
  {
  }

  public final void b(Actor paramActor)
  {
    l.a(this.b, paramActor.name);
    this.b.a();
    l.a(this.b, paramActor, paramActor);
    if (this.a != null)
      l.a(this.b, this.a, paramActor);
    this.a = paramActor;
    this.b.b();
    l.a(this.b);
  }

  public final void c(Actor paramActor)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.m
 * JD-Core Version:    0.6.2
 */