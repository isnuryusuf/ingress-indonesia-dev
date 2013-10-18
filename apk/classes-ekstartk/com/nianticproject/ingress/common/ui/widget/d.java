package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class d extends Button
{
  public d(Actor paramActor, Button.ButtonStyle paramButtonStyle)
  {
    super(paramActor, paramButtonStyle);
    a(this);
  }

  public d(Button.ButtonStyle paramButtonStyle)
  {
    super(paramButtonStyle);
    a(this);
  }

  public d(Skin paramSkin, String paramString)
  {
    super(paramSkin, paramString);
    a(this);
  }

  public d(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    super(paramDrawable1, paramDrawable2);
    a(this);
  }

  public d(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3)
  {
    super(paramDrawable1, paramDrawable2, paramDrawable3);
    a(this);
  }

  public static Button a(Button paramButton)
  {
    paramButton.addListener(new e());
    return paramButton;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.d
 * JD-Core Version:    0.6.2
 */