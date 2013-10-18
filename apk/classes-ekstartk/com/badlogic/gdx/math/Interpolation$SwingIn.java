package com.badlogic.gdx.math;

public class Interpolation$SwingIn extends Interpolation
{
  private final float scale;

  public Interpolation$SwingIn(float paramFloat)
  {
    this.scale = paramFloat;
  }

  public float apply(float paramFloat)
  {
    return paramFloat * paramFloat * (paramFloat * (1.0F + this.scale) - this.scale);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.SwingIn
 * JD-Core Version:    0.6.2
 */