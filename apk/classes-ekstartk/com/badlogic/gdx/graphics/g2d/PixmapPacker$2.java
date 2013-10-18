package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.TextureData;

class PixmapPacker$2 extends Texture
{
  PixmapPacker$2(PixmapPacker paramPixmapPacker, TextureData paramTextureData)
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
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PixmapPacker.2
 * JD-Core Version:    0.6.2
 */