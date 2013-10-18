package com.badlogic.gdx.graphics;

import com.badlogic.gdx.utils.GdxRuntimeException;

public enum Pixmap$Format
{
  static
  {
    RGB888 = new Format("RGB888", 5);
    RGBA8888 = new Format("RGBA8888", 6);
    Format[] arrayOfFormat = new Format[7];
    arrayOfFormat[0] = Alpha;
    arrayOfFormat[1] = Intensity;
    arrayOfFormat[2] = LuminanceAlpha;
    arrayOfFormat[3] = RGB565;
    arrayOfFormat[4] = RGBA4444;
    arrayOfFormat[5] = RGB888;
    arrayOfFormat[6] = RGBA8888;
  }

  public static Format fromGdx2DPixmapFormat(int paramInt)
  {
    if (paramInt == 1)
      return Alpha;
    if (paramInt == 2)
      return LuminanceAlpha;
    if (paramInt == 5)
      return RGB565;
    if (paramInt == 6)
      return RGBA4444;
    if (paramInt == 3)
      return RGB888;
    if (paramInt == 4)
      return RGBA8888;
    throw new GdxRuntimeException("Unknown Gdx2DPixmap Format: " + paramInt);
  }

  public static int toGdx2DPixmapFormat(Format paramFormat)
  {
    if (paramFormat == Alpha);
    while (paramFormat == Intensity)
      return 1;
    if (paramFormat == LuminanceAlpha)
      return 2;
    if (paramFormat == RGB565)
      return 5;
    if (paramFormat == RGBA4444)
      return 6;
    if (paramFormat == RGB888)
      return 3;
    if (paramFormat == RGBA8888)
      return 4;
    throw new GdxRuntimeException("Unknown Format: " + paramFormat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Pixmap.Format
 * JD-Core Version:    0.6.2
 */