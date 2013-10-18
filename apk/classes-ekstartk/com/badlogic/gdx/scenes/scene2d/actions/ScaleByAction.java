package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Actor;

public class ScaleByAction extends RelativeTemporalAction
{
  private float amountX;
  private float amountY;

  public float getAmountX()
  {
    return this.amountX;
  }

  public float getAmountY()
  {
    return this.amountY;
  }

  public void setAmount(float paramFloat)
  {
    this.amountX = paramFloat;
    this.amountY = paramFloat;
  }

  public void setAmount(float paramFloat1, float paramFloat2)
  {
    this.amountX = paramFloat1;
    this.amountY = paramFloat2;
  }

  public void setAmountX(float paramFloat)
  {
    this.amountX = paramFloat;
  }

  public void setAmountY(float paramFloat)
  {
    this.amountY = paramFloat;
  }

  protected void updateRelative(float paramFloat)
  {
    this.actor.scale(paramFloat * this.amountX, paramFloat * this.amountY);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.ScaleByAction
 * JD-Core Version:    0.6.2
 */