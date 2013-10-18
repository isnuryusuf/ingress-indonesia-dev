package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Actor;

public class RotateByAction extends RelativeTemporalAction
{
  private float amount;

  public float getAmount()
  {
    return this.amount;
  }

  public void setAmount(float paramFloat)
  {
    this.amount = paramFloat;
  }

  protected void updateRelative(float paramFloat)
  {
    this.actor.rotate(paramFloat * this.amount);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.RotateByAction
 * JD-Core Version:    0.6.2
 */