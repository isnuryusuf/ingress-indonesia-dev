package com.badlogic.gdx.math;

public class Interpolation$Elastic extends Interpolation
{
  final float power;
  final float value;

  public Interpolation$Elastic(float paramFloat1, float paramFloat2)
  {
    this.value = paramFloat1;
    this.power = paramFloat2;
  }

  public float apply(float paramFloat)
  {
    if (paramFloat <= 0.5F)
    {
      float f2 = paramFloat * 2.0F;
      return 1.0955F * ((float)Math.pow(this.value, this.power * (f2 - 1.0F)) * MathUtils.sin(f2 * 20.0F)) / 2.0F;
    }
    float f1 = 2.0F * (1.0F - paramFloat);
    return 1.0F - 1.0955F * ((float)Math.pow(this.value, this.power * (f1 - 1.0F)) * MathUtils.sin(f1 * 20.0F)) / 2.0F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.Elastic
 * JD-Core Version:    0.6.2
 */