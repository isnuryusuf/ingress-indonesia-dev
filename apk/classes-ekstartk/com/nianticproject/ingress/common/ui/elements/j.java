package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

final class j extends ClickListener
{
  j(i parami)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    k localk = this.a.a();
    if ((localk != null) && (localk.c != null))
      localk.c.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.j
 * JD-Core Version:    0.6.2
 */