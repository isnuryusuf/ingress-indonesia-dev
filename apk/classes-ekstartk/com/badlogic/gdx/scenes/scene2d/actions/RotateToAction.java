package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Actor;

public class RotateToAction extends TemporalAction
{
  private float end;
  private float start;

  public float getRotation()
  {
    return this.end;
  }

  protected void initialize()
  {
    this.start = this.actor.getRotation();
  }

  public void setRotation(float paramFloat)
  {
    this.end = paramFloat;
  }

  protected void update(float paramFloat)
  {
    this.actor.setRotation(this.start + paramFloat * (this.end - this.start));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.RotateToAction
 * JD-Core Version:    0.6.2
 */