package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.scenes.scene2d.ui.Image;

final class bm extends Image
{
  private final int b;

  public bm(SegmentedProgressBar paramSegmentedProgressBar, int paramInt)
  {
    super(SegmentedProgressBar.a(paramSegmentedProgressBar).empty);
    this.b = paramInt;
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    if ((!isVisible()) || (paramFloat == 0.0F));
    float f6;
    float f9;
    float f10;
    float f11;
    float f12;
    do
    {
      return;
      super.draw(paramSpriteBatch, paramFloat);
      float f1 = getX();
      float f2 = getY();
      float f3 = getWidth();
      float f4 = getHeight();
      float f5 = f3 - 2.0F * SegmentedProgressBar.a(this.a).barPaddingPx;
      f6 = f4 - 2.0F * SegmentedProgressBar.a(this.a).barPaddingPx;
      if (SegmentedProgressBar.a(this.a).border != null)
        SegmentedProgressBar.a(this.a).border.draw(paramSpriteBatch, f1, f2, f3, f4);
      float f7 = MathUtils.clamp(SegmentedProgressBar.b(this.a) - this.b, 0.0F, 1.0F);
      float f8 = MathUtils.clamp(SegmentedProgressBar.c(this.a) - this.b, 0.0F, 1.0F);
      f9 = f5 * f7;
      f10 = f5 * (f8 - f7);
      f11 = f1 + SegmentedProgressBar.a(this.a).barPaddingPx;
      f12 = f2 + SegmentedProgressBar.a(this.a).barPaddingPx;
      if (f9 > 0.0F)
        SegmentedProgressBar.a(this.a).lowWater.draw(paramSpriteBatch, f11, f12, f9, f6);
    }
    while (f10 <= 0.0F);
    SegmentedProgressBar.a(this.a).highWater.draw(paramSpriteBatch, f11 + f9, f12, f10, f6);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.bm
 * JD-Core Version:    0.6.2
 */