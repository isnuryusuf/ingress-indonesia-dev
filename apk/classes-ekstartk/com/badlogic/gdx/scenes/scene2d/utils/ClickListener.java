package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.scenes.scene2d.InputEvent;

public abstract class ClickListener extends PressedListener
{
  public abstract void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2);

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    boolean bool = isOver(paramInputEvent.getListenerActor(), paramFloat1, paramFloat2);
    if ((bool) && (paramInt1 == 0) && (paramInt2 != getButton()))
      bool = false;
    if (bool)
      clicked(paramInputEvent, paramFloat1, paramFloat2);
    super.touchUp(paramInputEvent, paramFloat1, paramFloat2, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.ClickListener
 * JD-Core Version:    0.6.2
 */