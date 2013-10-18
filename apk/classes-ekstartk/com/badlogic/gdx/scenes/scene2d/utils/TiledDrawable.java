package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;

public class TiledDrawable extends TextureRegionDrawable
{
  public TiledDrawable()
  {
  }

  public TiledDrawable(TextureRegion paramTextureRegion)
  {
    super(paramTextureRegion);
  }

  public TiledDrawable(TextureRegionDrawable paramTextureRegionDrawable)
  {
    super(paramTextureRegionDrawable);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    TextureRegion localTextureRegion = getRegion();
    float f1 = localTextureRegion.getRegionWidth();
    float f2 = localTextureRegion.getRegionWidth();
    float f3 = paramFloat3 % f1;
    float f4 = paramFloat4 % f2;
    float f5 = paramFloat1 + paramFloat3 - f3;
    float f6 = paramFloat2 + paramFloat4 - f4;
    float f7 = paramFloat2;
    float f8 = paramFloat1;
    while (f8 < f5)
    {
      for (float f17 = paramFloat2; f17 < f6; f17 += f2)
        paramSpriteBatch.draw(localTextureRegion, f8, f17, f1, f2);
      f8 += f1;
      f7 = f17;
    }
    Texture localTexture = localTextureRegion.getTexture();
    float f9 = localTextureRegion.getU();
    float f10 = localTextureRegion.getV2();
    if (f3 > 0.0F)
    {
      float f14 = f9 + f3 / localTexture.getWidth();
      float f15 = localTextureRegion.getV();
      for (f7 = paramFloat2; f7 < f6; f7 += f2)
        paramSpriteBatch.draw(localTexture, f8, f7, f3, f2, f9, f10, f14, f15);
      if (f4 > 0.0F)
      {
        float f16 = f10 - f4 / localTexture.getHeight();
        paramSpriteBatch.draw(localTexture, f8, f7, f3, f4, f9, f10, f14, f16);
      }
    }
    if (f4 > 0.0F)
    {
      float f11 = localTextureRegion.getU2();
      float f12 = f10 - f4 / localTexture.getHeight();
      for (float f13 = paramFloat1; f13 < f5; f13 += f1)
        paramSpriteBatch.draw(localTexture, f13, f7, f1, f4, f9, f10, f11, f12);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.TiledDrawable
 * JD-Core Version:    0.6.2
 */