package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.utils.Scaling;

public class Image extends Widget
{
  private int align = 1;
  private Drawable drawable;
  private float imageHeight;
  private float imageWidth;
  private float imageX;
  private float imageY;
  private Scaling scaling;

  public Image()
  {
    this(null);
  }

  public Image(Texture paramTexture)
  {
    this(new TextureRegionDrawable(new TextureRegion(paramTexture)));
  }

  public Image(NinePatch paramNinePatch)
  {
    this(new NinePatchDrawable(paramNinePatch), Scaling.stretch, 1);
  }

  public Image(TextureRegion paramTextureRegion)
  {
    this(new TextureRegionDrawable(paramTextureRegion), Scaling.stretch, 1);
  }

  public Image(Skin paramSkin, String paramString)
  {
    this(paramSkin.getDrawable(paramString), Scaling.stretch, 1);
  }

  public Image(Drawable paramDrawable)
  {
    this(paramDrawable, Scaling.stretch, 1);
  }

  public Image(Drawable paramDrawable, Scaling paramScaling)
  {
    this(paramDrawable, paramScaling, 1);
  }

  public Image(Drawable paramDrawable, Scaling paramScaling, int paramInt)
  {
    setDrawable(paramDrawable);
    this.scaling = paramScaling;
    this.align = paramInt;
    setWidth(getPrefWidth());
    setHeight(getPrefHeight());
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    validate();
    Color localColor = getColor();
    paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
    float f1 = getX();
    float f2 = getY();
    float f3 = getScaleX();
    float f4 = getScaleY();
    TextureRegion localTextureRegion;
    float f5;
    if (this.drawable != null)
    {
      if (this.drawable.getClass() != TextureRegionDrawable.class)
        break label195;
      localTextureRegion = ((TextureRegionDrawable)this.drawable).getRegion();
      f5 = getRotation();
      if ((f3 == 1.0F) && (f4 == 1.0F) && (f5 == 0.0F))
        paramSpriteBatch.draw(localTextureRegion, f1 + this.imageX, f2 + this.imageY, this.imageWidth, this.imageHeight);
    }
    else
    {
      return;
    }
    paramSpriteBatch.draw(localTextureRegion, f1 + this.imageX, f2 + this.imageY, getOriginX() - this.imageX, getOriginY() - this.imageY, this.imageWidth, this.imageHeight, f3, f4, f5);
    return;
    label195: this.drawable.draw(paramSpriteBatch, f1 + this.imageX, f2 + this.imageY, f3 * this.imageWidth, f4 * this.imageHeight);
  }

  public Drawable getDrawable()
  {
    return this.drawable;
  }

  public float getImageHeight()
  {
    return this.imageHeight;
  }

  public float getImageWidth()
  {
    return this.imageWidth;
  }

  public float getImageX()
  {
    return this.imageX;
  }

  public float getImageY()
  {
    return this.imageY;
  }

  public float getMinHeight()
  {
    return 0.0F;
  }

  public float getMinWidth()
  {
    return 0.0F;
  }

  public float getPrefHeight()
  {
    if (this.drawable != null)
      return this.drawable.getMinHeight();
    return 0.0F;
  }

  public float getPrefWidth()
  {
    if (this.drawable != null)
      return this.drawable.getMinWidth();
    return 0.0F;
  }

  public void layout()
  {
    float f3;
    float f4;
    if (this.drawable != null)
    {
      float f1 = this.drawable.getMinWidth();
      float f2 = this.drawable.getMinHeight();
      f3 = getWidth();
      f4 = getHeight();
      Vector2 localVector2 = this.scaling.apply(f1, f2, f3, f4);
      this.imageWidth = localVector2.x;
      this.imageHeight = localVector2.y;
      if ((0x8 & this.align) == 0)
        break label108;
      this.imageX = 0.0F;
    }
    while ((0x2 & this.align) != 0)
    {
      this.imageY = ((int)(f4 - this.imageHeight));
      return;
      label108: if ((0x10 & this.align) != 0)
        this.imageX = ((int)(f3 - this.imageWidth));
      else
        this.imageX = ((int)(f3 / 2.0F - this.imageWidth / 2.0F));
    }
    if ((0x4 & this.align) != 0)
    {
      this.imageY = 0.0F;
      return;
    }
    this.imageY = ((int)(f4 / 2.0F - this.imageHeight / 2.0F));
  }

  public void setAlign(int paramInt)
  {
    this.align = paramInt;
  }

  public void setDrawable(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      if (this.drawable == paramDrawable)
        return;
      if ((getPrefWidth() != paramDrawable.getMinWidth()) || (getPrefHeight() != paramDrawable.getMinHeight()))
        invalidateHierarchy();
    }
    while (true)
    {
      this.drawable = paramDrawable;
      return;
      if ((getPrefWidth() != 0.0F) || (getPrefHeight() != 0.0F))
        invalidateHierarchy();
    }
  }

  public void setScaling(Scaling paramScaling)
  {
    if (paramScaling == null)
      throw new IllegalArgumentException("scaling cannot be null.");
    this.scaling = paramScaling;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Image
 * JD-Core Version:    0.6.2
 */