package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Actor;

public class SizeToAction extends TemporalAction
{
  private float endHeight;
  private float endWidth;
  private float startHeight;
  private float startWidth;

  public float getHeight()
  {
    return this.endHeight;
  }

  public float getWidth()
  {
    return this.endWidth;
  }

  protected void initialize()
  {
    this.startWidth = this.actor.getWidth();
    this.startHeight = this.actor.getHeight();
  }

  public void setHeight(float paramFloat)
  {
    this.endHeight = paramFloat;
  }

  public void setSize(float paramFloat1, float paramFloat2)
  {
    this.endWidth = paramFloat1;
    this.endHeight = paramFloat2;
  }

  public void setWidth(float paramFloat)
  {
    this.endWidth = paramFloat;
  }

  protected void update(float paramFloat)
  {
    this.actor.setSize(this.startWidth + paramFloat * (this.endWidth - this.startWidth), this.startHeight + paramFloat * (this.endHeight - this.startHeight));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.SizeToAction
 * JD-Core Version:    0.6.2
 */