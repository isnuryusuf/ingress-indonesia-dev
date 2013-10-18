package com.nianticproject.ingress.common.e;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.ui.widget.w;

final class g extends ClickListener
{
  g(b paramb)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    a.b(this.a.a, Math.min(8, a.j(this.a.a)));
    a.i(this.a.a).a(Integer.toString(a.g(this.a.a)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.e.g
 * JD-Core Version:    0.6.2
 */