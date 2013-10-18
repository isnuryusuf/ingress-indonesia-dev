package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

final class i extends InputListener
{
  i(h paramh)
  {
  }

  public final boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    h.a(this.a, System.currentTimeMillis());
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.i
 * JD-Core Version:    0.6.2
 */