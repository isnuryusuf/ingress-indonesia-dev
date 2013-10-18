package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.google.a.a.an;

public final class ProgressBar$ProgressBarStyle
{
  public NinePatch border;
  public NinePatch empty;
  public NinePatch full;
  public float smoothGrowRate;

  public ProgressBar$ProgressBarStyle()
  {
  }

  public ProgressBar$ProgressBarStyle(NinePatch paramNinePatch1, NinePatch paramNinePatch2, NinePatch paramNinePatch3, float paramFloat)
  {
    this.border = paramNinePatch1;
    this.empty = ((NinePatch)an.a(paramNinePatch2));
    this.full = ((NinePatch)an.a(paramNinePatch3));
    this.smoothGrowRate = paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ProgressBar.ProgressBarStyle
 * JD-Core Version:    0.6.2
 */