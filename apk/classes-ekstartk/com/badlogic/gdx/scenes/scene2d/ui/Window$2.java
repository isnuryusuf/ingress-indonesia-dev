package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;

class Window$2 extends InputListener
{
  Window$2(Window paramWindow)
  {
  }

  public boolean touchDown(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    if (paramInt1 != 0)
      return false;
    Window localWindow = this.this$0;
    boolean bool1 = this.this$0.isMovable;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = this.this$0.getHeight() - paramFloat2 < this.this$0.getTitleBarHeight();
      bool2 = false;
      if (!bool3)
      {
        boolean bool4 = paramFloat2 < this.this$0.getHeight();
        bool2 = false;
        if (bool4)
        {
          boolean bool5 = paramFloat1 < 0.0F;
          bool2 = false;
          if (bool5)
          {
            boolean bool6 = paramFloat1 < this.this$0.getWidth();
            bool2 = false;
            if (bool6)
              bool2 = true;
          }
        }
      }
    }
    localWindow.dragging = bool2;
    this.this$0.dragOffset.set(paramFloat1, paramFloat2);
    return this.this$0.dragging;
  }

  public void touchDragged(InputEvent paramInputEvent, float paramFloat1, float paramFloat2, int paramInt)
  {
    if (!this.this$0.dragging)
      return;
    this.this$0.translate(paramFloat1 - this.this$0.dragOffset.x, paramFloat2 - this.this$0.dragOffset.y);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Window.2
 * JD-Core Version:    0.6.2
 */