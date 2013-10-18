package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Actor;

public class MoveToAction extends TemporalAction
{
  private float endX;
  private float endY;
  private float startX;
  private float startY;

  public float getX()
  {
    return this.endX;
  }

  public float getY()
  {
    return this.endY;
  }

  protected void initialize()
  {
    this.startX = this.actor.getX();
    this.startY = this.actor.getY();
  }

  public void setPosition(float paramFloat1, float paramFloat2)
  {
    this.endX = paramFloat1;
    this.endY = paramFloat2;
  }

  public void setX(float paramFloat)
  {
    this.endX = paramFloat;
  }

  public void setY(float paramFloat)
  {
    this.endY = paramFloat;
  }

  protected void update(float paramFloat)
  {
    this.actor.setPosition(this.startX + paramFloat * (this.endX - this.startX), this.startY + paramFloat * (this.endY - this.startY));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.MoveToAction
 * JD-Core Version:    0.6.2
 */