package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class AudibleTwoTextButton$TwoTextButtonStyle extends Button.ButtonStyle
{
  public Color checkedFontColor;
  public Color checkedFontColor2;
  public Color disabledFontColor;
  public Color disabledFontColor2;
  public Color downFontColor;
  public Color downFontColor2;
  public BitmapFont font;
  public BitmapFont font2;
  public Color fontColor;
  public Color fontColor2;
  public Color overFontColor;
  public Color overFontColor2;

  public AudibleTwoTextButton$TwoTextButtonStyle()
  {
  }

  public AudibleTwoTextButton$TwoTextButtonStyle(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3)
  {
    super(paramDrawable1, paramDrawable2, paramDrawable3);
  }

  public AudibleTwoTextButton$TwoTextButtonStyle(TwoTextButtonStyle paramTwoTextButtonStyle)
  {
    super(paramTwoTextButtonStyle);
    this.font = paramTwoTextButtonStyle.font;
    this.font2 = paramTwoTextButtonStyle.font2;
    if (paramTwoTextButtonStyle.downFontColor != null)
      this.downFontColor = new Color(paramTwoTextButtonStyle.downFontColor);
    if (paramTwoTextButtonStyle.fontColor != null)
      this.fontColor = new Color(paramTwoTextButtonStyle.fontColor);
    if (paramTwoTextButtonStyle.checkedFontColor != null)
      this.checkedFontColor = new Color(paramTwoTextButtonStyle.checkedFontColor);
    if (paramTwoTextButtonStyle.overFontColor != null)
      this.overFontColor = new Color(paramTwoTextButtonStyle.overFontColor);
    if (paramTwoTextButtonStyle.disabledFontColor != null)
      this.disabledFontColor = new Color(paramTwoTextButtonStyle.disabledFontColor);
    if (paramTwoTextButtonStyle.downFontColor2 != null)
      this.downFontColor2 = new Color(paramTwoTextButtonStyle.downFontColor2);
    if (paramTwoTextButtonStyle.fontColor2 != null)
      this.fontColor2 = new Color(paramTwoTextButtonStyle.fontColor2);
    if (paramTwoTextButtonStyle.checkedFontColor2 != null)
      this.checkedFontColor2 = new Color(paramTwoTextButtonStyle.checkedFontColor2);
    if (paramTwoTextButtonStyle.overFontColor2 != null)
      this.overFontColor2 = new Color(paramTwoTextButtonStyle.overFontColor2);
    if (paramTwoTextButtonStyle.disabledFontColor2 != null)
      this.disabledFontColor2 = new Color(paramTwoTextButtonStyle.disabledFontColor2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.AudibleTwoTextButton.TwoTextButtonStyle
 * JD-Core Version:    0.6.2
 */