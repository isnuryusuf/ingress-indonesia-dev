package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class Label$LabelStyle
{
  public Drawable background;
  public BitmapFont font;
  public Color fontColor;

  public Label$LabelStyle()
  {
  }

  public Label$LabelStyle(BitmapFont paramBitmapFont, Color paramColor)
  {
    this.font = paramBitmapFont;
    this.fontColor = paramColor;
  }

  public Label$LabelStyle(LabelStyle paramLabelStyle)
  {
    this.font = paramLabelStyle.font;
    if (paramLabelStyle.fontColor != null)
      this.fontColor = new Color(paramLabelStyle.fontColor);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle
 * JD-Core Version:    0.6.2
 */