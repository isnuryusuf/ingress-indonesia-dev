package com.nianticproject.ingress.common.e;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.ui.widget.w;

final class e extends ClickListener
{
  e(b paramb)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    a.a(this.a.a, Math.min(8, a.f(this.a.a)));
    a.e(this.a.a).a(Integer.toString(a.c(this.a.a)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.e
 * JD-Core Version:    0.6.2
 */