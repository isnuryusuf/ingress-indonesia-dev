package com.nianticproject.ingress.common.itemupgrade;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.nianticproject.ingress.common.ui.widget.bc;
import com.nianticproject.ingress.shared.aj;

final class h
  implements bc
{
  Actor a = null;

  h(c paramc)
  {
  }

  public final void a()
  {
    int i = c.f(this.b);
    if (i != -1)
      com.nianticproject.ingress.common.s.c.b(i);
  }

  public final void a(Actor paramActor, boolean paramBoolean)
  {
  }

  public final void b(Actor paramActor)
  {
    aj.a("DeployResonatorScannerUi.onFrontActorChanged");
    c.a(this.b, paramActor.name);
    this.b.b();
    c.a(this.b, paramActor, paramActor);
    if (this.a != null)
      c.a(this.b, this.a, paramActor);
    this.a = paramActor;
    aj.b();
  }

  public final void c(Actor paramActor)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.h
 * JD-Core Version:    0.6.2
 */