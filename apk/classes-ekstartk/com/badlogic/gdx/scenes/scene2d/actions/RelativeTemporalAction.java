package com.badlogic.gdx.scenes.scene2d.actions;

public abstract class RelativeTemporalAction extends TemporalAction
{
  private float lastPercent;

  protected void initialize()
  {
    this.lastPercent = 0.0F;
  }

  protected void update(float paramFloat)
  {
    updateRelative(paramFloat - this.lastPercent);
    this.lastPercent = paramFloat;
  }

  protected abstract void updateRelative(float paramFloat);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.RelativeTemporalAction
 * JD-Core Version:    0.6.2
 */