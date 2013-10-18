package com.badlogic.gdx.graphics;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.Gdx2DPixmap;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.IOException;
import java.nio.ByteBuffer;

public class Pixmap
  implements Disposable
{
  private static Pixmap.Blending blending = Pixmap.Blending.SourceOver;
  int color = 0;
  private boolean disposed;
  final Gdx2DPixmap pixmap;

  public Pixmap(int paramInt1, int paramInt2, Pixmap.Format paramFormat)
  {
    this.pixmap = new Gdx2DPixmap(paramInt1, paramInt2, Pixmap.Format.toGdx2DPixmapFormat(paramFormat));
    setColor(0.0F, 0.0F, 0.0F, 0.0F);
    fill();
  }

  public Pixmap(FileHandle paramFileHandle)
  {
    try
    {
      byte[] arrayOfByte = paramFileHandle.readBytes();
      this.pixmap = new Gdx2DPixmap(arrayOfByte, 0, arrayOfByte.length, 0);
      return;
    }
    catch (Exception localException)
    {
      throw new GdxRuntimeException("Couldn't load file: " + paramFileHandle, localException);
    }
  }

  public Pixmap(Gdx2DPixmap paramGdx2DPixmap)
  {
    this.pixmap = paramGdx2DPixmap;
  }

  public Pixmap(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.pixmap = new Gdx2DPixmap(paramArrayOfByte, paramInt1, paramInt2, 0);
      return;
    }
    catch (IOException localIOException)
    {
      throw new GdxRuntimeException("Couldn't load pixmap from image data", localIOException);
    }
  }

  public static Pixmap.Blending getBlending()
  {
    return blending;
  }

  public static void setBlending(Pixmap.Blending paramBlending)
  {
    blending = paramBlending;
    if (paramBlending == Pixmap.Blending.None);
    for (int i = 0; ; i = 1)
    {
      Gdx2DPixmap.setBlend(i);
      return;
    }
  }

  public static void setFilter(Pixmap.Filter paramFilter)
  {
    if (paramFilter == Pixmap.Filter.NearestNeighbour);
    for (int i = 0; ; i = 1)
    {
      Gdx2DPixmap.setScale(i);
      return;
    }
  }

  public void dispose()
  {
    if (this.disposed)
      throw new GdxRuntimeException("Pixmap already disposed!");
    this.pixmap.dispose();
    this.disposed = true;
  }

  public void drawCircle(int paramInt1, int paramInt2, int paramInt3)
  {
    this.pixmap.drawCircle(paramInt1, paramInt2, paramInt3, this.color);
  }

  public void drawLine(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.pixmap.drawLine(paramInt1, paramInt2, paramInt3, paramInt4, this.color);
  }

  public void drawPixel(int paramInt1, int paramInt2)
  {
    this.pixmap.setPixel(paramInt1, paramInt2, this.color);
  }

  public void drawPixel(int paramInt1, int paramInt2, int paramInt3)
  {
    this.pixmap.setPixel(paramInt1, paramInt2, paramInt3);
  }

  public void drawPixmap(Pixmap paramPixmap, int paramInt1, int paramInt2)
  {
    drawPixmap(paramPixmap, paramInt1, paramInt2, 0, 0, paramPixmap.getWidth(), paramPixmap.getHeight());
  }

  public void drawPixmap(Pixmap paramPixmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.pixmap.drawPixmap(paramPixmap.pixmap, paramInt3, paramInt4, paramInt1, paramInt2, paramInt5, paramInt6);
  }

  public void drawPixmap(Pixmap paramPixmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    this.pixmap.drawPixmap(paramPixmap.pixmap, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  public void drawRectangle(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.pixmap.drawRect(paramInt1, paramInt2, paramInt3, paramInt4, this.color);
  }

  public void fill()
  {
    this.pixmap.clear(this.color);
  }

  public void fillCircle(int paramInt1, int paramInt2, int paramInt3)
  {
    this.pixmap.fillCircle(paramInt1, paramInt2, paramInt3, this.color);
  }

  public void fillRectangle(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.pixmap.fillRect(paramInt1, paramInt2, paramInt3, paramInt4, this.color);
  }

  public Pixmap.Format getFormat()
  {
    return Pixmap.Format.fromGdx2DPixmapFormat(this.pixmap.getFormat());
  }

  public int getGLFormat()
  {
    return this.pixmap.getGLFormat();
  }

  public int getGLInternalFormat()
  {
    return this.pixmap.getGLInternalFormat();
  }

  public int getGLType()
  {
    return this.pixmap.getGLType();
  }

  public int getHeight()
  {
    return this.pixmap.getHeight();
  }

  public int getPixel(int paramInt1, int paramInt2)
  {
    return this.pixmap.getPixel(paramInt1, paramInt2);
  }

  public ByteBuffer getPixels()
  {
    if (this.disposed)
      throw new GdxRuntimeException("Pixmap already disposed");
    return this.pixmap.getPixels();
  }

  public int getWidth()
  {
    return this.pixmap.getWidth();
  }

  public void setColor(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.color = Color.rgba8888(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }

  public void setColor(int paramInt)
  {
    this.color = paramInt;
  }

  public void setColor(Color paramColor)
  {
    this.color = Color.rgba8888(paramColor.r, paramColor.g, paramColor.b, paramColor.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Pixmap
 * JD-Core Version:    0.6.2
 */