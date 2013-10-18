package com.badlogic.gdx.graphics.g2d.tiled;

public class TileSet
{
  public int firstgid;
  public String imageName;
  public int margin = 0;
  public String name;
  public int spacing = 0;
  public int tileHeight;
  public int tileWidth;

  protected TileSet()
  {
  }

  protected TileSet(TileSet paramTileSet)
  {
    this.firstgid = paramTileSet.firstgid;
    this.tileWidth = paramTileSet.tileWidth;
    this.tileHeight = paramTileSet.tileHeight;
    this.margin = paramTileSet.margin;
    this.spacing = paramTileSet.spacing;
    this.imageName = paramTileSet.imageName;
    this.name = paramTileSet.name;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.TileSet
 * JD-Core Version:    0.6.2
 */