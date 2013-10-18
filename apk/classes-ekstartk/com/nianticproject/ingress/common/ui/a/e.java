package com.nianticproject.ingress.common.ui.a;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

public final class e extends Action
{
  private boolean a;

  public final boolean act(float paramFloat)
  {
    if (!this.a)
      ((ScrollLabel)this.actor).a();
    return true;
  }

  public final void restart()
  {
    this.a = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.a.e
 * JD-Core Version:    0.6.2
 */