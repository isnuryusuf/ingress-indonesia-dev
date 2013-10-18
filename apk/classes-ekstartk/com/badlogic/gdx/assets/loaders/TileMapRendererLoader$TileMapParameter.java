package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.graphics.g2d.tiled.TileMapRenderer;

public class TileMapRendererLoader$TileMapParameter extends AssetLoaderParameters<TileMapRenderer>
{
  public final String imageDirectory;
  public final int tilesPerBlockX;
  public final int tilesPerBlockY;
  public final float unitsPerTileX;
  public final float unitsPerTileY;

  public TileMapRendererLoader$TileMapParameter(String paramString, int paramInt1, int paramInt2)
  {
    this.imageDirectory = paramString;
    this.tilesPerBlockX = paramInt1;
    this.tilesPerBlockY = paramInt2;
    this.unitsPerTileX = 0.0F;
    this.unitsPerTileY = 0.0F;
  }

  public TileMapRendererLoader$TileMapParameter(String paramString, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
  {
    this.imageDirectory = paramString;
    this.tilesPerBlockX = paramInt1;
    this.tilesPerBlockY = paramInt2;
    this.unitsPerTileX = paramFloat1;
    this.unitsPerTileY = paramFloat2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.TileMapRendererLoader.TileMapParameter
 * JD-Core Version:    0.6.2
 */