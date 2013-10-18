package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Actor;

public class SizeByAction extends RelativeTemporalAction
{
  private float amountHeight;
  private float amountWidth;

  public float getAmountHeight()
  {
    return this.amountHeight;
  }

  public float getAmountWidth()
  {
    return this.amountWidth;
  }

  public void setAmount(float paramFloat1, float paramFloat2)
  {
    this.amountWidth = paramFloat1;
    this.amountHeight = paramFloat2;
  }

  public void setAmountHeight(float paramFloat)
  {
    this.amountHeight = paramFloat;
  }

  public void setAmountWidth(float paramFloat)
  {
    this.amountWidth = paramFloat;
  }

  protected void updateRelative(float paramFloat)
  {
    this.actor.size(paramFloat * this.amountWidth, paramFloat * this.amountHeight);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.SizeByAction
 * JD-Core Version:    0.6.2
 */