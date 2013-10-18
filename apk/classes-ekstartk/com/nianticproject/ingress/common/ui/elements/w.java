package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

final class w extends ClickListener
{
  private final ClickListener b;

  public w(MissionReminderDialog paramMissionReminderDialog, ClickListener paramClickListener)
  {
    this.b = paramClickListener;
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    this.b.clicked(paramInputEvent, paramFloat1, paramFloat2);
    this.a.g();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.w
 * JD-Core Version:    0.6.2
 */