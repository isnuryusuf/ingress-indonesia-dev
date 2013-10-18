package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;

public class ColorAction extends TemporalAction
{
  private Color color;
  private final Color end = new Color();
  private float startA;
  private float startB;
  private float startG;
  private float startR;

  public Color getColor()
  {
    return this.color;
  }

  public Color getEndColor()
  {
    return this.end;
  }

  protected void initialize()
  {
    if (this.color == null)
      this.color = this.actor.getColor();
    this.startR = this.color.r;
    this.startG = this.color.g;
    this.startB = this.color.b;
    this.startA = this.color.a;
  }

  public void reset()
  {
    super.reset();
    this.color = null;
  }

  public void setColor(Color paramColor)
  {
    this.color = paramColor;
  }

  public void setEndColor(Color paramColor)
  {
    this.end.set(paramColor);
  }

  protected void update(float paramFloat)
  {
    float f1 = this.startR + paramFloat * (this.end.r - this.startR);
    float f2 = this.startG + paramFloat * (this.end.g - this.startG);
    float f3 = this.startB + paramFloat * (this.end.b - this.startB);
    float f4 = this.startA + paramFloat * (this.end.a - this.startA);
    this.color.set(f1, f2, f3, f4);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.actions.ColorAction
 * JD-Core Version:    0.6.2
 */