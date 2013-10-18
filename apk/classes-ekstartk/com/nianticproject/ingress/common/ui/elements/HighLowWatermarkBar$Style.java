package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.google.a.a.an;

public final class HighLowWatermarkBar$Style
{
  public float barPadding;
  public NinePatch border;
  public NinePatch empty;
  public NinePatch highWater;
  public NinePatch lowWater;

  public HighLowWatermarkBar$Style()
  {
  }

  public HighLowWatermarkBar$Style(NinePatch paramNinePatch1, NinePatch paramNinePatch2, NinePatch paramNinePatch3, NinePatch paramNinePatch4, float paramFloat)
  {
    this.border = paramNinePatch1;
    this.empty = ((NinePatch)an.a(paramNinePatch2));
    this.lowWater = ((NinePatch)an.a(paramNinePatch3));
    this.highWater = ((NinePatch)an.a(paramNinePatch4));
    this.barPadding = paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.HighLowWatermarkBar.Style
 * JD-Core Version:    0.6.2
 */