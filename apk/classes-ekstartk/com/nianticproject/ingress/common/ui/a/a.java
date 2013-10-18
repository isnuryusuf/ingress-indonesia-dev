package com.nianticproject.ingress.common.ui.a;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

public final class a
{
  public static Action a(ScrollLabel paramScrollLabel, float paramFloat)
  {
    return Actions.forever(Actions.sequence(new f(paramScrollLabel), Actions.delay(paramFloat, new e())));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.a.a
 * JD-Core Version:    0.6.2
 */