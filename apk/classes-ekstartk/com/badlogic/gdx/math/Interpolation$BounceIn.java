package com.badlogic.gdx.math;

public class Interpolation$BounceIn extends Interpolation.BounceOut
{
  public Interpolation$BounceIn(int paramInt)
  {
    super(paramInt);
  }

  public Interpolation$BounceIn(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    super(paramArrayOfFloat1, paramArrayOfFloat2);
  }

  public float apply(float paramFloat)
  {
    return 1.0F - super.apply(1.0F - paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.BounceIn
 * JD-Core Version:    0.6.2
 */