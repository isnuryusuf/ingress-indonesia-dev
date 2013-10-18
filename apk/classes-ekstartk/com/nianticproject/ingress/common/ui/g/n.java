package com.nianticproject.ingress.common.ui.g;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel;

final class n
  implements t
{
  n(m paramm)
  {
  }

  public final void a()
  {
    Object localObject = m.a(this.a).f();
    q localq1 = m.b(this.a);
    m.a(this.a).e();
    q localq2 = m.b(this.a);
    if (localq2 != localq1)
      localObject = m.c(this.a).a(localq2);
    if (localObject != null)
      m.a(this.a).a((Actor)localObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g.n
 * JD-Core Version:    0.6.2
 */