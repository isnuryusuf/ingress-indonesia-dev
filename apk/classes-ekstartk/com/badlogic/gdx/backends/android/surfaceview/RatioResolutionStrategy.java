package com.badlogic.gdx.backends.android.surfaceview;

import android.view.View.MeasureSpec;

public class RatioResolutionStrategy
  implements ResolutionStrategy
{
  private final float ratio;

  public RatioResolutionStrategy(float paramFloat)
  {
    this.ratio = paramFloat;
  }

  public RatioResolutionStrategy(float paramFloat1, float paramFloat2)
  {
    this.ratio = (paramFloat1 / paramFloat2);
  }

  public ResolutionStrategy.MeasuredDimension calcMeasures(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    float f = this.ratio;
    if (i / j < f)
      j = Math.round(i / f);
    while (true)
    {
      return new ResolutionStrategy.MeasuredDimension(i, j);
      i = Math.round(f * j);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.RatioResolutionStrategy
 * JD-Core Version:    0.6.2
 */