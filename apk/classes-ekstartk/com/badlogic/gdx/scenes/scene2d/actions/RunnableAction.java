package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;

public class RunnableAction extends Action
{
  private boolean ran;
  private Runnable runnable;

  public boolean act(float paramFloat)
  {
    if (!this.ran)
    {
      run();
      this.ran = true;
    }
    return true;
  }

  public Runnable getRunnable()
  {
    return this.runnable;
  }

  public void reset()
  {
    super.reset();
    this.runnable = null;
  }

  public void restart()
  {
    this.ran = false;
  }

  public void run()
  {
    this.runnable.run();
  }

  public void setRunnable(Runnable paramRunnable)
  {
    this.runnable = paramRunnable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.RunnableAction
 * JD-Core Version:    0.6.2
 */