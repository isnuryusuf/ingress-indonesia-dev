package com.badlogic.gdx.graphics;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.IOException;

public class PixmapIO
{
  public static Pixmap readCIM(FileHandle paramFileHandle)
  {
    return PixmapIO.CIM.read(paramFileHandle);
  }

  public static void writeCIM(FileHandle paramFileHandle, Pixmap paramPixmap)
  {
    PixmapIO.CIM.write(paramFileHandle, paramPixmap);
  }

  public static void writePNG(FileHandle paramFileHandle, Pixmap paramPixmap)
  {
    try
    {
      paramFileHandle.writeBytes(PixmapIO.PNG.write(paramPixmap), false);
      return;
    }
    catch (IOException localIOException)
    {
      throw new GdxRuntimeException("Error writing PNG: " + paramFileHandle, localIOException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.PixmapIO
 * JD-Core Version:    0.6.2
 */