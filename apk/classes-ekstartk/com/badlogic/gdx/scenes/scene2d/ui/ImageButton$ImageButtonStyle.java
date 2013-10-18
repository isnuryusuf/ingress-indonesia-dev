package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.scenes.scene2d.utils.Drawable;

public class ImageButton$ImageButtonStyle extends Button.ButtonStyle
{
  public Drawable imageChecked;
  public Drawable imageDown;
  public Drawable imageUp;

  public ImageButton$ImageButtonStyle()
  {
  }

  public ImageButton$ImageButtonStyle(Button.ButtonStyle paramButtonStyle)
  {
    super(paramButtonStyle);
  }

  public ImageButton$ImageButtonStyle(ImageButtonStyle paramImageButtonStyle)
  {
    super(paramImageButtonStyle);
    this.imageUp = paramImageButtonStyle.imageUp;
    this.imageDown = paramImageButtonStyle.imageDown;
    this.imageChecked = paramImageButtonStyle.imageChecked;
  }

  public ImageButton$ImageButtonStyle(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4, Drawable paramDrawable5, Drawable paramDrawable6)
  {
    super(paramDrawable1, paramDrawable2, paramDrawable3);
    this.imageUp = paramDrawable4;
    this.imageDown = paramDrawable5;
    this.imageChecked = paramDrawable6;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.ImageButton.ImageButtonStyle
 * JD-Core Version:    0.6.2
 */