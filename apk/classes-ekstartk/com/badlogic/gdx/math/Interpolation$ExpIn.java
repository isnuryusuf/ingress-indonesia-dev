package com.badlogic.gdx.math;

public class Interpolation$ExpIn extends Interpolation.Exp
{
  public Interpolation$ExpIn(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }

  public float apply(float paramFloat)
  {
    return ((float)Math.pow(this.value, this.power * (paramFloat - 1.0F)) - this.min) * this.scale;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.ExpIn
 * JD-Core Version:    0.6.2
 */