package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.TextureData.TextureDataType;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;

public class FileTextureData
  implements TextureData
{
  public static boolean copyToPOT;
  final FileHandle file;
  Pixmap.Format format;
  int height = 0;
  boolean isPrepared = false;
  Pixmap pixmap;
  boolean useMipMaps;
  int width = 0;

  public FileTextureData(FileHandle paramFileHandle, Pixmap paramPixmap, Pixmap.Format paramFormat, boolean paramBoolean)
  {
    this.file = paramFileHandle;
    this.pixmap = paramPixmap;
    this.format = paramFormat;
    this.useMipMaps = paramBoolean;
    if (this.pixmap != null)
    {
      this.pixmap = ensurePot(this.pixmap);
      this.width = this.pixmap.getWidth();
      this.height = this.pixmap.getHeight();
      if (paramFormat == null)
        this.format = this.pixmap.getFormat();
    }
  }

  private Pixmap ensurePot(Pixmap paramPixmap)
  {
    if ((Gdx.gl20 == null) && (copyToPOT))
    {
      int i = paramPixmap.getWidth();
      int j = paramPixmap.getHeight();
      int k = MathUtils.nextPowerOfTwo(i);
      int m = MathUtils.nextPowerOfTwo(j);
      if ((i != k) || (j != m))
      {
        Pixmap localPixmap = new Pixmap(k, m, paramPixmap.getFormat());
        localPixmap.drawPixmap(paramPixmap, 0, 0, 0, 0, i, j);
        paramPixmap.dispose();
        return localPixmap;
      }
    }
    return paramPixmap;
  }

  public void consumeCompressedData()
  {
    throw new GdxRuntimeException("This TextureData implementation does not upload data itself");
  }

  public Pixmap consumePixmap()
  {
    if (!this.isPrepared)
      throw new GdxRuntimeException("Call prepare() before calling getPixmap()");
    this.isPrepared = false;
    Pixmap localPixmap = this.pixmap;
    this.pixmap = null;
    return localPixmap;
  }

  public boolean disposePixmap()
  {
    return true;
  }

  public FileHandle getFileHandle()
  {
    return this.file;
  }

  public Pixmap.Format getFormat()
  {
    return this.format;
  }

  public int getHeight()
  {
    return this.height;
  }

  public TextureData.TextureDataType getType()
  {
    return TextureData.TextureDataType.Pixmap;
  }

  public int getWidth()
  {
    return this.width;
  }

  public boolean isManaged()
  {
    return true;
  }

  public boolean isPrepared()
  {
    return this.isPrepared;
  }

  public void prepare()
  {
    if (this.isPrepared)
      throw new GdxRuntimeException("Already prepared");
    if (this.pixmap == null)
      if (!this.file.extension().equals("cim"))
        break label96;
    label96: for (this.pixmap = PixmapIO.readCIM(this.file); ; this.pixmap = ensurePot(new Pixmap(this.file)))
    {
      this.width = this.pixmap.getWidth();
      this.height = this.pixmap.getHeight();
      if (this.format == null)
        this.format = this.pixmap.getFormat();
      this.isPrepared = true;
      return;
    }
  }

  public boolean useMipMaps()
  {
    return this.useMipMaps;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.FileTextureData
 * JD-Core Version:    0.6.2
 */