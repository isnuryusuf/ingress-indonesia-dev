package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.TextureData.TextureDataType;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.ByteBuffer;

public class ETC1TextureData
  implements TextureData
{
  ETC1.ETC1Data data;
  FileHandle file;
  int height = 0;
  boolean isPrepared = false;
  boolean useMipMaps;
  int width = 0;

  public ETC1TextureData(FileHandle paramFileHandle)
  {
    this(paramFileHandle, false);
  }

  public ETC1TextureData(FileHandle paramFileHandle, boolean paramBoolean)
  {
    this.file = paramFileHandle;
    this.useMipMaps = paramBoolean;
  }

  public ETC1TextureData(ETC1.ETC1Data paramETC1Data, boolean paramBoolean)
  {
    this.data = paramETC1Data;
    this.useMipMaps = paramBoolean;
  }

  public void consumeCompressedData()
  {
    if (!this.isPrepared)
      throw new GdxRuntimeException("Call prepare() before calling consumeCompressedData()");
    if ((!Gdx.graphics.supportsExtension("GL_OES_compressed_ETC1_RGB8_texture")) || (!Gdx.graphics.isGL20Available()))
    {
      Pixmap localPixmap = ETC1.decodeImage(this.data, Pixmap.Format.RGB565);
      Gdx.gl.glTexImage2D(3553, 0, localPixmap.getGLInternalFormat(), localPixmap.getWidth(), localPixmap.getHeight(), 0, localPixmap.getGLFormat(), localPixmap.getGLType(), localPixmap.getPixels());
      if (this.useMipMaps)
        MipMapGenerator.generateMipMap(localPixmap, localPixmap.getWidth(), localPixmap.getHeight(), false);
      localPixmap.dispose();
      this.useMipMaps = false;
    }
    while (true)
    {
      this.data.dispose();
      this.data = null;
      this.isPrepared = false;
      return;
      Gdx.gl.glCompressedTexImage2D(3553, 0, ETC1.ETC1_RGB8_OES, this.width, this.height, 0, this.data.compressedData.capacity() - this.data.dataOffset, this.data.compressedData);
      if (useMipMaps())
        Gdx.gl20.glGenerateMipmap(3553);
    }
  }

  public Pixmap consumePixmap()
  {
    throw new GdxRuntimeException("This TextureData implementation does not return a Pixmap");
  }

  public boolean disposePixmap()
  {
    throw new GdxRuntimeException("This TextureData implementation does not return a Pixmap");
  }

  public Pixmap.Format getFormat()
  {
    return Pixmap.Format.RGB565;
  }

  public int getHeight()
  {
    return this.height;
  }

  public TextureData.TextureDataType getType()
  {
    return TextureData.TextureDataType.Compressed;
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
    if ((this.file == null) && (this.data == null))
      throw new GdxRuntimeException("Can only load once from ETC1Data");
    if (this.file != null)
      this.data = new ETC1.ETC1Data(this.file);
    this.width = this.data.width;
    this.height = this.data.height;
    this.isPrepared = true;
  }

  public boolean useMipMaps()
  {
    return this.useMipMaps;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ETC1TextureData
 * JD-Core Version:    0.6.2
 */