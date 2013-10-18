package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.ui.Padding;

public class NinePatchDrawable extends EmptyDrawable
{
  private NinePatch patch;

  public NinePatchDrawable()
  {
  }

  public NinePatchDrawable(NinePatch paramNinePatch)
  {
    setPatch(paramNinePatch);
  }

  public NinePatchDrawable(NinePatchDrawable paramNinePatchDrawable)
  {
    super(paramNinePatchDrawable);
    setPatch(paramNinePatchDrawable.patch);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.patch.draw(paramSpriteBatch, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public Padding getPadding()
  {
    return this.patch.getPadding();
  }

  public NinePatch getPatch()
  {
    return this.patch;
  }

  public void setPatch(NinePatch paramNinePatch)
  {
    this.patch = paramNinePatch;
    setMinWidth(paramNinePatch.getTotalWidth());
    setMinHeight(paramNinePatch.getTotalHeight());
    setTopHeight(paramNinePatch.getTopHeight());
    setRightWidth(paramNinePatch.getRightWidth());
    setBottomHeight(paramNinePatch.getBottomHeight());
    setLeftWidth(paramNinePatch.getLeftWidth());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable
 * JD-Core Version:    0.6.2
 */