package com.nianticproject.ingress.common.ui.widget;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Table;

public final class AudibleTwoTextButton extends d
{
  private final Label a;
  private final Label b;
  private AudibleTwoTextButton.TwoTextButtonStyle c;

  public AudibleTwoTextButton(String paramString1, String paramString2, AudibleTwoTextButton.TwoTextButtonStyle paramTwoTextButtonStyle)
  {
    super(paramTwoTextButtonStyle);
    this.c = paramTwoTextButtonStyle;
    this.a = new Label(paramString1, new Label.LabelStyle(paramTwoTextButtonStyle.font, paramTwoTextButtonStyle.fontColor));
    this.b = new Label(paramString2, new Label.LabelStyle(paramTwoTextButtonStyle.font2, paramTwoTextButtonStyle.fontColor2));
    this.a.setAlignment(1);
    this.b.setAlignment(1);
    Table localTable = new Table();
    localTable.add(this.a);
    localTable.add(this.b);
    add(localTable).i().n().f();
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    Color localColor1;
    Color localColor2;
    if ((isDisabled()) && (this.c.disabledFontColor != null))
    {
      localColor1 = this.c.disabledFontColor;
      localColor2 = this.c.disabledFontColor2;
    }
    while (true)
    {
      if (localColor1 != null)
        this.a.setColor(localColor1);
      if (localColor2 != null)
        this.b.setColor(localColor2);
      super.draw(paramSpriteBatch, paramFloat);
      return;
      if ((isPressed()) && (this.c.downFontColor != null))
      {
        localColor1 = this.c.downFontColor;
        localColor2 = this.c.downFontColor2;
      }
      else if ((isChecked()) && (this.c.checkedFontColor != null))
      {
        localColor1 = this.c.checkedFontColor;
        localColor2 = this.c.checkedFontColor2;
      }
      else if ((isOver()) && (this.c.overFontColor != null))
      {
        localColor1 = this.c.overFontColor;
        localColor2 = this.c.overFontColor2;
      }
      else
      {
        localColor1 = this.c.fontColor;
        localColor2 = this.c.fontColor2;
      }
    }
  }

  public final void setStyle(Button.ButtonStyle paramButtonStyle)
  {
    if (!(paramButtonStyle instanceof AudibleTwoTextButton.TwoTextButtonStyle))
      throw new IllegalArgumentException("style must be a TwoTextButtonStyle.");
    super.setStyle(paramButtonStyle);
    this.c = ((AudibleTwoTextButton.TwoTextButtonStyle)paramButtonStyle);
    if (this.a != null)
    {
      AudibleTwoTextButton.TwoTextButtonStyle localTwoTextButtonStyle2 = (AudibleTwoTextButton.TwoTextButtonStyle)paramButtonStyle;
      Label.LabelStyle localLabelStyle2 = this.a.getStyle();
      localLabelStyle2.font = localTwoTextButtonStyle2.font;
      localLabelStyle2.fontColor = localTwoTextButtonStyle2.fontColor;
      this.a.setStyle(localLabelStyle2);
    }
    if (this.b != null)
    {
      AudibleTwoTextButton.TwoTextButtonStyle localTwoTextButtonStyle1 = (AudibleTwoTextButton.TwoTextButtonStyle)paramButtonStyle;
      Label.LabelStyle localLabelStyle1 = this.b.getStyle();
      localLabelStyle1.font = localTwoTextButtonStyle1.font2;
      localLabelStyle1.fontColor = localTwoTextButtonStyle1.fontColor2;
      this.b.setStyle(localLabelStyle1);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.AudibleTwoTextButton
 * JD-Core Version:    0.6.2
 */