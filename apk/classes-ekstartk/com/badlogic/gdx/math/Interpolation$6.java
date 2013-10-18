package com.badlogic.gdx.math;

final class Interpolation$6 extends Interpolation
{
  public final float apply(float paramFloat)
  {
    if (paramFloat <= 0.5F)
    {
      float f2 = paramFloat * 2.0F;
      return (1.0F - (float)Math.sqrt(1.0F - f2 * f2)) / 2.0F;
    }
    float f1 = 2.0F * (paramFloat - 1.0F);
    return (1.0F + (float)Math.sqrt(1.0F - f1 * f1)) / 2.0F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.6
 * JD-Core Version:    0.6.2
 */