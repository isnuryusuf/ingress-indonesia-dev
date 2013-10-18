package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

final class ax extends InputListener
{
  ax(ScrollLabel paramScrollLabel, ScrollLabel.ScrollLabelStyle paramScrollLabelStyle)
  {
  }

  public final boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (this.b.b())
    {
      this.b.a();
      int i = ScrollLabel.a(this.b);
      ScrollLabel.a(this.b, i / this.a.scrollCps);
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ax
 * JD-Core Version:    0.6.2
 */