package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;

public class ActionButton$ActionButtonStyle
{
  public Button.ButtonStyle disabledButtonStyle;
  public Button.ButtonStyle enabledButtonStyle;
  public Label.LabelStyle errorLabelStyle;
  public Label.LabelStyle mainDisabledLabelStyle;
  public Label.LabelStyle mainLabelStyle;
  public Label.LabelStyle subDisabledLabelStyle;
  public Label.LabelStyle subLabelStyle;

  public ActionButton$ActionButtonStyle()
  {
  }

  public ActionButton$ActionButtonStyle(Label.LabelStyle paramLabelStyle1, Label.LabelStyle paramLabelStyle2, Label.LabelStyle paramLabelStyle3, Label.LabelStyle paramLabelStyle4, Label.LabelStyle paramLabelStyle5, Color paramColor, Button.ButtonStyle paramButtonStyle1, Button.ButtonStyle paramButtonStyle2)
  {
    this.mainLabelStyle = paramLabelStyle1;
    this.subLabelStyle = paramLabelStyle2;
    this.mainDisabledLabelStyle = paramLabelStyle3;
    this.subDisabledLabelStyle = paramLabelStyle4;
    this.errorLabelStyle = paramLabelStyle5;
    this.enabledButtonStyle = paramButtonStyle1;
    this.disabledButtonStyle = paramButtonStyle2;
  }

  public ActionButtonStyle setScale(float paramFloat)
  {
    if (this.mainLabelStyle != null)
      this.mainLabelStyle.font.setScale(paramFloat);
    if (this.mainDisabledLabelStyle != null)
      this.mainDisabledLabelStyle.font.setScale(paramFloat);
    if (this.subLabelStyle != null)
      this.subLabelStyle.font.setScale(paramFloat);
    if (this.subDisabledLabelStyle != null)
      this.subDisabledLabelStyle.font.setScale(paramFloat);
    if (this.errorLabelStyle != null)
      this.errorLabelStyle.font.setScale(paramFloat);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ActionButton.ActionButtonStyle
 * JD-Core Version:    0.6.2
 */