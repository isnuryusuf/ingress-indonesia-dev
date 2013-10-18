package com.nianticproject.ingress.common.ui.g;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.nianticproject.ingress.common.scanner.em;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.common.ui.widget.bc;
import com.nianticproject.ingress.gameentity.components.PortalCoupler;
import com.nianticproject.ingress.gameentity.f;

final class o
  implements bc
{
  o(m paramm)
  {
  }

  private void a(String paramString1, String paramString2)
  {
    m.f(this.a).setText(paramString1);
    m.g(this.a).setText(paramString2);
  }

  public final void a()
  {
  }

  public final void a(Actor paramActor, boolean paramBoolean)
  {
    h localh = (h)paramActor;
    if (paramBoolean)
    {
      localh.a();
      return;
    }
    localh.e();
  }

  public final void b(Actor paramActor)
  {
    if (paramActor == null)
      a("", "");
    PortalCoupler localPortalCoupler;
    do
    {
      com.nianticproject.ingress.common.inventory.ui.q localq;
      do
      {
        do
          return;
        while (!m.d(this.a).a());
        h localh = (h)paramActor;
        a(localh.b(), localh.c());
        localq = m.c(this.a).a(localh);
      }
      while (localq == null);
      localPortalCoupler = (PortalCoupler)localq.h().getComponent(PortalCoupler.class);
    }
    while (localPortalCoupler == null);
    m.e(this.a).a(localPortalCoupler);
  }

  public final void c(Actor paramActor)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.o
 * JD-Core Version:    0.6.2
 */