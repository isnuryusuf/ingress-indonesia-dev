package com.badlogic.gdx.math;

public class Interpolation$Exp extends Interpolation
{
  final float min;
  final float power;
  final float scale;
  final float value;

  public Interpolation$Exp(float paramFloat1, float paramFloat2)
  {
    this.value = paramFloat1;
    this.power = paramFloat2;
    this.min = ((float)Math.pow(paramFloat1, -paramFloat2));
    this.scale = (1.0F / (1.0F - this.min));
  }

  public float apply(float paramFloat)
  {
    if (paramFloat <= 0.5F)
      return ((float)Math.pow(this.value, this.power * (paramFloat * 2.0F - 1.0F)) - this.min) * this.scale / 2.0F;
    return (2.0F - ((float)Math.pow(this.value, -this.power * (paramFloat * 2.0F - 1.0F)) - this.min) * this.scale) / 2.0F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.Exp
 * JD-Core Version:    0.6.2
 */