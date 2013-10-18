package com.badlogic.gdx.math;

final class Interpolation$8 extends Interpolation
{
  public final float apply(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return (float)Math.sqrt(1.0F - f * f);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.8
 * JD-Core Version:    0.6.2
 */