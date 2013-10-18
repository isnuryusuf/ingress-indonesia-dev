package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

class Slider$1 extends InputListener
{
  Slider$1(Slider paramSlider)
  {
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (this.this$0.draggingPointer != -1)
      return false;
    this.this$0.draggingPointer = paramInt1;
    this.this$0.calculatePositionAndValue(paramFloat1, paramFloat2);
    return true;
  }

  public void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
    this.this$0.calculatePositionAndValue(paramFloat1, paramFloat2);
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 != this.this$0.draggingPointer)
      return;
    this.this$0.draggingPointer = -1;
    this.this$0.calculatePositionAndValue(paramFloat1, paramFloat2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Slider.1
 * JD-Core Version:    0.6.2
 */