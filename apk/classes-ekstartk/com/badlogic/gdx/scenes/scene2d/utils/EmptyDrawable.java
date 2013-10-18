package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;

public class EmptyDrawable
  implements Drawable
{
  private float bottomHeight;
  private float leftWidth;
  private float minHeight;
  private float minWidth;
  private float rightWidth;
  private float topHeight;

  public EmptyDrawable()
  {
  }

  public EmptyDrawable(Drawable paramDrawable)
  {
    this.leftWidth = paramDrawable.getLeftWidth();
    this.rightWidth = paramDrawable.getRightWidth();
    this.topHeight = paramDrawable.getTopHeight();
    this.bottomHeight = paramDrawable.getBottomHeight();
    this.minWidth = paramDrawable.getMinWidth();
    this.minHeight = paramDrawable.getMinHeight();
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
  }

  public float getBottomHeight()
  {
    return this.bottomHeight;
  }

  public float getLeftWidth()
  {
    return this.leftWidth;
  }

  public float getMinHeight()
  {
    return this.minHeight;
  }

  public float getMinWidth()
  {
    return this.minWidth;
  }

  public float getRightWidth()
  {
    return this.rightWidth;
  }

  public float getTopHeight()
  {
    return this.topHeight;
  }

  public void setBottomHeight(float paramFloat)
  {
    this.bottomHeight = paramFloat;
  }

  public void setLeftWidth(float paramFloat)
  {
    this.leftWidth = paramFloat;
  }

  public void setMinHeight(float paramFloat)
  {
    this.minHeight = paramFloat;
  }

  public void setMinWidth(float paramFloat)
  {
    this.minWidth = paramFloat;
  }

  public void setRightWidth(float paramFloat)
  {
    this.rightWidth = paramFloat;
  }

  public void setTopHeight(float paramFloat)
  {
    this.topHeight = paramFloat;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.EmptyDrawable
 * JD-Core Version:    0.6.2
 */