package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class TextButton$TextButtonStyle extends Button.ButtonStyle
{
  public Color checkedFontColor;
  public Color disabledFontColor;
  public Color downFontColor;
  public BitmapFont font;
  public Color fontColor;
  public Color overFontColor;

  public TextButton$TextButtonStyle()
  {
  }

  public TextButton$TextButtonStyle(TextButtonStyle paramTextButtonStyle)
  {
    super(paramTextButtonStyle);
    this.font = paramTextButtonStyle.font;
    if (paramTextButtonStyle.downFontColor != null)
      this.downFontColor = new Color(paramTextButtonStyle.downFontColor);
    if (paramTextButtonStyle.fontColor != null)
      this.fontColor = new Color(paramTextButtonStyle.fontColor);
    if (paramTextButtonStyle.checkedFontColor != null)
      this.checkedFontColor = new Color(paramTextButtonStyle.checkedFontColor);
    if (paramTextButtonStyle.overFontColor != null)
      this.overFontColor = new Color(paramTextButtonStyle.overFontColor);
    if (paramTextButtonStyle.disabledFontColor != null)
      this.disabledFontColor = new Color(paramTextButtonStyle.disabledFontColor);
  }

  public TextButton$TextButtonStyle(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3)
  {
    super(paramDrawable1, paramDrawable2, paramDrawable3);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle
 * JD-Core Version:    0.6.2
 */