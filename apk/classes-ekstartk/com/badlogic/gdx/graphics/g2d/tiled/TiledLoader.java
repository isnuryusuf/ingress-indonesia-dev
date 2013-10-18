package com.badlogic.gdx.graphics.g2d.tiled;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.XmlReader;
import java.io.IOException;

public class TiledLoader
{
  public static TiledMap createMap(FileHandle paramFileHandle)
  {
    return createMap(paramFileHandle, null);
  }

  private static TiledMap createMap(FileHandle paramFileHandle, String paramString)
  {
    TiledMap localTiledMap = new TiledMap();
    localTiledMap.tmxFile = paramFileHandle;
    try
    {
      TiledLoader.1 local1 = new TiledLoader.1(localTiledMap);
      if (paramFileHandle != null)
      {
        local1.parse(paramFileHandle);
        return localTiledMap;
      }
      local1.parse(paramString);
      return localTiledMap;
    }
    catch (IOException localIOException)
    {
      throw new GdxRuntimeException("Error Parsing TMX file", localIOException);
    }
  }

  public static TiledMap createMap(String paramString)
  {
    return createMap(null, paramString);
  }

  static int unsignedByteToInt(byte paramByte)
  {
    return paramByte & 0xFF;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.TiledLoader
 * JD-Core Version:    0.6.2
 */