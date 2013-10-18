package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Files.FileType;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectMap.Values;
import java.util.Iterator;

public class TextureDict
{
  private static ObjectMap<String, TextureRef> sDictionary = new ObjectMap();

  public static TextureRef loadTexture(String paramString)
  {
    return loadTexture(paramString, Texture.TextureFilter.MipMap, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge);
  }

  public static TextureRef loadTexture(String paramString, Texture.TextureFilter paramTextureFilter1, Texture.TextureFilter paramTextureFilter2, Texture.TextureWrap paramTextureWrap1, Texture.TextureWrap paramTextureWrap2)
  {
    if (sDictionary.containsKey(paramString))
    {
      TextureRef localTextureRef2 = (TextureRef)sDictionary.get(paramString);
      localTextureRef2.addRef();
      return localTextureRef2;
    }
    FileHandle localFileHandle = Gdx.app.getFiles().getFileHandle(paramString, Files.FileType.Internal);
    if ((paramTextureFilter1.isMipMap()) || (paramTextureFilter2.isMipMap()));
    for (boolean bool = true; ; bool = false)
    {
      Texture localTexture = new Texture(localFileHandle, bool);
      localTexture.setFilter(paramTextureFilter1, paramTextureFilter2);
      localTexture.setWrap(paramTextureWrap1, paramTextureWrap2);
      TextureRef localTextureRef1 = new TextureRef(paramString, localTexture);
      sDictionary.put(paramString, localTextureRef1);
      return localTextureRef1;
    }
  }

  public static void removeTexture(String paramString)
  {
    sDictionary.remove(paramString);
  }

  public static void unloadAll()
  {
    Iterator localIterator = sDictionary.values().iterator();
    while (localIterator.hasNext())
      ((TextureRef)localIterator.next()).dispose();
    sDictionary.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.TextureDict
 * JD-Core Version:    0.6.2
 */