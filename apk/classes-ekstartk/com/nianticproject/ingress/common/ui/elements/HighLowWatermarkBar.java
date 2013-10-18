package com.nianticproject.ingress.common.ui.elements;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;

public final class HighLowWatermarkBar extends Table
{
  private final u a;
  private final HighLowWatermarkBar.Style b;
  private float c;
  private float d;

  public HighLowWatermarkBar(HighLowWatermarkBar.Style paramStyle)
  {
    this.b = ((HighLowWatermarkBar.Style)an.a(paramStyle, "null ProgressBarStyle"));
    this.a = new u(this, (byte)0);
    this.d = 0.0F;
    this.c = 0.0F;
    add(new Image(paramStyle.empty)).o().f().i();
  }

  public final u a()
  {
    return this.a;
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    this.a.a(paramFloat);
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    if ((!isVisible()) || (paramFloat * getColor().a == 0.0F));
    float f2;
    float f3;
    float f4;
    float f5;
    float f6;
    do
    {
      return;
      super.draw(paramSpriteBatch, paramFloat);
      if (this.b.border != null)
        this.b.border.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
      float f1 = getWidth() - 2.0F * this.b.barPadding;
      f2 = getHeight() - 2.0F * this.b.barPadding;
      f3 = f1 * this.d;
      f4 = f1 * (this.c - this.d);
      f5 = getX() + this.b.barPadding;
      f6 = getY() + this.b.barPadding;
      if (f3 > 0.0F)
        this.b.lowWater.draw(paramSpriteBatch, f5, f6, f3, f2);
    }
    while (f4 <= 0.0F);
    this.b.highWater.draw(paramSpriteBatch, f5 + f3, f6, f4, f2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.HighLowWatermarkBar
 * JD-Core Version:    0.6.2
 */