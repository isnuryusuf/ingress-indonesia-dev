package com.badlogic.gdx.math;

public class Interpolation$PowOut extends Interpolation.Pow
{
  public Interpolation$PowOut(int paramInt)
  {
    super(paramInt);
  }

  public float apply(float paramFloat)
  {
    float f = (float)Math.pow(paramFloat - 1.0F, this.power);
    if (this.power % 2 == 0);
    for (int i = -1; ; i = 1)
      return 1.0F + f * i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.PowOut
 * JD-Core Version:    0.6.2
 */