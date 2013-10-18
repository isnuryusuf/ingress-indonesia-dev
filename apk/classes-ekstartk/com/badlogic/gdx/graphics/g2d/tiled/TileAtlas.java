package com.badlogic.gdx.graphics.g2d.tiled;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.AtlasRegion;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.IntMap.Values;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.StringTokenizer;

public class TileAtlas
  implements Disposable
{
  protected IntMap<TextureRegion> regionsMap = new IntMap();
  protected final HashSet<Texture> textures = new HashSet(1);

  protected TileAtlas()
  {
  }

  public TileAtlas(TiledMap paramTiledMap, FileHandle paramFileHandle)
  {
    Iterator localIterator1 = paramTiledMap.tileSets.iterator();
    while (localIterator1.hasNext())
    {
      TileSet localTileSet = (TileSet)localIterator1.next();
      FileHandle localFileHandle = getRelativeFileHandle(paramFileHandle, removeExtension(localTileSet.imageName) + " packfile");
      Iterator localIterator2 = new TextureAtlas(localFileHandle, localFileHandle.parent(), false).findRegions(removeExtension(removePath(localTileSet.imageName))).iterator();
      while (localIterator2.hasNext())
      {
        TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)localIterator2.next();
        this.regionsMap.put(localAtlasRegion.index + localTileSet.firstgid, localAtlasRegion);
        if (!this.textures.contains(localAtlasRegion.getTexture()))
          this.textures.add(localAtlasRegion.getTexture());
      }
    }
  }

  private static FileHandle getRelativeFileHandle(FileHandle paramFileHandle, String paramString)
  {
    if (paramString.trim().length() == 0);
    while (true)
    {
      return paramFileHandle;
      StringTokenizer localStringTokenizer = new StringTokenizer(paramString, "\\/");
      while (localStringTokenizer.hasMoreTokens())
      {
        String str = localStringTokenizer.nextToken();
        if (str.equals(".."))
          paramFileHandle = paramFileHandle.parent();
        else
          paramFileHandle = paramFileHandle.child(str);
      }
    }
  }

  private static String removeExtension(String paramString)
  {
    int i = paramString.lastIndexOf(".");
    if (i == -1)
      return paramString;
    return paramString.substring(0, i);
  }

  private static String removePath(String paramString)
  {
    int i = paramString.lastIndexOf('\\');
    if (i != -1);
    for (String str = paramString.substring(i + 1); ; str = paramString)
    {
      int j = str.lastIndexOf('/');
      if (j != -1)
        paramString = paramString.substring(j + 1);
      return paramString;
    }
  }

  public void dispose()
  {
    Iterator localIterator = this.textures.iterator();
    while (localIterator.hasNext())
      ((Texture)localIterator.next()).dispose();
    this.textures.clear();
  }

  public void flipRegions(boolean paramBoolean1, boolean paramBoolean2)
  {
    Iterator localIterator = this.regionsMap.values().iterator();
    while (localIterator.hasNext())
      ((TextureRegion)localIterator.next()).flip(paramBoolean1, paramBoolean2);
  }

  public TextureRegion getRegion(int paramInt)
  {
    return (TextureRegion)this.regionsMap.get(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.TileAtlas
 * JD-Core Version:    0.6.2
 */