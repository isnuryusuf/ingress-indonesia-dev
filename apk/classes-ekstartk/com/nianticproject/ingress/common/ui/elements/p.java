package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ActorGestureListener;

final class p extends ActorGestureListener
{
  p(Compass paramCompass)
  {
  }

  public final void tap(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    Compass localCompass = this.a;
    if (!Compass.e(this.a));
    for (boolean bool = true; ; bool = false)
    {
      Compass.a(localCompass, bool);
      if (Compass.f(this.a) != null)
        Compass.f(this.a).a(Compass.e(this.a));
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.p
 * JD-Core Version:    0.6.2
 */