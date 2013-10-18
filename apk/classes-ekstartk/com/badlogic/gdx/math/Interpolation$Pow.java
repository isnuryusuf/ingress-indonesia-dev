package com.badlogic.gdx.math;

public class Interpolation$Pow extends Interpolation
{
  final int power;

  public Interpolation$Pow(int paramInt)
  {
    this.power = paramInt;
  }

  public float apply(float paramFloat)
  {
    if (paramFloat <= 0.5F)
      return (float)Math.pow(paramFloat * 2.0F, this.power) / 2.0F;
    float f = (float)Math.pow(2.0F * (paramFloat - 1.0F), this.power);
    if (this.power % 2 == 0);
    for (int i = -2; ; i = 2)
      return 1.0F + f / i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.Pow
 * JD-Core Version:    0.6.2
 */