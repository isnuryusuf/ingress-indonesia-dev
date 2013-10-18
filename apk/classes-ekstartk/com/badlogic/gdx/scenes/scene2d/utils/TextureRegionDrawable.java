package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;

public class TextureRegionDrawable extends EmptyDrawable
{
  private TextureRegion region;

  public TextureRegionDrawable()
  {
  }

  public TextureRegionDrawable(TextureRegion paramTextureRegion)
  {
    setRegion(paramTextureRegion);
  }

  public TextureRegionDrawable(TextureRegionDrawable paramTextureRegionDrawable)
  {
    super(paramTextureRegionDrawable);
    setRegion(paramTextureRegionDrawable.region);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramSpriteBatch.draw(this.region, paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public TextureRegion getRegion()
  {
    return this.region;
  }

  public void setRegion(TextureRegion paramTextureRegion)
  {
    this.region = paramTextureRegion;
    setMinWidth(paramTextureRegion.getRegionWidth());
    setMinHeight(paramTextureRegion.getRegionHeight());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable
 * JD-Core Version:    0.6.2
 */