package com.badlogic.gdx.input;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Timer.Task;

class GestureDetector$1 extends Timer.Task
{
  GestureDetector$1(GestureDetector paramGestureDetector)
  {
  }

  public void run()
  {
    if (this.this$0.listener.longPress(this.this$0.pointer1.x, this.this$0.pointer1.y))
      this.this$0.longPressFired = true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.input.GestureDetector.1
 * JD-Core Version:    0.6.2
 */