package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;

public class f extends TextButton
{
  public f(Skin paramSkin)
  {
    super("", paramSkin);
    d.a(this);
  }

  public f(String paramString, Skin paramSkin)
  {
    super(paramString, (TextButton.TextButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class));
    d.a(this);
  }

  public f(String paramString, TextButton.TextButtonStyle paramTextButtonStyle)
  {
    super(paramString, paramTextButtonStyle);
    d.a(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.f
 * JD-Core Version:    0.6.2
 */