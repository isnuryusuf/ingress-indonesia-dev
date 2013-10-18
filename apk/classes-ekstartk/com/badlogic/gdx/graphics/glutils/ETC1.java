package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.ByteBuffer;

public class ETC1
{
  public static int ETC1_RGB8_OES = 36196;
  public static int PKM_HEADER_SIZE = 16;

  public static Pixmap decodeImage(ETC1.ETC1Data paramETC1Data, Pixmap.Format paramFormat)
  {
    int k;
    int i;
    int j;
    if (paramETC1Data.hasPKMHeader())
    {
      k = 16;
      i = getWidthPKM(paramETC1Data.compressedData, 0);
      j = getHeightPKM(paramETC1Data.compressedData, 0);
    }
    while (true)
    {
      int m = getPixelSize(paramFormat);
      Pixmap localPixmap = new Pixmap(i, j, paramFormat);
      decodeImage(paramETC1Data.compressedData, k, localPixmap.getPixels(), 0, i, j, m);
      return localPixmap;
      i = paramETC1Data.width;
      j = paramETC1Data.height;
      k = 0;
    }
  }

  private static native void decodeImage(ByteBuffer paramByteBuffer1, int paramInt1, ByteBuffer paramByteBuffer2, int paramInt2, int paramInt3, int paramInt4, int paramInt5);

  public static ETC1.ETC1Data encodeImage(Pixmap paramPixmap)
  {
    int i = getPixelSize(paramPixmap.getFormat());
    ByteBuffer localByteBuffer = encodeImage(paramPixmap.getPixels(), 0, paramPixmap.getWidth(), paramPixmap.getHeight(), i);
    return new ETC1.ETC1Data(paramPixmap.getWidth(), paramPixmap.getHeight(), localByteBuffer, 0);
  }

  private static native ByteBuffer encodeImage(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public static ETC1.ETC1Data encodeImagePKM(Pixmap paramPixmap)
  {
    int i = getPixelSize(paramPixmap.getFormat());
    ByteBuffer localByteBuffer = encodeImagePKM(paramPixmap.getPixels(), 0, paramPixmap.getWidth(), paramPixmap.getHeight(), i);
    return new ETC1.ETC1Data(paramPixmap.getWidth(), paramPixmap.getHeight(), localByteBuffer, 16);
  }

  private static native ByteBuffer encodeImagePKM(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public static native void formatHeader(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3);

  public static native int getCompressedDataSize(int paramInt1, int paramInt2);

  static native int getHeightPKM(ByteBuffer paramByteBuffer, int paramInt);

  private static int getPixelSize(Pixmap.Format paramFormat)
  {
    if (paramFormat == Pixmap.Format.RGB565)
      return 2;
    if (paramFormat == Pixmap.Format.RGB888)
      return 3;
    throw new GdxRuntimeException("Can only handle RGB565 or RGB888 images");
  }

  static native int getWidthPKM(ByteBuffer paramByteBuffer, int paramInt);

  static native boolean isValidPKM(ByteBuffer paramByteBuffer, int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.glutils.ETC1
 * JD-Core Version:    0.6.2
 */