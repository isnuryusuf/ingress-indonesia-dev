package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class Gdx2DPixmap
  implements Disposable
{
  public static final int GDX2D_BLEND_NONE = 0;
  public static final int GDX2D_BLEND_SRC_OVER = 1;
  public static final int GDX2D_FORMAT_ALPHA = 1;
  public static final int GDX2D_FORMAT_LUMINANCE_ALPHA = 2;
  public static final int GDX2D_FORMAT_RGB565 = 5;
  public static final int GDX2D_FORMAT_RGB888 = 3;
  public static final int GDX2D_FORMAT_RGBA4444 = 6;
  public static final int GDX2D_FORMAT_RGBA8888 = 4;
  public static final int GDX2D_SCALE_LINEAR = 1;
  public static final int GDX2D_SCALE_NEAREST;
  final long basePtr;
  final int format;
  final int height;
  final long[] nativeData = new long[4];
  final ByteBuffer pixelPtr;
  final int width;

  static
  {
    setBlend(1);
    setScale(1);
  }

  public Gdx2DPixmap(int paramInt1, int paramInt2, int paramInt3)
  {
    this.pixelPtr = newPixmap(this.nativeData, paramInt1, paramInt2, paramInt3);
    if (this.pixelPtr == null)
      throw new IllegalArgumentException("couldn't load pixmap");
    this.basePtr = this.nativeData[0];
    this.width = ((int)this.nativeData[1]);
    this.height = ((int)this.nativeData[2]);
    this.format = ((int)this.nativeData[3]);
  }

  public Gdx2DPixmap(InputStream paramInputStream, int paramInt)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(1024);
    byte[] arrayOfByte1 = new byte[1024];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte1);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte1, 0, i);
    }
    byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
    this.pixelPtr = load(this.nativeData, arrayOfByte2, 0, arrayOfByte2.length, paramInt);
    if (this.pixelPtr == null)
      throw new IOException("couldn't load pixmap");
    this.basePtr = this.nativeData[0];
    this.width = ((int)this.nativeData[1]);
    this.height = ((int)this.nativeData[2]);
    this.format = ((int)this.nativeData[3]);
  }

  public Gdx2DPixmap(ByteBuffer paramByteBuffer, long[] paramArrayOfLong)
  {
    this.pixelPtr = paramByteBuffer;
    this.basePtr = paramArrayOfLong[0];
    this.width = ((int)paramArrayOfLong[1]);
    this.height = ((int)paramArrayOfLong[2]);
    this.format = ((int)paramArrayOfLong[3]);
  }

  public Gdx2DPixmap(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    this.pixelPtr = load(this.nativeData, paramArrayOfByte, paramInt1, paramInt2, paramInt3);
    if (this.pixelPtr == null)
      throw new IOException("couldn't load pixmap");
    this.basePtr = this.nativeData[0];
    this.width = ((int)this.nativeData[1]);
    this.height = ((int)this.nativeData[2]);
    this.format = ((int)this.nativeData[3]);
  }

  private static native void clear(long paramLong, int paramInt);

  private static native void drawCircle(long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  private static native void drawLine(long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);

  private static native void drawPixmap(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8);

  private static native void drawRect(long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);

  private static native void fillCircle(long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  private static native void fillRect(long paramLong, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);

  private static native void free(long paramLong);

  private static native int getPixel(long paramLong, int paramInt1, int paramInt2);

  private static native ByteBuffer load(long[] paramArrayOfLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3);

  public static Gdx2DPixmap newPixmap(int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Gdx2DPixmap localGdx2DPixmap = new Gdx2DPixmap(paramInt1, paramInt2, paramInt3);
      return localGdx2DPixmap;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    return null;
  }

  public static Gdx2DPixmap newPixmap(InputStream paramInputStream, int paramInt)
  {
    try
    {
      Gdx2DPixmap localGdx2DPixmap = new Gdx2DPixmap(paramInputStream, paramInt);
      return localGdx2DPixmap;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  private static native ByteBuffer newPixmap(long[] paramArrayOfLong, int paramInt1, int paramInt2, int paramInt3);

  public static native void setBlend(int paramInt);

  private static native void setPixel(long paramLong, int paramInt1, int paramInt2, int paramInt3);

  public static native void setScale(int paramInt);

  public void clear(int paramInt)
  {
    clear(this.basePtr, paramInt);
  }

  public void dispose()
  {
    free(this.basePtr);
  }

  public void drawCircle(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    drawCircle(this.basePtr, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void drawLine(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    drawLine(this.basePtr, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }

  public void drawPixmap(Gdx2DPixmap paramGdx2DPixmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    drawPixmap(paramGdx2DPixmap.basePtr, this.basePtr, paramInt1, paramInt2, paramInt5, paramInt6, paramInt3, paramInt4, paramInt5, paramInt6);
  }

  public void drawPixmap(Gdx2DPixmap paramGdx2DPixmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    drawPixmap(paramGdx2DPixmap.basePtr, this.basePtr, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }

  public void drawRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    drawRect(this.basePtr, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }

  public void fillCircle(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    fillCircle(this.basePtr, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void fillRect(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    fillRect(this.basePtr, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }

  public int getFormat()
  {
    return this.format;
  }

  public String getFormatString()
  {
    switch (this.format)
    {
    default:
      return "unknown";
    case 1:
      return "alpha";
    case 2:
      return "luminance alpha";
    case 3:
      return "rgb888";
    case 4:
      return "rgba8888";
    case 5:
      return "rgb565";
    case 6:
    }
    return "rgba4444";
  }

  public int getGLFormat()
  {
    return getGLInternalFormat();
  }

  public int getGLInternalFormat()
  {
    switch (this.format)
    {
    default:
      throw new GdxRuntimeException("unknown format: " + this.format);
    case 1:
      return 6406;
    case 2:
      return 6410;
    case 3:
    case 5:
      return 6407;
    case 4:
    case 6:
    }
    return 6408;
  }

  public int getGLType()
  {
    switch (this.format)
    {
    default:
      throw new GdxRuntimeException("unknown format: " + this.format);
    case 1:
    case 2:
    case 3:
    case 4:
      return 5121;
    case 5:
      return 33635;
    case 6:
    }
    return 32819;
  }

  public int getHeight()
  {
    return this.height;
  }

  public int getPixel(int paramInt1, int paramInt2)
  {
    return getPixel(this.basePtr, paramInt1, paramInt2);
  }

  public ByteBuffer getPixels()
  {
    return this.pixelPtr;
  }

  public int getWidth()
  {
    return this.width;
  }

  public void setPixel(int paramInt1, int paramInt2, int paramInt3)
  {
    setPixel(this.basePtr, paramInt1, paramInt2, paramInt3);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.Gdx2DPixmap
 * JD-Core Version:    0.6.2
 */