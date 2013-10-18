package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.scenes.scene2d.Action;

public abstract class TemporalAction extends Action
{
  private boolean complete;
  private float duration;
  private Interpolation interpolation;
  private boolean reverse;
  private float time;

  public boolean act(float paramFloat)
  {
    boolean bool = true;
    if (this.complete)
      return bool;
    if (this.time == 0.0F)
      initialize();
    this.time = (paramFloat + this.time);
    float f;
    if (this.time >= this.duration)
    {
      this.complete = bool;
      if (!this.complete)
        break label86;
      f = 1.0F;
    }
    while (true)
    {
      if (this.reverse)
        f = 1.0F - f;
      update(f);
      return this.complete;
      bool = false;
      break;
      label86: f = this.time / this.duration;
      if (this.interpolation != null)
        f = this.interpolation.apply(f);
    }
  }

  public void finish()
  {
    this.time = this.duration;
  }

  public float getDuration()
  {
    return this.duration;
  }

  public Interpolation getInterpolation()
  {
    return this.interpolation;
  }

  public float getTime()
  {
    return this.time;
  }

  protected abstract void initialize();

  public boolean isReverse()
  {
    return this.reverse;
  }

  public void reset()
  {
    super.reset();
    this.reverse = false;
    this.interpolation = null;
  }

  public void restart()
  {
    this.time = 0.0F;
    this.complete = false;
  }

  public void setDuration(float paramFloat)
  {
    this.duration = paramFloat;
  }

  public void setInterpolation(Interpolation paramInterpolation)
  {
    this.interpolation = paramInterpolation;
  }

  public void setReverse(boolean paramBoolean)
  {
    this.reverse = paramBoolean;
  }

  public void setTime(float paramFloat)
  {
    this.time = paramFloat;
  }

  protected abstract void update(float paramFloat);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.TemporalAction
 * JD-Core Version:    0.6.2
 */