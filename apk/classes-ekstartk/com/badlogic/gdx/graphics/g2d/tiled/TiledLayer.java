package com.badlogic.gdx.graphics.g2d.tiled;

import java.util.HashMap;

public class TiledLayer
{
  public String name;
  public HashMap<String, String> properties = new HashMap(0);
  public int[][] tiles;

  public int getHeight()
  {
    return this.tiles.length;
  }

  public int getWidth()
  {
    if (this.tiles[0] == null)
      return 0;
    return this.tiles[0].length;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.TiledLayer
 * JD-Core Version:    0.6.2
 */