package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class CheckBox$CheckBoxStyle extends TextButton.TextButtonStyle
{
  public Drawable checkboxOff;
  public Drawable checkboxOn;

  public CheckBox$CheckBoxStyle()
  {
  }

  public CheckBox$CheckBoxStyle(CheckBoxStyle paramCheckBoxStyle)
  {
    this.checkboxOff = paramCheckBoxStyle.checkboxOff;
    this.checkboxOn = paramCheckBoxStyle.checkboxOn;
    this.font = paramCheckBoxStyle.font;
    this.fontColor = new Color(paramCheckBoxStyle.fontColor);
  }

  public CheckBox$CheckBoxStyle(Drawable paramDrawable1, Drawable paramDrawable2, BitmapFont paramBitmapFont, Color paramColor)
  {
    this.checkboxOff = paramDrawable1;
    this.checkboxOn = paramDrawable2;
    this.font = paramBitmapFont;
    this.fontColor = paramColor;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.CheckBox.CheckBoxStyle
 * JD-Core Version:    0.6.2
 */