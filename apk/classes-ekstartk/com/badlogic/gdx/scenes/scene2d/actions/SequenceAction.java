package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.utils.Array;

public class SequenceAction extends ParallelAction
{
  private int index;

  public boolean act(float paramFloat)
  {
    if (this.index >= this.actions.size)
      return true;
    if (((Action)this.actions.get(this.index)).act(paramFloat))
    {
      this.index = (1 + this.index);
      if (this.index > this.actions.size)
        return true;
    }
    return false;
  }

  public void restart()
  {
    super.restart();
    this.index = 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.SequenceAction
 * JD-Core Version:    0.6.2
 */