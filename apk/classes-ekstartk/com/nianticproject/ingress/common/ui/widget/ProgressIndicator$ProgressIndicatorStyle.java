package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.google.a.a.an;

public final class ProgressIndicator$ProgressIndicatorStyle
{
  public TextureRegion inner;
  public float innerTime = 2.0F;
  public TextureRegion outer;
  public float outerTime = 2.0F;

  public ProgressIndicator$ProgressIndicatorStyle()
  {
  }

  public ProgressIndicator$ProgressIndicatorStyle(TextureRegion paramTextureRegion1, float paramFloat1, TextureRegion paramTextureRegion2, float paramFloat2)
  {
    this.inner = ((TextureRegion)an.a(paramTextureRegion1));
    this.outer = ((TextureRegion)an.a(paramTextureRegion2));
    this.innerTime = paramFloat1;
    this.outerTime = paramFloat2;
    if ((paramFloat1 != 0.0F) && (paramFloat2 != 0.0F));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Rotation times must be non-zero");
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ProgressIndicator.ProgressIndicatorStyle
 * JD-Core Version:    0.6.2
 */