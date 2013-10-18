package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class Button$ButtonStyle
{
  public Drawable checked;
  public Drawable disabled;
  public Drawable down;
  public Drawable over;
  public float pressedOffsetX;
  public float pressedOffsetY;
  public float unpressedOffsetX;
  public float unpressedOffsetY;
  public Drawable up;

  public Button$ButtonStyle()
  {
  }

  public Button$ButtonStyle(ButtonStyle paramButtonStyle)
  {
    this.down = paramButtonStyle.down;
    this.up = paramButtonStyle.up;
    this.checked = paramButtonStyle.checked;
    this.over = paramButtonStyle.over;
    this.disabled = paramButtonStyle.disabled;
    this.pressedOffsetX = paramButtonStyle.pressedOffsetX;
    this.pressedOffsetY = paramButtonStyle.pressedOffsetY;
    this.unpressedOffsetX = paramButtonStyle.unpressedOffsetX;
    this.unpressedOffsetY = paramButtonStyle.unpressedOffsetY;
  }

  public Button$ButtonStyle(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3)
  {
    this.down = paramDrawable2;
    this.up = paramDrawable1;
    this.checked = paramDrawable3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle
 * JD-Core Version:    0.6.2
 */