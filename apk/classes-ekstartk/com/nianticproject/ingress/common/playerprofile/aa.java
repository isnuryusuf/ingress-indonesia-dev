package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

final class aa extends ClickListener
{
  aa(z paramz)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    BadgeView localBadgeView = (BadgeView)paramInputEvent.getListenerActor();
    z.a(this.a, localBadgeView);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.aa
 * JD-Core Version:    0.6.2
 */