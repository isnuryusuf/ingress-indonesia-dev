package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.TextureData.TextureDataType;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class PixmapTextureData
  implements TextureData
{
  final boolean disposePixmap;
  final Pixmap.Format format;
  final Pixmap pixmap;
  final boolean useMipMaps;

  public PixmapTextureData(Pixmap paramPixmap, Pixmap.Format paramFormat, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.pixmap = paramPixmap;
    if (paramFormat == null)
      paramFormat = paramPixmap.getFormat();
    this.format = paramFormat;
    this.useMipMaps = paramBoolean1;
    this.disposePixmap = paramBoolean2;
  }

  public void consumeCompressedData()
  {
    throw new GdxRuntimeException("This TextureData implementation does not upload data itself");
  }

  public Pixmap consumePixmap()
  {
    return this.pixmap;
  }

  public boolean disposePixmap()
  {
    return this.disposePixmap;
  }

  public Pixmap.Format getFormat()
  {
    return this.format;
  }

  public int getHeight()
  {
    return this.pixmap.getHeight();
  }

  public TextureData.TextureDataType getType()
  {
    return TextureData.TextureDataType.Pixmap;
  }

  public int getWidth()
  {
    return this.pixmap.getWidth();
  }

  public boolean isManaged()
  {
    return false;
  }

  public boolean isPrepared()
  {
    return true;
  }

  public void prepare()
  {
    throw new GdxRuntimeException("prepare() must not be called on a PixmapTextureData instance as it is already prepared.");
  }

  public boolean useMipMaps()
  {
    return this.useMipMaps;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.PixmapTextureData
 * JD-Core Version:    0.6.2
 */