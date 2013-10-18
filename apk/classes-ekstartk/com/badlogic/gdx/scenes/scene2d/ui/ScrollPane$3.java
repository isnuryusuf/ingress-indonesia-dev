package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

class ScrollPane$3 extends InputListener
{
  ScrollPane$3(ScrollPane paramScrollPane)
  {
  }

  public boolean scrolled(InputEvent paramInputEvent, int paramInt)
  {
    this.this$0.resetFade();
    if (this.this$0.scrollY)
      this.this$0.setScrollY(this.this$0.amountY + Math.max(0.9F * this.this$0.areaHeight, 0.1F * this.this$0.maxY) / 4.0F * paramInt);
    while (true)
    {
      return true;
      if (this.this$0.scrollX)
        this.this$0.setScrollX(this.this$0.amountX + Math.max(0.9F * this.this$0.areaWidth, 0.1F * this.this$0.maxX) / 4.0F * paramInt);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.ScrollPane.3
 * JD-Core Version:    0.6.2
 */