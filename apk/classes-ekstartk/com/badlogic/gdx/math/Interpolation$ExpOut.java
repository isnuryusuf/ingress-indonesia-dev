package com.badlogic.gdx.math;

public class Interpolation$ExpOut extends Interpolation.Exp
{
  public Interpolation$ExpOut(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }

  public float apply(float paramFloat)
  {
    return 1.0F - ((float)Math.pow(this.value, paramFloat * -this.power) - this.min) * this.scale;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.ExpOut
 * JD-Core Version:    0.6.2
 */