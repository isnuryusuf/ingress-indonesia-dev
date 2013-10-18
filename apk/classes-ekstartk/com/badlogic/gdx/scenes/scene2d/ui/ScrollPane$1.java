package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.Stage;

class ScrollPane$1 extends InputListener
{
  private int draggingPointer = -1;
  private float handlePosition;

  ScrollPane$1(ScrollPane paramScrollPane)
  {
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    int i = -1;
    if (this.draggingPointer != i)
      return false;
    if ((paramInt1 == 0) && (paramInt2 != 0))
      return false;
    this.this$0.getStage().setScrollFocus(this.this$0);
    if (this.this$0.fadeAlpha == 0.0F)
      return false;
    if ((this.this$0.scrollX) && (this.this$0.hScrollBounds.contains(paramFloat1, paramFloat2)))
    {
      paramInputEvent.stop();
      this.this$0.resetFade();
      if (this.this$0.hKnobBounds.contains(paramFloat1, paramFloat2))
      {
        this.this$0.lastPoint.set(paramFloat1, paramFloat2);
        this.handlePosition = this.this$0.hKnobBounds.x;
        this.this$0.touchScrollH = true;
        this.draggingPointer = paramInt1;
        return true;
      }
      ScrollPane localScrollPane2 = this.this$0;
      float f3 = this.this$0.amountX;
      float f4 = Math.max(0.9F * this.this$0.areaWidth, 0.1F * this.this$0.maxX);
      if (paramFloat1 < this.this$0.hKnobBounds.x);
      while (true)
      {
        localScrollPane2.setScrollX(f3 + f4 * i);
        return true;
        i = 1;
      }
    }
    if ((this.this$0.scrollY) && (this.this$0.vScrollBounds.contains(paramFloat1, paramFloat2)))
    {
      paramInputEvent.stop();
      this.this$0.resetFade();
      if (this.this$0.vKnobBounds.contains(paramFloat1, paramFloat2))
      {
        this.this$0.lastPoint.set(paramFloat1, paramFloat2);
        this.handlePosition = this.this$0.vKnobBounds.y;
        this.this$0.touchScrollV = true;
        this.draggingPointer = paramInt1;
        return true;
      }
      ScrollPane localScrollPane1 = this.this$0;
      float f1 = this.this$0.amountY;
      float f2 = Math.max(0.9F * this.this$0.areaHeight, 0.1F * this.this$0.maxY);
      if (paramFloat2 < this.this$0.vKnobBounds.y)
        i = 1;
      localScrollPane1.setScrollY(f1 + f2 * i);
      return true;
    }
    return false;
  }

  public void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
    if (paramInt != this.draggingPointer);
    do
    {
      return;
      if (this.this$0.touchScrollH)
      {
        float f4 = paramFloat1 - this.this$0.lastPoint.x + this.handlePosition;
        this.handlePosition = f4;
        float f5 = Math.max(this.this$0.hScrollBounds.x, f4);
        float f6 = Math.min(this.this$0.hScrollBounds.x + this.this$0.hScrollBounds.width - this.this$0.hKnobBounds.width, f5);
        this.this$0.setScrollPercentX((f6 - this.this$0.hScrollBounds.x) / (this.this$0.hScrollBounds.width - this.this$0.hKnobBounds.width));
        this.this$0.lastPoint.set(paramFloat1, paramFloat2);
        return;
      }
    }
    while (!this.this$0.touchScrollV);
    float f1 = paramFloat2 - this.this$0.lastPoint.y + this.handlePosition;
    this.handlePosition = f1;
    float f2 = Math.max(this.this$0.vScrollBounds.y, f1);
    float f3 = Math.min(this.this$0.vScrollBounds.y + this.this$0.vScrollBounds.height - this.this$0.vKnobBounds.height, f2);
    this.this$0.setScrollPercentY(1.0F - (f3 - this.this$0.vScrollBounds.y) / (this.this$0.vScrollBounds.height - this.this$0.vKnobBounds.height));
    this.this$0.lastPoint.set(paramFloat1, paramFloat2);
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 != this.draggingPointer)
      return;
    this.draggingPointer = -1;
    this.this$0.touchScrollH = false;
    this.this$0.touchScrollV = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.1
 * JD-Core Version:    0.6.2
 */