package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

class List$1 extends InputListener
{
  List$1(List paramList)
  {
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 != 0))
      return false;
    this.this$0.touchDown(paramFloat2);
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.List.1
 * JD-Core Version:    0.6.2
 */