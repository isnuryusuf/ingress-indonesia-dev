package com.badlogic.gdx.math;

public class Interpolation$Swing extends Interpolation
{
  private final float scale;

  public Interpolation$Swing(float paramFloat)
  {
    this.scale = (2.0F * paramFloat);
  }

  public float apply(float paramFloat)
  {
    if (paramFloat <= 0.5F)
    {
      float f2 = paramFloat * 2.0F;
      return f2 * f2 * (f2 * (1.0F + this.scale) - this.scale) / 2.0F;
    }
    float f1 = 2.0F * (paramFloat - 1.0F);
    return 1.0F + f1 * f1 * (f1 * (1.0F + this.scale) + this.scale) / 2.0F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.Swing
 * JD-Core Version:    0.6.2
 */