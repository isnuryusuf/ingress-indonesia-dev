package com.nianticproject.ingress.common.e;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.ui.widget.w;

final class f extends ClickListener
{
  f(b paramb)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    a.b(this.a.a, Math.max(1, a.h(this.a.a)));
    a.i(this.a.a).a(Integer.toString(a.g(this.a.a)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.f
 * JD-Core Version:    0.6.2
 */