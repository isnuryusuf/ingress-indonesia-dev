package com.nianticproject.ingress.common.itemupgrade;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

final class d extends InputListener
{
  d(c paramc)
  {
  }

  public final boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (!c.a(this.a).a())
      c.b(this.a);
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.d
 * JD-Core Version:    0.6.2
 */