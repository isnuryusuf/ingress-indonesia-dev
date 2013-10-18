package com.badlogic.gdx.math;

final class Interpolation$2 extends Interpolation
{
  public final float apply(float paramFloat)
  {
    return paramFloat * (paramFloat * paramFloat) * (10.0F + paramFloat * (6.0F * paramFloat - 15.0F));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.2
 * JD-Core Version:    0.6.2
 */