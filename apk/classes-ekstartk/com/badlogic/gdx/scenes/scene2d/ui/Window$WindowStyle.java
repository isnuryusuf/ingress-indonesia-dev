package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class Window$WindowStyle
{
  public Drawable background;
  public BitmapFont titleFont;
  public Color titleFontColor = new Color(1.0F, 1.0F, 1.0F, 1.0F);

  public Window$WindowStyle()
  {
  }

  public Window$WindowStyle(BitmapFont paramBitmapFont, Color paramColor, Drawable paramDrawable)
  {
    this.background = paramDrawable;
    this.titleFont = paramBitmapFont;
    this.titleFontColor.set(paramColor);
  }

  public Window$WindowStyle(WindowStyle paramWindowStyle)
  {
    this.background = paramWindowStyle.background;
    this.titleFont = paramWindowStyle.titleFont;
    this.titleFontColor = new Color(paramWindowStyle.titleFontColor);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Window.WindowStyle
 * JD-Core Version:    0.6.2
 */