package com.badlogic.gdx.scenes.scene2d.ui;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

public class TextButton extends Button
{
  private final Label label;
  private TextButton.TextButtonStyle style;

  public TextButton(String paramString, Skin paramSkin)
  {
    this(paramString, (TextButton.TextButtonStyle)paramSkin.get(TextButton.TextButtonStyle.class));
  }

  public TextButton(String paramString1, Skin paramSkin, String paramString2)
  {
    this(paramString1, (TextButton.TextButtonStyle)paramSkin.get(paramString2, TextButton.TextButtonStyle.class));
  }

  public TextButton(String paramString, TextButton.TextButtonStyle paramTextButtonStyle)
  {
    super(paramTextButtonStyle);
    this.style = paramTextButtonStyle;
    this.label = new Label(paramString, new Label.LabelStyle(paramTextButtonStyle.font, paramTextButtonStyle.fontColor));
    this.label.setAlignment(1);
    add(this.label).n().f();
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Color localColor;
    if ((this.isDisabled) && (this.style.disabledFontColor != null))
      localColor = this.style.disabledFontColor;
    while (true)
    {
      if (localColor != null)
        this.label.getStyle().fontColor = localColor;
      super.draw(paramSpriteBatch, paramFloat);
      return;
      if ((isPressed()) && (this.style.downFontColor != null))
        localColor = this.style.downFontColor;
      else if ((this.isChecked) && (this.style.checkedFontColor != null))
        localColor = this.style.checkedFontColor;
      else if ((isOver()) && (this.style.overFontColor != null))
        localColor = this.style.overFontColor;
      else
        localColor = this.style.fontColor;
    }
  }

  public Label getLabel()
  {
    return this.label;
  }

  public c getLabelCell()
  {
    return getCell(this.label);
  }

  public TextButton.TextButtonStyle getStyle()
  {
    return this.style;
  }

  public CharSequence getText()
  {
    return this.label.getText();
  }

  public void setStyle(Button.ButtonStyle paramButtonStyle)
  {
    if (!(paramButtonStyle instanceof TextButton.TextButtonStyle))
      throw new IllegalArgumentException("style must be a TextButtonStyle.");
    super.setStyle(paramButtonStyle);
    this.style = ((TextButton.TextButtonStyle)paramButtonStyle);
    if (this.label != null)
    {
      TextButton.TextButtonStyle localTextButtonStyle = (TextButton.TextButtonStyle)paramButtonStyle;
      Label.LabelStyle localLabelStyle = this.label.getStyle();
      localLabelStyle.font = localTextButtonStyle.font;
      localLabelStyle.fontColor = localTextButtonStyle.fontColor;
      this.label.setStyle(localLabelStyle);
    }
  }

  public void setText(String paramString)
  {
    this.label.setText(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.TextButton
 * JD-Core Version:    0.6.2
 */