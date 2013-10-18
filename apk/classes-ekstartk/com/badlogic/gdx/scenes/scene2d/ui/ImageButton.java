package com.badlogic.gdx.scenes.scene2d.ui;

import com.a.a.c;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Scaling;

public class ImageButton extends Button
{
  private final Image image = new Image();
  private ImageButton.ImageButtonStyle style;

  public ImageButton(ImageButton.ImageButtonStyle paramImageButtonStyle)
  {
    super(paramImageButtonStyle);
    this.image.setScaling(Scaling.fit);
    add(this.image);
    setStyle(paramImageButtonStyle);
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public ImageButton(Skin paramSkin)
  {
    this((ImageButton.ImageButtonStyle)paramSkin.get(ImageButton.ImageButtonStyle.class));
  }

  public ImageButton(Skin paramSkin, String paramString)
  {
    this((ImageButton.ImageButtonStyle)paramSkin.get(paramString, ImageButton.ImageButtonStyle.class));
  }

  public ImageButton(Drawable paramDrawable)
  {
    this(new ImageButton.ImageButtonStyle(null, null, null, paramDrawable, null, null));
  }

  public ImageButton(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this(new ImageButton.ImageButtonStyle(null, null, null, paramDrawable1, paramDrawable2, null));
  }

  public ImageButton(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3)
  {
    this(new ImageButton.ImageButtonStyle(null, null, null, paramDrawable1, paramDrawable2, paramDrawable3));
  }

  private void updateImage()
  {
    if ((isPressed()) && (this.style.imageDown != null))
      this.image.setDrawable(this.style.imageDown);
    do
    {
      return;
      if ((this.isChecked) && (this.style.imageChecked != null))
      {
        this.image.setDrawable(this.style.imageChecked);
        return;
      }
    }
    while (this.style.imageUp == null);
    this.image.setDrawable(this.style.imageUp);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    updateImage();
    super.draw(paramSpriteBatch, paramFloat);
  }

  public Image getImage()
  {
    return this.image;
  }

  public c getImageCell()
  {
    return getCell(this.image);
  }

  public ImageButton.ImageButtonStyle getStyle()
  {
    return this.style;
  }

  public void setStyle(Button.ButtonStyle paramButtonStyle)
  {
    if (!(paramButtonStyle instanceof ImageButton.ImageButtonStyle))
      throw new IllegalArgumentException("style must be an ImageButtonStyle.");
    super.setStyle(paramButtonStyle);
    this.style = ((ImageButton.ImageButtonStyle)paramButtonStyle);
    if (this.image != null)
      updateImage();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.ImageButton
 * JD-Core Version:    0.6.2
 */