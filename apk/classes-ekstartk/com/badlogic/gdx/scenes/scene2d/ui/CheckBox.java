package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class CheckBox extends TextButton
{
  private Image image;
  private CheckBox.CheckBoxStyle style;

  public CheckBox(String paramString, CheckBox.CheckBoxStyle paramCheckBoxStyle)
  {
    super(paramString, paramCheckBoxStyle);
    clear();
    Image localImage = new Image(paramCheckBoxStyle.checkboxOff);
    this.image = localImage;
    add(localImage);
    Label localLabel = getLabel();
    add(localLabel);
    localLabel.setAlignment(8);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public CheckBox(String paramString, Skin paramSkin)
  {
    this(paramString, (CheckBox.CheckBoxStyle)paramSkin.get(CheckBox.CheckBoxStyle.class));
  }

  public CheckBox(String paramString1, Skin paramSkin, String paramString2)
  {
    this(paramString1, (CheckBox.CheckBoxStyle)paramSkin.get(paramString2, CheckBox.CheckBoxStyle.class));
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Image localImage = this.image;
    if (this.isChecked);
    for (Drawable localDrawable = this.style.checkboxOn; ; localDrawable = this.style.checkboxOff)
    {
      localImage.setDrawable(localDrawable);
      super.draw(paramSpriteBatch, paramFloat);
      return;
    }
  }

  public Image getImage()
  {
    return this.image;
  }

  public CheckBox.CheckBoxStyle getStyle()
  {
    return this.style;
  }

  public void setStyle(Button.ButtonStyle paramButtonStyle)
  {
    if (!(paramButtonStyle instanceof CheckBox.CheckBoxStyle))
      throw new IllegalArgumentException("style must be a CheckBoxStyle.");
    super.setStyle(paramButtonStyle);
    this.style = ((CheckBox.CheckBoxStyle)paramButtonStyle);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.CheckBox
 * JD-Core Version:    0.6.2
 */