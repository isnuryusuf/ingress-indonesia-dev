package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

class SplitPane$1 extends InputListener
{
  int draggingPointer = -1;

  SplitPane$1(SplitPane paramSplitPane)
  {
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (this.draggingPointer != -1);
    while (((paramInt1 == 0) && (paramInt2 != 0)) || (!this.this$0.handleBounds.contains(paramFloat1, paramFloat2)))
      return false;
    this.draggingPointer = paramInt1;
    this.this$0.lastPoint.set(paramFloat1, paramFloat2);
    this.this$0.handlePosition.set(this.this$0.handleBounds.x, this.this$0.handleBounds.y);
    return true;
  }

  public void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
    if (paramInt != this.draggingPointer)
      return;
    Drawable localDrawable = this.this$0.style.handle;
    if (!this.this$0.vertical)
    {
      float f5 = paramFloat1 - this.this$0.lastPoint.x;
      float f6 = this.this$0.getWidth() - localDrawable.getMinWidth();
      float f7 = f5 + this.this$0.handlePosition.x;
      this.this$0.handlePosition.x = f7;
      float f8 = Math.min(f6, Math.max(0.0F, f7));
      this.this$0.splitAmount = (f8 / f6);
      if (this.this$0.splitAmount < this.this$0.minAmount)
        this.this$0.splitAmount = this.this$0.minAmount;
      if (this.this$0.splitAmount > this.this$0.maxAmount)
        this.this$0.splitAmount = this.this$0.maxAmount;
      this.this$0.lastPoint.set(paramFloat1, paramFloat2);
    }
    while (true)
    {
      this.this$0.invalidate();
      return;
      float f1 = paramFloat2 - this.this$0.lastPoint.y;
      float f2 = this.this$0.getHeight() - localDrawable.getMinHeight();
      float f3 = f1 + this.this$0.handlePosition.y;
      this.this$0.handlePosition.y = f3;
      float f4 = Math.min(f2, Math.max(0.0F, f3));
      this.this$0.splitAmount = (1.0F - f4 / f2);
      if (this.this$0.splitAmount < this.this$0.minAmount)
        this.this$0.splitAmount = this.this$0.minAmount;
      if (this.this$0.splitAmount > this.this$0.maxAmount)
        this.this$0.splitAmount = this.this$0.maxAmount;
      this.this$0.lastPoint.set(paramFloat1, paramFloat2);
    }
  }

  public void touchUp(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 == this.draggingPointer)
      this.draggingPointer = -1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.SplitPane.1
 * JD-Core Version:    0.6.2
 */