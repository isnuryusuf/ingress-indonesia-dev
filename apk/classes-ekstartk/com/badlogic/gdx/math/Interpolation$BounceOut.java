package com.badlogic.gdx.math;

public class Interpolation$BounceOut extends Interpolation
{
  final float[] heights;
  final float[] widths;

  public Interpolation$BounceOut(int paramInt)
  {
    if ((paramInt < 2) || (paramInt > 5))
      throw new IllegalArgumentException("bounces cannot be < 2 or > 5: " + paramInt);
    this.widths = new float[paramInt];
    this.heights = new float[paramInt];
    this.heights[0] = 1.0F;
    switch (paramInt)
    {
    default:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      float[] arrayOfFloat = this.widths;
      arrayOfFloat[0] = (2.0F * arrayOfFloat[0]);
      return;
      this.widths[0] = 0.6F;
      this.widths[1] = 0.4F;
      this.heights[1] = 0.33F;
      continue;
      this.widths[0] = 0.4F;
      this.widths[1] = 0.4F;
      this.widths[2] = 0.2F;
      this.heights[1] = 0.33F;
      this.heights[2] = 0.1F;
      continue;
      this.widths[0] = 0.34F;
      this.widths[1] = 0.34F;
      this.widths[2] = 0.2F;
      this.widths[3] = 0.15F;
      this.heights[1] = 0.26F;
      this.heights[2] = 0.11F;
      this.heights[3] = 0.03F;
      continue;
      this.widths[0] = 0.3F;
      this.widths[1] = 0.3F;
      this.widths[2] = 0.2F;
      this.widths[3] = 0.1F;
      this.widths[4] = 0.1F;
      this.heights[1] = 0.45F;
      this.heights[2] = 0.3F;
      this.heights[3] = 0.15F;
      this.heights[4] = 0.06F;
    }
  }

  public Interpolation$BounceOut(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    if (paramArrayOfFloat1.length != paramArrayOfFloat2.length)
      throw new IllegalArgumentException("Must be the same number of widths and heights.");
    this.widths = paramArrayOfFloat1;
    this.heights = paramArrayOfFloat2;
  }

  public float apply(float paramFloat)
  {
    float f1 = paramFloat + this.widths[0] / 2.0F;
    int i = this.widths.length;
    float f2 = f1;
    int j = 0;
    float f3 = 0.0F;
    while (true)
    {
      float f4 = 0.0F;
      if (j < i)
      {
        f3 = this.widths[j];
        if (f2 <= f3)
          f4 = this.heights[j];
      }
      else
      {
        float f5 = f2 / f3;
        float f6 = f5 * (f4 * (4.0F / f3));
        return 1.0F - f3 * (f6 - f5 * f6);
      }
      f2 -= f3;
      j++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.math.Interpolation.BounceOut
 * JD-Core Version:    0.6.2
 */