package com.badlogic.gdx.backends.android.surfaceview;

import android.view.View.MeasureSpec;

public class FillResolutionStrategy
  implements ResolutionStrategy
{
  public ResolutionStrategy.MeasuredDimension calcMeasures(int paramInt1, int paramInt2)
  {
    return new ResolutionStrategy.MeasuredDimension(View.MeasureSpec.getSize(paramInt1), View.MeasureSpec.getSize(paramInt2));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.surfaceview.FillResolutionStrategy
 * JD-Core Version:    0.6.2
 */