package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;

public abstract interface Drawable
{
  public abstract void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);

  public abstract float getBottomHeight();

  public abstract float getLeftWidth();

  public abstract float getMinHeight();

  public abstract float getMinWidth();

  public abstract float getRightWidth();

  public abstract float getTopHeight();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.Drawable
 * JD-Core Version:    0.6.2
 */