package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.TextureData;

class PixmapPacker$1 extends Texture
{
  PixmapPacker$1(PixmapPacker paramPixmapPacker, TextureData paramTextureData)
  {
    super(paramTextureData);
  }

  public void dispose()
  {
    super.dispose();
    getTextureData().consumePixmap().dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PixmapPacker.1
 * JD-Core Version:    0.6.2
 */