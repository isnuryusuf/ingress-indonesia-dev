package com.badlogic.gdx.math;

public class Interpolation$Bounce extends Interpolation.BounceOut
{
  public Interpolation$Bounce(int paramInt)
  {
    super(paramInt);
  }

  public Interpolation$Bounce(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    super(paramArrayOfFloat1, paramArrayOfFloat2);
  }

  private float out(float paramFloat)
  {
    float f = paramFloat + this.widths[0] / 2.0F;
    if (f < this.widths[0])
      return f / (this.widths[0] / 2.0F) - 1.0F;
    return super.apply(paramFloat);
  }

  public float apply(float paramFloat)
  {
    if (paramFloat <= 0.5F)
      return (1.0F - out(1.0F - paramFloat * 2.0F)) / 2.0F;
    return 0.5F + out(paramFloat * 2.0F - 1.0F) / 2.0F;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.Bounce
 * JD-Core Version:    0.6.2
 */