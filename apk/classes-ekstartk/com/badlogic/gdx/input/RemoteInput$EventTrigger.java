package com.badlogic.gdx.input;

import com.badlogic.gdx.InputProcessor;
import java.util.Set;

class RemoteInput$EventTrigger
  implements Runnable
{
  RemoteInput.KeyEvent keyEvent;
  RemoteInput.TouchEvent touchEvent;

  public RemoteInput$EventTrigger(RemoteInput paramRemoteInput, RemoteInput.TouchEvent paramTouchEvent, RemoteInput.KeyEvent paramKeyEvent)
  {
    this.touchEvent = paramTouchEvent;
    this.keyEvent = paramKeyEvent;
  }

  public void run()
  {
    this.this$0.justTouched = false;
    if (this.this$0.processor != null)
    {
      if (this.touchEvent != null)
      {
        this.this$0.touchX[this.touchEvent.pointer] = this.touchEvent.x;
        this.this$0.touchY[this.touchEvent.pointer] = this.touchEvent.y;
      }
      switch (this.touchEvent.type)
      {
      default:
        if (this.keyEvent != null)
          switch (this.keyEvent.type)
          {
          default:
          case 0:
          case 1:
          case 2:
          }
        break;
      case 0:
      case 1:
      case 2:
      }
    }
    do
    {
      do
      {
        return;
        this.this$0.processor.touchDown(this.touchEvent.x, this.touchEvent.y, this.touchEvent.pointer, 0);
        this.this$0.isTouched[this.touchEvent.pointer] = true;
        this.this$0.justTouched = true;
        break;
        this.this$0.processor.touchUp(this.touchEvent.x, this.touchEvent.y, this.touchEvent.pointer, 0);
        this.this$0.isTouched[this.touchEvent.pointer] = false;
        break;
        this.this$0.processor.touchDragged(this.touchEvent.x, this.touchEvent.y, this.touchEvent.pointer);
        break;
        this.this$0.processor.keyDown(this.keyEvent.keyCode);
        this.this$0.keys.add(Integer.valueOf(this.keyEvent.keyCode));
        return;
        this.this$0.processor.keyUp(this.keyEvent.keyCode);
        this.this$0.keys.remove(Integer.valueOf(this.keyEvent.keyCode));
        return;
        this.this$0.processor.keyTyped(this.keyEvent.keyChar);
        return;
        if (this.touchEvent != null)
        {
          this.this$0.touchX[this.touchEvent.pointer] = this.touchEvent.x;
          this.this$0.touchY[this.touchEvent.pointer] = this.touchEvent.y;
          if (this.touchEvent.type == 0)
          {
            this.this$0.isTouched[this.touchEvent.pointer] = true;
            this.this$0.justTouched = true;
          }
          if (this.touchEvent.type == 1)
            this.this$0.isTouched[this.touchEvent.pointer] = false;
        }
      }
      while (this.keyEvent == null);
      if (this.keyEvent.type == 0)
        this.this$0.keys.add(Integer.valueOf(this.keyEvent.keyCode));
    }
    while (this.keyEvent.type != 1);
    this.this$0.keys.remove(Integer.valueOf(this.keyEvent.keyCode));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.input.RemoteInput.EventTrigger
 * JD-Core Version:    0.6.2
 */