package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class Touchpad$TouchpadStyle
{
  public Drawable background;
  public Drawable knob;

  public Touchpad$TouchpadStyle()
  {
  }

  public Touchpad$TouchpadStyle(TouchpadStyle paramTouchpadStyle)
  {
    this.background = paramTouchpadStyle.background;
    this.knob = paramTouchpadStyle.knob;
  }

  public Touchpad$TouchpadStyle(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this.background = paramDrawable1;
    this.knob = paramDrawable2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Touchpad.TouchpadStyle
 * JD-Core Version:    0.6.2
 */