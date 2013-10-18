package com.badlogic.gdx.graphics.g2d.tiled;

import com.badlogic.gdx.files.FileHandle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class TiledMap
{
  public int height;
  public ArrayList<TiledLayer> layers = new ArrayList(4);
  public ArrayList<TiledObjectGroup> objectGroups = new ArrayList(1);
  public String orientation;
  public HashMap<String, String> properties = new HashMap(2);
  public int tileHeight;
  private ArrayList<TiledMap.TileProperty> tileProperties = new ArrayList(0);
  public ArrayList<TileSet> tileSets = new ArrayList(5);
  public int tileWidth;
  public FileHandle tmxFile;
  public int width;

  public String getTileProperty(int paramInt, String paramString)
  {
    Iterator localIterator = this.tileProperties.iterator();
    while (localIterator.hasNext())
    {
      TiledMap.TileProperty localTileProperty = (TiledMap.TileProperty)localIterator.next();
      if (localTileProperty.id == paramInt)
        return (String)localTileProperty.propertyMap.get(paramString);
    }
    return null;
  }

  public void setTileProperty(int paramInt, String paramString1, String paramString2)
  {
    Iterator localIterator = this.tileProperties.iterator();
    while (localIterator.hasNext())
    {
      TiledMap.TileProperty localTileProperty2 = (TiledMap.TileProperty)localIterator.next();
      if (localTileProperty2.id == paramInt)
      {
        localTileProperty2.propertyMap.put(paramString1, paramString2);
        return;
      }
    }
    TiledMap.TileProperty localTileProperty1 = new TiledMap.TileProperty(this);
    localTileProperty1.id = paramInt;
    localTileProperty1.propertyMap.put(paramString1, paramString2);
    this.tileProperties.add(localTileProperty1);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.TiledMap
 * JD-Core Version:    0.6.2
 */