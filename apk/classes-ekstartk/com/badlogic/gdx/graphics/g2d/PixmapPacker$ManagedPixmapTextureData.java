package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.glutils.PixmapTextureData;

public class PixmapPacker$ManagedPixmapTextureData extends PixmapTextureData
{
  public PixmapPacker$ManagedPixmapTextureData(PixmapPacker paramPixmapPacker, Pixmap paramPixmap, Pixmap.Format paramFormat, boolean paramBoolean)
  {
    super(paramPixmap, paramFormat, paramBoolean, false);
  }

  public boolean isManaged()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.PixmapPacker.ManagedPixmapTextureData
 * JD-Core Version:    0.6.2
 */