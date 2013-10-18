package com.badlogic.gdx.math;

public class Interpolation$SwingOut extends Interpolation
{
  private final float scale;

  public Interpolation$SwingOut(float paramFloat)
  {
    this.scale = paramFloat;
  }

  public float apply(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * f * (f * (1.0F + this.scale) + this.scale);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.SwingOut
 * JD-Core Version:    0.6.2
 */